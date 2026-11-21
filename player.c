#include "player.h"
#include "mode0.h"
#include "sprites.h"
#include "gameCollisionMap.h"

#include "print.h"
#include <stdio.h>

void updatePlayer(void) {
    player.isAnimating = 0;
    player.direction = NONE;

    int leftX = player.x + PLAYER_LMARGIN;
    int rightX = player.x + player.width - PLAYER_RMARGIN - 1;
    int upY = player.y + PLAYER_UMARGIN;
    int downY = player.y + player.height - PLAYER_DMARGIN - 1;
    int centerX = player.x + (player.width / 2);
    int centerY = player.y + (player.height / 2);
    u8 *collisionMap = (u8*) gameCollisionMapBitmap;

    if (BUTTON_HELD(BUTTON_UP)) {
        player.direction = UP;
        player.isAnimating = 1;
        if (((player.y > 0)
            && (colorAt(leftX, upY - player.yVel, collisionMap, COLLISION_MAP_WIDTH))
            && (colorAt(rightX, upY - player.yVel, collisionMap, COLLISION_MAP_WIDTH))
            && (colorAt(centerX, upY - player.yVel, collisionMap, COLLISION_MAP_WIDTH)))) {
            player.y -= player.yVel;
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        player.direction = DOWN;
        player.isAnimating = 1;
        if (((player.y + player.height - vOff < SCREENHEIGHT)
            && (colorAt(leftX, downY + player.yVel, collisionMap, COLLISION_MAP_WIDTH)) 
            && (colorAt(rightX, downY + player.yVel, collisionMap, COLLISION_MAP_WIDTH))
            && (colorAt(centerX, downY + player.yVel, collisionMap, COLLISION_MAP_WIDTH)))) {
            player.y += player.yVel;
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.direction = LEFT;
        player.isAnimating = 1;
        if (((player.x > 0)
            && (colorAt(leftX - player.xVel, upY, collisionMap, COLLISION_MAP_WIDTH))
            && (colorAt(leftX - player.xVel, downY, collisionMap, COLLISION_MAP_WIDTH))
            && (colorAt(leftX - player.xVel, centerY, collisionMap, COLLISION_MAP_WIDTH)))) {
            player.x -= player.xVel;
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.direction = RIGHT;
        player.isAnimating = 1;
        if (((player.x + player.width - hOff < SCREENWIDTH)
            && (colorAt(rightX + player.xVel, upY, collisionMap, COLLISION_MAP_WIDTH))
            && (colorAt(rightX + player.xVel, downY, collisionMap, COLLISION_MAP_WIDTH))
            && (colorAt(rightX + player.xVel, centerY, collisionMap, COLLISION_MAP_WIDTH)))) {
            player.x += player.xVel;
        }
    }

    if ((player.x - hOff) < SCREENWIDTH / 4) {
        if (hOff > 0) {
            hOff -= player.xVel;
        }
    } else if ((player.x - hOff) > (SCREENWIDTH * 3 / 4)) {
        if (hOff < 512) {
            hOff += player.xVel;
        }
    }

    if ((player.y - vOff) < SCREENHEIGHT / 4) {
        if (vOff > 0) {
            vOff -= player.yVel;
        }
    } else if ((player.y - vOff) > (SCREENHEIGHT * 3 / 4)) {
        if (vOff < 512) {
            vOff += player.yVel;
        }
    }

    if (player.isAnimating) {
        player.timeUntilNextFrame--;
        if (player.timeUntilNextFrame == 0) {
            player.timeUntilNextFrame = 10;
            player.currentFrame = (player.currentFrame + 1) % player.numFrames;
        }
    } else {
        player.currentFrame = 0;
    }
}

void drawPlayer(void) {
    shadowOAM[PLAYER_OAMINDEX].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y - vOff);
    shadowOAM[PLAYER_OAMINDEX].attr1 = ATTR1_SMALL | ATTR1_X(player.x - hOff);
    shadowOAM[PLAYER_OAMINDEX].attr2 = ATTR2_TILEID(player.direction * 2, player.currentFrame * 2) | ATTR2_PRIORITY(100);
}