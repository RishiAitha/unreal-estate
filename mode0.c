#include "mode0.h"

u8 colorAt(int x, int y, void *map, int map_width) {
    return ((u8*) map)[OFFSET(x, y, map_width)];
}