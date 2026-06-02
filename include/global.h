// global.h
#ifndef GLOBAL_H
#define GLOBAL_H

#include <stddef.h>
#include <gba/types.h>

#include "ui.h"     // for NextCharFn
#include "render.h" // for Draw2DFn


// UI palette.
#define PALETTE_UI         ( PALETTE_BG  + 0xE0 )

// Portrait palette area. Has room for two palettes.
#define PALETTE_PORTRAIT   ( PALETTE_OBJ + 0xE0 )

// Text rendering areas.
#define VRAM_VWF_UI_AREA   ( VRAM + 0x1000  )
#define VRAM_VWF_MSG_AREA  ( VRAM + 0x10000 )

// Map tilesets (4bpp)
#define VRAM_MAP_TILESET1  ( VRAM + 0x4000 )
#define VRAM_MAP_TILESET2  ( VRAM + 0x8000 )
#define VRAM_MAP_TILESET3  ( VRAM + 0xC000 )

// Battle background (8bpp)
#define VRAM_BATTLE_BG     ( VRAM + 0x8000 )

// Sprites (8bpp)
#define VRAM_SPRITES       ( VRAM + 0x12000 )


/// If non-zero, debug mode is enabled.
extern u8 gDebugMode;


/// @return a pointer to the file with the given ID.
/// @see `gs1/files.h` and `gs2/files.h` for a list of file IDs.
extern void* GetFile(int file);


/// Multi-purpose global buffer.
/// On the field, this holds the tilemap for the current map.
/// In battle and other game modes, this is used as a general-purpose buffer.
extern u8 gBuffer[0x10000];

/// Global pointer table.
/// Memory pointed to here is allocated and freed with `galloc_*` and `gfree`.
extern struct GlobalPtrs gPtrs;

/// Global player state.
extern struct GlobalState gState;


/// Macro for obtaining global pointer table indices from their identifiers.
/// Used for calling `galloc` and `gfree`.
#if GS1
#define GPTR(name) (offsetof(GlobalPtrs, name) / sizeof(void*))
#else // GS2
#define GPTR(name) (offsetof(GlobalPtrs, name))
#endif

typedef union AnimStatePtr {
	struct FieldAnimState* field;
	struct MoveAnimState*  move;
} AnimStatePtr;

typedef struct GlobalPtrs {

	/// Heap pointer for alloc_ewram
	void* ewramHeapPos;
	/// Heap pointer for alloc_iwram
	void* iwramHeapPos;

	/// Matrix stack for saving and recalling matrices.
	/// In retail builds, the matrix "stack" has a capacity of 1 and can only store one matrix.
	struct Matrix* matrixStack;

	/// Memory pool for `SpriteLayer` objects
	struct SpriteLayer* spriteLayers;
	/// Memory pool for `Sprite` objects
	struct Sprite* sprites;
	/// Memory pool for `Actor` objects
	struct Actor* actors;

	/// Global state singleton for the sprite render system
	struct SpriteContext* spriteContext;

	// ?
	void* _unk07;

	union {
		/// Global state singleton for the field
		struct FieldState* field;
		/// Global state singleton for the world map
		struct WorldMapState* worldMap;
	};
	/// Global state singleton for battle
	struct BattleState* battle;

	// ?
	void* _unk0A;
	// ?
	void* _unk0B;

	// ?
	struct Camera3D* camera3D;

	// ?
	void* _unk0D;
	// ?
	void* _unk0E;

	/// Global state singleton for the UI
	struct UIState* ui;

	// ?
	void* _unk10;
	// ?
	void* _unk11;
	// ?
	void* _unk12;
	// ?
	void* _unk13;
	// ?
	void* _unk14;
	// ?
	void* _unk15;
	// ?
	void* _unk16;

#if GS1
	void* _unused17;
	void* _unused18;
	void* _unused19;
	void* _unused1A;
#else // GS2
	/// ...
	AnimStatePtr anim;

	/// ...
	u8* renderbuffer;

	union {
		/// Allocated by `Anim_Func` and `Anim_Summon` with exactly enough space for `FILE_VFX_PARTICLE`.
		u8* particleGFX;
		/// ...
	};
#endif // GS2

	union {
		Draw2DFn draw2D_1;
		// ...
	};

	/// ...
	struct MapState* mapState;

	// ?
	void* _unk1C;
	// ?
	void* _unk1D;
	// ?
	void* _unk1E;
	// ?
	void* _unk1F;
	// ?
	void* _unk20;
	// ?
	void* _unk21;
	// ?
	void* _unk22;
	// ?
	void* _unk23;
	// ?
	void* _unk24;
	// ?
	void* _unk25;
	// ?
	void* _unk26;

#if GS1
	/// ...
	AnimStatePtr anim;

	/// ...
	u8* renderbuffer;

	union {
		/// Allocated by `Anim_Func` and `Anim_Summon` with exactly enough space for `FILE_VFX_PARTICLE`.
		u8* particleGFX;
		/// ...
	};
#else // GS2
	// ?
	void* _unk27;
	// ?
	void* _unk28;
	// ?
	void* _unk29;
#endif // GS2

	// ?
	void* _unk2A;
	// ?
	void* _unk2B;
	// ?
	void* _unk2C;
	// ?
	void* _unk2D;
	// ?
	void* _unk2E;

#if GS1
	Draw2DFn draw2D_2;
#else // GS2
	void* _unk2F;
#endif

	// ?
	void* _unk30;
	// ?
	void* _unk31;
	
	/// ...
	NextCharFn nextChar;

	// ?
	void* _unk33;
	// ?
	void* _unk34;
	// ?
	void* _unk35;

	/// Current enemy status in battle.
	struct Unit* enemies;

	// ?
	void* _unk37;
	// ?
	void* _unk38;
	// ?
	void* _unk39;
	// ?
	void* _unk3A;
	// ?
	void* _unk3B;
	// ?
	void* _unk3C;
	// ?
	void* _unk3D;
	// ?
	void* _unk3E;
	// ?
	void* _unk3F;

} GlobalPtrs;


/// ...
typedef struct SaveHeader {

	char name[15]; /// Party leader's name

	u8  level;
	u8  _unk0D;
	u16 _unk0E;
	u32 playTime;
	u32 coins;
	u8  numDjinn[4];
	u8  party[4];
	u32 _unk20;
	u16 _unk24;
	u16 _unk26; // build date related apparently?
	u32 _unk28;
	u16 checksum;
	u16 _unk2E;
	u32 _unk30;
	u32 _unk34;
	u32 _unk38;
	u32 _unk3C;

} SaveHeader;


#if GS1
#define MAX_UNSET_DJINN  64
#else // GS2
#define MAX_UNSET_DJINN  72
#endif

typedef struct UnsetDjinni {
	u8 element;
	u8 id;
	u8 pc;
	u8 turns;
} UnsetDjinni;

typedef struct GlobalState {

	/// Build date, copied from the ROM.
	u32 buildDate;

	/// Current play time
	u32 playTime;

	u32 _unk008; // ?

	/// ...
	u32 summonFlags;

	/// Current coin count
	u32 coins;

	/// ...
	UnsetDjinni unsetDjinn[MAX_UNSET_DJINN];
	u32 numUnsetDjinn;

	/// ...
	u32 coinsSpent;
	/// ...
	u8  ticketsEarned;

	/// ...
	u8 luckySpringOdds[15];

	u8 _unk04C[0x94]; // ?

	/// ...
	u16 destMap;
	u16 destDoor;

	/// ...
	u16 respawnMap;
	u16 respawnDoor;

	/// ...
	u16 curMap;
	u16 curDoor;
	s16 curArea;

	u16 _unk1EE; // winMap?
	u16 _unk1F0; // winDoor?
	u16 _unk1F2; // loseMap?
	u16 _unk1F4; // loseDoor?

	/// File ID for current battle background
	u16 battleBG;

	u16 _unk1FA; // ?

	/// File ID for current map
	u16 mapFile;

	/// Player position on current map
	vec3 fieldPos;
	u32 fieldFacing;
	u16 fieldLayer;

	/// ...
	u16 battleMusic;
	u16 fieldMusic;

#if GS2
	/// Current player movement type.
	u8 movementType;
#endif // GS2

	/// Current party leader. Controls which sprite the player controls on the field.
	u32 partyLeader;

	/// ...
	u8 partyOrder[8];

	// ...

	u8 _unk224; // ?

	/// UI window color settings
	u8 uiColor;
	u8 uiBrightness;

	// ...

	/// These variables control which keys field actions are bound to.
	/// The functionality to remap them is never used though.
	u16 keyAMenu;
	u16 keyBUnused;
	u16 keySelectMenu;
	u16 keyStartMenu;
	u16 keyShortcutL;
	u16 keyShortcutR;
	u16 keyRun;

	u16 _unk23E;

	/// Utility Psynergy bound to L/R shortcuts
	u16 shortcutL;
	u16 shortcutR;

	// ...

#if GS2
	/// Counter for the angry Kraden easter egg in Lemuria.
	/// Increments each time the player selects no during certain yes/no prompts in the story.
	/// Must be at least 4 for the player to be able to activate the easter egg.
	u8 kradenAnger;

	u8 _unk275; // ?

	/// True if the player is currently controlling the ship.
	bool8 ship;
	/// Current ship position
	vec3 shipPos;
#endif // GS2

	// ...

} GlobalState;


#endif // GLOBAL_H