
//{{BLOCK(collisionBG)

//======================================================================
//
//	collisionBG, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 3 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 96 + 2048 = 2656
//
//	Time-stamp: 2026-11-11, 15:45:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_COLLISIONBG_H
#define GRIT_COLLISIONBG_H

#define collisionBGTilesLen 96
extern const unsigned short collisionBGTiles[48];

#define collisionBGMapLen 2048
extern const unsigned short collisionBGMap[1024];

#define collisionBGPalLen 512
extern const unsigned short collisionBGPal[256];

#endif // GRIT_COLLISIONBG_H

//}}BLOCK(collisionBG)
