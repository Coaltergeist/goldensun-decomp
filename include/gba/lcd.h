#ifndef _GBA_LCD_H_
#define _GBA_LCD_H_

#include "gba/types.h"

/* DISPCNT - LCD Control
  0-2   BG Mode                (0-5=Video Mode 0-5, 6-7=Prohibited)
  3     Reserved / CGB Mode    (0=GBA, 1=CGB; can be set only by BIOS opcodes)

  4     Display Frame Select   (0-1=Frame 0-1) (for BG Modes 4,5 only)
  5     H-Blank Interval Free  (1=Allow access to OAM during H-Blank)
  6     OBJ Character VRAM Mapping (0=Two dimensional, 1=One dimensional)
  7     Forced Blank           (1=Allow FAST access to VRAM,Palette,OAM)

  8     Screen Display BG0  (0=Off, 1=On)
  9     Screen Display BG1  (0=Off, 1=On)
  10    Screen Display BG2  (0=Off, 1=On)
  11    Screen Display BG3  (0=Off, 1=On)

  12    Screen Display OBJ  (0=Off, 1=On)
  13    Window 0 Display Flag   (0=Off, 1=On)
  14    Window 1 Display Flag   (0=Off, 1=On)
  15    OBJ Window Display Flag (0=Off, 1=On)
*/
#define MAKE_DISPCNT(x) (x)


typedef struct {
	u8 shared[0x10000]; // 64 KBytes shared for BG Map and Tiles
	u8 tiles[0x8000]; // 32 KBytes OBJ Tiles
} LCDTileMapRAM;
typedef struct {
	u8 frame0buffer[0x14000]; // 80 KBytes Frame 0 buffer (only 75K actually used)
	u8 tiles[0x4000]; // 16 KBytes OBJ Tiles
} LCDStillBitmapRAM;
typedef struct {
	u8 frame0buffer[0xA000]; // 40 KBytes Framebuffer (only 37.5K used in Mode 4)
	u8 frame1buffer[0xA000]; // 40 KBytes Framebuffer (only 37.5K used in Mode 4)
	u8 tiles[0x4000]; // 16 KBytes OBJ Tiles
} LCDBitmapRAM;
typedef union {
	u8 vram[0x18000]; // 96 KBytes VRAM
	LCDTileMapRAM tileMap;
	LCDStillBitmapRAM stillBitmap;
	LCDBitmapRAM bitmap;
} LCDVRAM;
#define LCD_VRAM_ADDR 0x06000000
#define LCD_VRAM *(LCDVRAM*)LCD_VRAM_ADDR


typedef struct {
	u16 nTileNumber : 10; // (0-1023) (a bit less in 256 color mode, because there'd be otherwise no room for the bg map)
	u16 fHorizontalFlip : 1; // (0=Normal, 1=Mirrored)
	u16 fVerticalFlip : 1; // (0=Normal, 1=Mirrored) 
	u16 nPaletteNumber : 4; // (0-15)    (Not used in 256 color/1 palette mode)
} TextBGScreen;

typedef enum {
	LCD_OBJ_MODE_Normal = 0,
	LCD_OBJ_MODE_SemiTransparent = 1,
	LCD_OBJ_MODE_OBJWindow = 2,
	LCD_OBJ_MODE_Prohibited = 3
} LCDObjMode;

/* Size  Square   Horizontal  Vertical
   0     8x8      16x8        8x16
   1     16x16    32x8        8x32
   2     32x32    32x16       16x32
   3     64x64    64x32       32x64
*/
typedef enum {
	LCD_OBJ_SHAPE_Square = 0,
	LCD_OBJ_SHAPE_Horizontal = 1,
	LCD_OBJ_SHAPE_Vertical = 2,
	LCD_OBJ_SHAPE_Prohibited = 3
} LCDObjShape;

typedef enum {
	LCD_OBJ_SIZE_Square8x8 = 0,
	LCD_OBJ_SIZE_Square16x16 = 1,
	LCD_OBJ_SIZE_Square32x32 = 2,
	LCD_OBJ_SIZE_Square64x64 = 3,

	LCD_OBJ_SIZE_Horizontal16x8 = 0,
	LCD_OBJ_SIZE_Horizontal32x8 = 1,
	LCD_OBJ_SIZE_Horizontal32x16 = 2,
	LCD_OBJ_SIZE_Horizontal64x32 = 3,

	LCD_OBJ_SIZE_Vertical8x16 = 0,
	LCD_OBJ_SIZE_Vertical8x32 = 1,
	LCD_OBJ_SIZE_Vertical16x32 = 2,
	LCD_OBJ_SIZE_Vertical32x64 = 3,
} LCDObjSize;

/* Caution:
* A very large OBJ (of 128 pixels vertically, ie. a 64 pixels OBJ in a Double Size area)
* located at Y>128 will be treated as at Y>-128,
* the OBJ is then displayed parts offscreen at the TOP of the display,
* it is then NOT displayed at the bottom. */
typedef struct {
	union {
		u16 attr0;
		struct {
			u8 yCoord; // (0-255)
			u8 fRotationScaling : 1; // (1=Rotation/Scaling)
			u8 fDoubleSize : 1; // (0=Normal, 1=DoubleSize)
			LCDObjMode mode : 2;
			u8 mosaic : 1;
			u8 colors : 1; // (0=16 colors, 1=256 colors)
			LCDObjShape shape : 2; // (0=Square, 1=Horizontal, 2=Vertical, 3=Prohibited)
		};
		struct {
			u8 yCoord; // (0-255)
			u8 fRotationScaling : 1; // (0=Normal)
			u8 fHidden : 1; // (0=Normal, 1=Hidden)
			LCDObjMode mode : 2;
			u8 mosaic : 1;
			u8 colors : 1; // (0=16 colors, 1=256 colors)
			LCDObjShape shape : 2; // (0=Square, 1=Horizontal, 2=Vertical, 3=Prohibited)
		};
	};
	union {
		u16 attr1;
		struct {
			u16 xCoord : 9; // (0-511)
			u16 RotationScalingParameter : 5; // (0-31)
			u16 objSize : 2; // (0..3, depends on OBJ Shape)
		};
		struct {
			u16 xCoord : 9; // (0-511)
			u16 reserved : 3;
			u16 fHorizontalFlip : 1; // (0=Normal, 1=Mirrored)
			u16 fVerticalFlip : 1; // (0=Normal, 1=Mirrored)
			u16 objSize : 2; // (0..3, depends on OBJ Shape)
		};
	};
	union {
		u16 attr2;
		struct {
			u16 tileNumber : 10; // (0-1023=Tile Number)
			u16 priorityToBG : 2; // (0-3) (0=Highest)
			u16 paletteNumber : 4; // (0-15) (Not used in 256 color/1 palette mode)	
		};
	};
	u16 rsParam; // Four 16bit parameters (PA,PB,PC,PD) are required to define a complete group of Rotation/Scaling data.
} LCDObjAttribute;

typedef LCDObjAttribute OAM[128];

#define MAKE_OAM_ATTR0_WITH_ROTSCAL(y, doubleSize, mode, mosaic, colors, shape) \
	((y) | (1 << 8) | ((doubleSize) << 9) | ((mode) << 10) | ((mosaic) << 12) | ((colors) << 13) | ((shape) << 14))
#define MAKE_OAM_ATTR0_WITHOUT_ROTSCAL(y, hidden, mode, mosaic, colors, shape) \
	((y) | (0 << 8) | ((hidden) << 9) | ((mode) << 10) | ((mosaic) << 12) | ((colors) << 13) | ((shape) << 14))

#define MAKE_OAM_ATTR1_WITH_ROTSCAL(x, rotationScalingParameter, objSize) \
	((x) | ((rotationScalingParameter) << 9) | ((objSize) << 14))
#define MAKE_OAM_ATTR1_WITHOUT_ROTSCAL(x, fHorizontalFlip, fVerticalFlip, objSize) \
	((x) | ((fHorizontalFlip) << 12) | ((fVerticalFlip) << 13) | ((objSize) << 14))

#define MAKE_OAM_ATTR2(tileNumber, priorityToBG, paletteNumber) \
	((tileNumber) | ((priorityToBG) << 10) | ((paletteNumber) << 12))
#define MAKE_OAM_WORD0(attr0, attr1) \
	((attr0) | ((attr1) << 16))
#define MAKE_OAM_WORD1(attr2, rsParam) \
	((attr2) | ((rsParam) << 16))

#define LCD_OAM_ADDR 0x07000000
#define LCD_OAM *(OAM*)LCD_OAM_ADDR

#endif // _GBA_LCD_H_
