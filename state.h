#ifndef STATE_H
#define STATE_H

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

#endif