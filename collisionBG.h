
//{{BLOCK(collisionBG)

//======================================================================
//
//	collisionBG, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 3 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 96 + 8192 = 8800
//
//	Time-stamp: 2026-11-19, 17:25:23
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_COLLISIONBG_H
#define GRIT_COLLISIONBG_H

#define collisionBGTilesLen 96
extern const unsigned short collisionBGTiles[48];

#define collisionBGMapLen 8192
extern const unsigned short collisionBGMap[4096];

#define collisionBGPalLen 512
extern const unsigned short collisionBGPal[256];

#endif // GRIT_COLLISIONBG_H

//}}BLOCK(collisionBG)
