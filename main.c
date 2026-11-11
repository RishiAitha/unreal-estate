#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "state.h"
#include "startBG.h"

// Input
unsigned short buttons;
unsigned short oldButtons;

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

// Sprites
OBJ_ATTR shadowOAM[128];

void initialize(void);

int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        if (!current_state.initialized && current_state.initState) {
            current_state.initState();
            current_state.initialized = 1;
        }
        current_state.doState();
    }
}

void initialize(void) {
    mgba_open();

    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(0) | BG_SIZE_LARGE;
}