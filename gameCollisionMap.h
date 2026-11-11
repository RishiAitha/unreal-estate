
//{{BLOCK(gameCollisionMap)

//======================================================================
//
//	gameCollisionMap, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ bitmap not compressed
//	Total size: 512 + 32768 = 33280
//
//	Time-stamp: 2026-11-11, 13:20:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMECOLLISIONMAP_H
#define GRIT_GAMECOLLISIONMAP_H

#define gameCollisionMapWidth 256

#define gameCollisionMapBitmapLen 32768
extern const unsigned short gameCollisionMapBitmap[16384];

#define gameCollisionMapPalLen 512
extern const unsigned short gameCollisionMapPal[256];

#endif // GRIT_GAMECOLLISIONMAP_H

//}}BLOCK(gameCollisionMap)
