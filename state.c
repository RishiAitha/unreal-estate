#include "state.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"

#include "startBG.h"
#include "instructionsBG.h"
#include "gameBG.h"
#include "winBG.h"

#include "spritesheet.h"

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

void driveStates(void) {
    if (!current_state.initialized && current_state.initState) {
        current_state.initState();
        current_state.initialized = 1;
    }
    current_state.doState();
}

void initStart(void) {
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
        DMANow(3, gameBGPal, BG_PALETTE, gameBGPalLen / 2);
        DMANow(3, gameBGTiles, CHARBLOCK + 2, gameBGTilesLen / 2);
        DMANow(3, gameBGMap, SCREENBLOCK, gameBGMapLen / 2);

        
    }
}

void doGame(void) {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        current_state.initialized = 0;
        current_state = game_states[3];
    }
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

    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void initMenu(void) {

}

void doMenu(void) {

}

void initWin(void) {
    DMANow(3, winBGPal, BG_PALETTE, winBGPalLen / 2);
    DMANow(3, winBGTiles, CHARBLOCK + 2, winBGTilesLen / 2);
    DMANow(3, winBGMap, SCREENBLOCK, winBGMapLen / 2);
}

void doWin(void) {
    if (BUTTON_PRESSED(BUTTON_START)) {
        current_state.initialized = 0;
        current_state = game_states[0];
    }
}