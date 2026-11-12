# 0 "state.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "state.c"
# 1 "state.h" 1



typedef void (*void_fn_t)(void);

enum states {START, INSTRUCTIONS, GAME, PAUSE, MENU, WIN};

typedef struct {
    int state;
    unsigned char initialized;
    void_fn_t initState;
    void_fn_t doState;
} State;

void initStart(void);
void doStart(void);
void initInstructions(void);
void doInstructions(void);
void initGame(void);
void doGame(void);
void initPause(void);
void doPause(void);
void initMenu(void);
void doMenu(void);
void initWin(void);
void doWin(void);
void driveStates(void);

extern State game_states[6];
extern State current_state;
# 2 "state.c" 2
# 1 "mode0.h" 1



# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short *videoBuffer;
# 44 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 63 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 97 "gba.h"
void DMANow(int channel, volatile void *src, volatile void *dest, unsigned int ctrl);
# 5 "mode0.h" 2
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 50 "mode0.h"
u8 colorAt(int, int, void*, int);
# 3 "state.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
void hideSprites();


typedef enum {NONE, LEFT, RIGHT, UP, DOWN} Direction;


typedef struct {
  int x;
  int y;
  int xVel;
  int yVel;
  int width;
  int height;
  int timeUntilNextFrame;
  Direction direction;
  int isAnimating;
  int currentFrame;
  int numFrames;
  u8 oamIndex;
} Sprite;

typedef struct {
  Sprite components[4];
  int choices[4];
} House;


extern Sprite player;
extern House houses[20];
# 4 "state.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/15.2.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/15.2.0/include/stdint.h" 3 4
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 190 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 12 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/15.2.0/include/stdint.h" 2 3 4
#pragma GCC diagnostic pop
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 5 "state.c" 2

# 1 "startBG.h" 1
# 22 "startBG.h"
extern const unsigned short startBGTiles[1520];


extern const unsigned short startBGMap[1024];


extern const unsigned short startBGPal[256];
# 7 "state.c" 2
# 1 "instructionsBG.h" 1
# 22 "instructionsBG.h"
extern const unsigned short instructionsBGTiles[2128];


extern const unsigned short instructionsBGMap[1024];


extern const unsigned short instructionsBGPal[256];
# 8 "state.c" 2
# 1 "gameBG.h" 1
# 22 "gameBG.h"
extern const unsigned short gameBGTiles[464];


extern const unsigned short gameBGMap[1024];


extern const unsigned short gameBGPal[256];
# 9 "state.c" 2
# 1 "winBG.h" 1
# 22 "winBG.h"
extern const unsigned short winBGTiles[272];


extern const unsigned short winBGMap[1024];


extern const unsigned short winBGPal[256];
# 10 "state.c" 2
# 1 "collisionBG.h" 1
# 22 "collisionBG.h"
extern const unsigned short collisionBGTiles[48];


extern const unsigned short collisionBGMap[1024];


extern const unsigned short collisionBGPal[256];
# 11 "state.c" 2
# 1 "gameCollisionMap.h" 1
# 23 "gameCollisionMap.h"
extern const unsigned short gameCollisionMapBitmap[32768];


extern const unsigned short gameCollisionMapPal[256];
# 12 "state.c" 2

# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 14 "state.c" 2

# 1 "player.h" 1
# 10 "player.h"
void updatePlayer(void);
void drawPlayer(void);
# 16 "state.c" 2
# 1 "houses.h" 1
# 10 "houses.h"
void initializeHouses(void);

void drawHouses(void);
# 17 "state.c" 2




State game_states[] = {
    {START, 0, initStart, doStart},
    {INSTRUCTIONS, 0, initInstructions, doInstructions},
    {GAME, 0, initGame, doGame},
    {PAUSE, 0, initPause, doPause},
    {MENU, 0, initMenu, doMenu},
    {WIN, 0, initWin, doWin},
};

State current_state = {START, 0, initStart, doStart};


int fromPause = 0;


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
    DMANow(3, startBGPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, startBGTiles, ((CB*) 0x6000000) + 2, 3040 / 2);
    DMANow(3, startBGMap, ((SB*) 0x6000000), 2048 / 2);

    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 512 / 2);
    DMANow(3, spritesheetTiles, ((CB*) 0x6000000) + 4, 32768 / 2);

    hideSprites();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
}

void doStart(void) {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        current_state.initialized = 0;
        fromPause = 0;
        current_state = game_states[2];
    }

    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        current_state.initialized = 0;
        current_state = game_states[1];
    }
}

void initInstructions(void) {
    DMANow(3, instructionsBGPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, instructionsBGTiles, ((CB*) 0x6000000) + 2, 4256 / 2);
    DMANow(3, instructionsBGMap, ((SB*) 0x6000000), 2048 / 2);
}

void doInstructions(void) {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        current_state.initialized = 0;
        fromPause = 0;
        current_state = game_states[2];
    }

    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        current_state.initialized = 0;
        current_state = game_states[0];
    }
}

void initGame(void) {
    if (!fromPause) {




        DMANow(3, collisionBGPal, ((unsigned short *)0x5000000), 512 / 2);
        DMANow(3, collisionBGTiles, ((CB*) 0x6000000) + 2, 96 / 2);
        DMANow(3, collisionBGMap, ((SB*) 0x6000000), 2048 / 2);

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
    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        current_state.initialized = 0;
        current_state = game_states[3];
    }

    updatePlayer();

    if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))) {
        if (colorAt(player.x + (player.width / 2), player.y, (u8*) gameCollisionMapBitmap, 256) == 2) {
            current_state.initialized = 0;
            current_state = game_states[5];
            return;
        }
    }

    drawPlayer();
    drawHouses();

    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
}

void initPause(void) {
    shadowOAM[0].attr0 = (0<<13) | (1<<14) | (((160 / 2) - 16) & 0xFF);
    shadowOAM[0].attr1 = (3<<14) | (((240 / 2) - 32) & 0x1FF);
    shadowOAM[0].attr2 = ((((0) * (32) + (24))) & 0x3FF);
}

void doPause(void) {
    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        current_state.initialized = 0;
        fromPause = 1;

        shadowOAM[0].attr0 = (2<<8);

        current_state = game_states[2];
    }

    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
}

void initMenu(void) {

}

void doMenu(void) {

}

void initWin(void) {
    hideSprites();
    DMANow(3, winBGPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, winBGTiles, ((CB*) 0x6000000) + 2, 544 / 2);
    DMANow(3, winBGMap, ((SB*) 0x6000000), 2048 / 2);

    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
}

void doWin(void) {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        current_state.initialized = 0;
        current_state = game_states[0];
    }
}
