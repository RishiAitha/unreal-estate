#ifndef HOUSES_H
#define HOUSES_H

#define HOUSES_STARTING_OAMINDEX 2
#define HOUSES_ROWS 4
#define HOUSES_COLUMNS 4
#define HOUSES_COUNT 16
#define HOUSES_COMPONENTS 4
#define HOUSES_POSSIBILITIES 256

extern int correctHouse;

void initializeHouses(void);

void drawHouses(void);

void chooseCorrectHouse(void);
void drawCorrectHouse(void);

#endif