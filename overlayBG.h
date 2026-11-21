
//{{BLOCK(overlayBG)

//======================================================================
//
//	overlayBG, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 64 + 2048 = 2624
//
//	Time-stamp: 2026-11-20, 23:30:06
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_OVERLAYBG_H
#define GRIT_OVERLAYBG_H

#define overlayBGTilesLen 64
extern const unsigned short overlayBGTiles[32];

#define overlayBGMapLen 2048
extern const unsigned short overlayBGMap[1024];

#define overlayBGPalLen 512
extern const unsigned short overlayBGPal[256];

#endif // GRIT_OVERLAYBG_H

//}}BLOCK(overlayBG)
