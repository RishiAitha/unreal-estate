#include "state.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"

#include "startBG.h"
#include "instructionsBG.h"
#include "gameBG.h"
#include "winBG.h"
#include "collisionBG.h"
#include "gameCollisionMap.h"
#include "overlayBG.h"

#include "spritesheet.h"

#include "player.h"
#include "houses.h"

#define PAUSE_OAMINDEX 0

// State Management
State game_states[] = {
    {START, 0, initStart, doStart},
    {INSTRUCTIONS, 0, initInstructions, doInstructions},
    {GAME, 0, initGame, doGame},
    {PAUSE, 0, initPause, doPause},
    {MENU, 0, initMenu, doMenu},
    {WIN, 0, initWin, doWin},
};

State current_state = {START, 0, initStart, doStart};

// Pause Management
int fromPause = 0;

// Sprites
Sprite player;
House houses[20];

void driveStates(void) {
    if (!current_state.initialized && current_state.initState) {
        current_state.initState();
        current_state.initialized = 1;
    }
    current_state.doState();
}

void initStart(void) {
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(0) | BG_SIZE_SMALL;
    DMANow(3, startBGPal, BG_PALETTE, startBGPalLen / 2);
    DMANow(3, startBGTiles, CHARBLOCK + 2, startBGTilesLen / 2);
    DMANow(3, startBGMap, SCREENBLOCK, startBGMapLen / 2);
    
    DMANow(3, spritesheetPal, SPRITE_PAL, spritesheetPalLen / 2);
    DMANow(3, spritesheetTiles, CHARBLOCK + 4, spritesheetTilesLen / 2);
    
    hideSprites();

    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void doStart(void) {
    if (BUTTON_PRESSED(BUTTON_START)) {
        current_state.initialized = 0;
        fromPause = 0;
        current_state = game_states[2];
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        current_state.initialized = 0;
        current_state = game_states[1];
    }
}

void initInstructions(void) {
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(0) | BG_SIZE_SMALL;
    DMANow(3, instructionsBGPal, BG_PALETTE, instructionsBGPalLen / 2);
    DMANow(3, instructionsBGTiles, CHARBLOCK + 2, instructionsBGTilesLen / 2);
    DMANow(3, instructionsBGMap, SCREENBLOCK, instructionsBGMapLen / 2);
}

void doInstructions(void) {
    if (BUTTON_PRESSED(BUTTON_START)) {
        current_state.initialized = 0;
        fromPause = 0;
        current_state = game_states[2];
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        current_state.initialized = 0;
        current_state = game_states[0];
    }
}

void initGame(void) {
    if (!fromPause) {
        REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
        REG_BG1CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(0) | BG_SIZE_LARGE;
        REG_BG1HOFF = 0;
        REG_BG1VOFF = 0;

        // DMANow(3, gameBGPal, BG_PALETTE, gameBGPalLen / 2);
        // DMANow(3, gameBGTiles, CHARBLOCK + 2, gameBGTilesLen / 2);
        // DMANow(3, gameBGMap, SCREENBLOCK, gameBGMapLen / 2);

        DMANow(3, collisionBGPal, BG_PALETTE, collisionBGPalLen / 2);
        DMANow(3, collisionBGTiles, CHARBLOCK + 2, collisionBGTilesLen / 2);
        DMANow(3, collisionBGMap, SCREENBLOCK, collisionBGMapLen / 2);

        REG_BG0CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(4) | BG_SIZE_SMALL;

        DMANow(3, overlayBGTiles, CHARBLOCK + 3, overlayBGTilesLen / 2);
        DMANow(3, overlayBGMap, SCREENBLOCK + 4, overlayBGMapLen / 2);

        player.x = 0;
        player.y = 0;
        player.xVel = 1;
        player.yVel = 1;
        player.width = 16;
        player.height = 16;
        player.timeUntilNextFrame = 10;
        player.direction = NONE;
        player.isAnimating = 0;
        player.currentFrame = 0;
        player.numFrames = 3;
        player.oamIndex = 1;

        initializeHouses();
    }
}

void doGame(void) {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        current_state.initialized = 0;
        current_state = game_states[3];
    }

    updatePlayer();

    if (BUTTON_PRESSED(BUTTON_A)) {
        if ((colorAt(player.x + (player.width / 2), player.y + 1, (u8*) gameCollisionMapBitmap, COLLISION_MAP_WIDTH) == 2)
            || (colorAt(player.x + (player.width) - 1, player.y + 1, (u8*) gameCollisionMapBitmap, COLLISION_MAP_WIDTH) == 2)
            || (colorAt(player.x, player.y + 1, (u8*) gameCollisionMapBitmap, COLLISION_MAP_WIDTH) == 2)) {
            chooseCorrectHouse();
        }
    }

    REG_BG1CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(0) | BG_SIZE_LARGE;
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    drawPlayer();
    drawHouses();
    drawCorrectHouse();

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void initPause(void) {
    shadowOAM[PAUSE_OAMINDEX].attr0 = ATTR0_4BPP | ATTR0_WIDE | ATTR0_Y((SCREENHEIGHT / 2) - 16);
    shadowOAM[PAUSE_OAMINDEX].attr1 = ATTR1_LARGE | ATTR1_X((SCREENWIDTH / 2) - 32);
    shadowOAM[PAUSE_OAMINDEX].attr2 = ATTR2_TILEID(24, 0);
}

void doPause(void) {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        current_state.initialized = 0;
        fromPause = 1;

        shadowOAM[PAUSE_OAMINDEX].attr0 = ATTR0_HIDE;

        current_state = game_states[2];
    }

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void initMenu(void) {

}

void doMenu(void) {

}

void initWin(void) {
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(0) | BG_SIZE_SMALL;
    hideSprites();
    DMANow(3, winBGPal, BG_PALETTE, winBGPalLen / 2);
    DMANow(3, winBGTiles, CHARBLOCK + 2, winBGTilesLen / 2);
    DMANow(3, winBGMap, SCREENBLOCK, winBGMapLen / 2);

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void doWin(void) {
    if (BUTTON_PRESSED(BUTTON_START)) {
        current_state.initialized = 0;
        current_state = game_states[0];
    }
}