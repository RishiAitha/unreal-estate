
//{{BLOCK(gameCollisionMap)

//======================================================================
//
//	gameCollisionMap, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ bitmap not compressed
//	Total size: 512 + 65536 = 66048
//
//	Time-stamp: 2026-11-11, 16:49:15
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMECOLLISIONMAP_H
#define GRIT_GAMECOLLISIONMAP_H

#define gameCollisionMapWidth 256

#define gameCollisionMapBitmapLen 65536
extern const unsigned short gameCollisionMapBitmap[32768];

#define gameCollisionMapPalLen 512
extern const unsigned short gameCollisionMapPal[256];

#endif // GRIT_GAMECOLLISIONMAP_H

//}}BLOCK(gameCollisionMap)
