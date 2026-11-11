#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "state.h"
#include "startBG.h"

// Input
unsigned short buttons;
unsigned short oldButtons;

// Sprites
OBJ_ATTR shadowOAM[128];

void initialize(void);

int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        driveStates();
    }
}

void initialize(void) {
    mgba_open();

    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(0) | BG_SIZE_SMALL;
}