#include <stdlib.h>
#include "houses.h"
#include "sprites.h"
#include "print.h"
#include <stdio.h>

void initializeHouses(void) {
    int oamIndex = HOUSES_STARTING_OAMINDEX;
    int startX = 12;
    int count = 0;
    for (int i = 0; i < HOUSES_COUNT; i++) {
        for (int j = 0; j < HOUSES_COMPONENTS; j++) {
            Sprite component = houses[i].components[j];
            component.x = startX + (40 * (i % 5));
            component.y = (40 * (i / 5));
            component.width = 32;
            component.height = 32;
            component.oamIndex = oamIndex + count;
            count++;

            houses[i].components[j] = component;

            // TODO: handle duplication!
            houses[i].choices[j] = rand() % 3;
        }
    }
}

void drawHouses(void) {
    for (int i = 0; i < HOUSES_COUNT; i++) {
        for (int j = 0; j < HOUSES_COMPONENTS; j++) {
            Sprite component = houses[i].components[j];
            shadowOAM[component.oamIndex].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(component.y);
            shadowOAM[component.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(component.x);
            shadowOAM[component.oamIndex].attr2 = ATTR2_TILEID(houses[i].choices[j] * 4, (j * 4) + 6) | ATTR2_PALROW(1) | ATTR2_PRIORITY(component.oamIndex - 1);
        }
    }
}