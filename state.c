#include "state.h"
#include "houseTilesTest.h"
#include "startBG.h"
#include "mode0.h"
#include "sprites.h"
#include "generatedHouses.h"
#include "print.h"
#include <stdio.h>

void initStart(void) {
    DMANow(3, startBGPal, BG_PALETTE, startBGPalLen / 2);
    DMANow(3, startBGTiles, CHARBLOCK + 2, startBGTilesLen / 2);
    DMANow(3, startBGMap, SCREENBLOCK, startBGMapLen / 2);

    DMANow(3, houseTilesTestPal, SPRITE_PAL, houseTilesTestPalLen / 2);

    // Writing my thoughts: 11/11/2026

    // Trying to combine two tiles
    // Basically want to pre-compute all the house arrangements in advance
    // This may have the issue of running out of RAM or something
    // And I need to manage the space on the spritesheet (can I have one per level?)
    // for (int i = 0; i < 16; i++) {
    //     // Get the chunk of four pixels (short)
    //     unsigned short old = houseTilesTestTiles[i];
    //     unsigned short new = houseTilesTestTiles[i + OFFSET(0, 8, 256)];
    //     unsigned short newShort = 0;
    //     // Go through each pixel
    //     for (int j = 0; j < 4; j++) {
    //         // Get pixel palette number
    //         int oldPixel = old % 0x10;
    //         old /= 0x10;
    //         int newPixel = new % 0x10;
    //         new /= 0x10;
    //         newShort |= (newPixel == 0 ? oldPixel : newPixel) << (j * 4);
    //     }
    //     generatedHousesTiles[i] = newShort;
    // }

    // Alternatively: just don't have scrolling camera (which makes more sense gameplay-wise, but is less artsy)
    // And have like 20 houses which would take 80-100 sprites at most!
    // Probably the better solution but less cool and funky
    // And not sure if I should have any scrolling background (for requirements and complexity)
    // It doesn't make as much sense though because then you spend time just running around looking for the house that's offscreen
    // Rather than identifying it from the set of buildings
    // Realistically this is the better option but i'm stubborn

    DMANow(3, generatedHousesTiles, CHARBLOCK + 4, generatedHousesTilesLen / 2);
    //DMANow(3, houseTilesTestTiles, CHARBLOCK + 4, houseTilesTestTilesLen / 2);
    
    hideSprites();

    shadowOAM[0].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[0].attr1 = ATTR1_TINY | ATTR1_X(0);
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 0);

    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void doStart(void) {
    
}

void initInstructions(void) {
    
}

void doInstructions(void) {

}

void initGame(void) {
    
}

void doGame(void) {

}

void initPause(void) {
    
}

void doPause(void) {

}

void initMenu(void) {

}

void doMenu(void) {

}

void initWin(void) {

}

void doWin(void) {

}