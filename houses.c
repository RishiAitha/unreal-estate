#include <stdlib.h>
#include "houses.h"
#include "sprites.h"
#include "print.h"
#include <stdio.h>

int correctHouse;

void initializeHouses(void) {
    int oamIndex = HOUSES_STARTING_OAMINDEX + (HOUSES_COUNT * HOUSES_COMPONENTS);
    int startX = 12;
    int count = 0;

    // Generate Unique House Configurations

    // guys i am so smart
    
    /* map all possible size 4 choice arrays to some index
    this is basically counting! our base is 4 and we are counting to 256
    (3 * 64) + (3 * 16) + (3 * 4) + (3) = 255
    so we pick 20 different random numbers from 0-255
    then turn those into choices arrays of base 4 digits */

    // I learned Floyd algorithm for this
    // range = 255, size = 20
    // not sure if the bitset is the smartest way to do this but its fun
    int bitset[HOUSES_POSSIBILITIES / 32];
    int houseChoices[HOUSES_COUNT];
    
    int houseIndex = 0;
    for (int i = HOUSES_POSSIBILITIES - HOUSES_COUNT; i < HOUSES_POSSIBILITIES; i++) {
        int num = rand() % 255;
        int setItem = num / 32;
        int itemIndex = num % 32;
        if ((bitset[setItem] & (1 << itemIndex) >> itemIndex)) {
            houseChoices[houseIndex] = i;
        } else {
            houseChoices[houseIndex] = num;
        }
        bitset[setItem] |= (1 << itemIndex);
        houseIndex++;
    }

    // Assign Sprite Values
    for (int i = 0; i < HOUSES_COUNT; i++) {
        int currentChoice = houseChoices[i];
        int divisor = HOUSES_POSSIBILITIES;
        for (int j = 0; j < HOUSES_COMPONENTS; j++) {
            Sprite component = houses[i].components[j];
            component.x = startX + (40 * (i % 5));
            component.y = (40 * (i / 5));
            component.width = 32;
            component.height = 32;
            component.oamIndex = oamIndex - count;
            count++;

            houses[i].components[j] = component;

            divisor /= 4;
            int componentChoice = currentChoice / divisor;
            currentChoice -= (componentChoice * divisor);

            houses[i].choices[j] = componentChoice;
        }
    }

    chooseCorrectHouse();
}

void drawHouses(void) {
    for (int i = 0; i < HOUSES_COUNT; i++) {
        for (int j = 0; j < HOUSES_COMPONENTS; j++) {
            Sprite component = houses[i].components[j];
            shadowOAM[component.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(component.y);
            shadowOAM[component.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(component.x);
            shadowOAM[component.oamIndex].attr2 = ATTR2_TILEID(houses[i].choices[j] * 4, (j * 4) + 6) | ATTR2_PALROW(0);
        }
    }
}

void chooseCorrectHouse(void) {
    correctHouse = rand() % 19;
}

void drawCorrectHouse(void) {
    int startingOAMIndex = 83;
    for (int i = 0; i < HOUSES_COMPONENTS; i++) {
        shadowOAM[startingOAMIndex + i].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(32 + (i * 32));
        shadowOAM[startingOAMIndex + i].attr1 = ATTR1_MEDIUM | ATTR1_X(208);
        shadowOAM[startingOAMIndex + i].attr2 = ATTR2_TILEID(houses[correctHouse].choices[i] * 4, (i * 4) + 6) | ATTR2_PALROW(0);
    }
}