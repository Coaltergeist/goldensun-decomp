// sprite.h
#ifndef SPRITE_H
#define SPRITE_H

#include <gba/types.h>

#include "math.h"

#if   GS1
#include "gs1/sprites.h"
#elif GS2
#include "gs2/sprites.h"
#endif

#define MAX_SPRITES        64 /// Number of sprites that can exist at once
#define MAX_SPRITE_LAYERS  64 /// Number of sprite layers that can exist at once
#define SPRITE_MAX_LAYERS  4  /// Number of sprite layers that a given sprite can have at once
#define MAX_SPRITE_SLOTS   96 /// Number of sprites that can exist at once in VRAM


// Standard field sprite animations
#define SANIM_FIELD_IDLE            1
#define SANIM_FIELD_WALK            2
#define SANIM_FIELD_YES             3
#define SANIM_FIELD_NO              4

// Standard player sprite animations
#define SANIM_PLAYER_RUN            5
#define SANIM_PLAYER_JUMP_SQUAT     6
#define SANIM_PLAYER_JUMP           7
#define SANIM_PLAYER_PUSH           8
#define SANIM_PLAYER_IDLE           9  // why is this separate from field idle...?
#define SANIM_PLAYER_CLIMB          10
#define SANIM_PLAYER_CLIMB_TOP      11
#define SANIM_PLAYER_CLIMB_IDLE     12
#define SANIM_PLAYER_CLIMB_START    13
#define SANIM_PLAYER_CLIMB_RIGHT    14
#define SANIM_PLAYER_CLIMB_LEFT     15
#if GS2
#define SANIM_PLAYER_SWING          16
#endif
#define SANIM_PLAYER_CAST           17
#define SANIM_PLAYER_DROWN          18
#define SANIM_PLAYER_DEFEAT         19
#define SANIM_PLAYER_CAST_START     20
#define SANIM_PLAYER_CAST_END       21
#define SANIM_PLAYER_DOWN           22
#define SANIM_PLAYER_STAIRS_DOWN_L  23
#define SANIM_PLAYER_STAIRS_DOWN_R  24
#define SANIM_PLAYER_STAIRS_UP_L    25
#define SANIM_PLAYER_STAIRS_UP_R    26
#define SANIM_PLAYER_LOG_ROLL       27
#define SANIM_PLAYER_GET            28
#if GS2
#define SANIM_PLAYER_ROPE_CLIMB     29
#endif

// Standard battle sprite animations
#define SANIM_BATTLE_IDLE    1
#define SANIM_BATTLE_ATTACK  2
#define SANIM_BATTLE_CAST    3
#define SANIM_BATTLE_DOWN    4
#define SANIM_BATTLE_HURT    5


// Sprite GFX formats
#define SFMT_RAW       0 /// Single frame, no LZ compression
#define SFMT_LZFRAMES  1 /// (TODO...)
#define SFMT_LZFILE    2 /// Entire sprite sheet is LZ-compressed in file table
#define SFMT_SPRITELZ  3 /// (TODO...)

// Sprite directional types
#define STYPE_NONE       0  /// Empty slot
#define STYPE_1DIR       1  /// 1 direction
#define STYPE_2DIR       2  /// 2 directions (4 facing directions)
#define STYPE_3DIR       3  /// 3 directions (6 facing directions)
#define STYPE_5DIR       5  /// 5 directions (8 facing directions)
#define STYPE_8DIR       8  /// 8 directions
#define STYPE_2DIR_2     20 /// 2 directions (4 facing directions)
#define STYPE_2DIR_FLIP  22 /// 2 directions (4 facing directions, GFX mirrored)

// Sprite animation commands
#define ACMD_END       0xEF /// End animation and delete the sprite layer
#define ACMD_MODE      0xF0 /// Set sprite layer's directional mode
#define ACMD_HALT      0xF1 /// End animation and hold the current frame indefinitely
#if !GS1
#define ACMD_XOFFSET   0xF2 /// Set sprite's (not sprite layer's) X offset
#define ACMD_YOFFSET   0xF3 /// Set sprite's (not sprite layer's) Y offset
#endif
#define ACMD_HOLD      0xF5 /// Hold the current frame for `(arg*16)` frames
#if !GS1
#define ACMD_SOUND     0xFC /// Play a sound (unused)
#endif
#define ACMD_LOOP      0xFD /// Jump to a given index in the current animation
#define ACMD_GOTOANIM  0xFE /// Play a different animation ID
#define ACMD_HIDE      0xFF /// End animation and hide the sprite layer

/**
 * A `SpriteInfo` entry defines graphics, animation data, and constant attributes for a given sprite ID.
 */
typedef struct SpriteInfo {

	/// Width and height, in pixels.
	u8 width, height;

	/// Default scale factor.
	u16 scale;

	/// Number of facing directions this sprite has.
	/// @see `STYPE_*` constants for all possible values.
	u8 type;

	/// Number of animations for this sprite.
	u8 numAnims;

	/// ...
	u8 offsetX, offsetY;

	/// Height offset to draw things at above this sprite (used for emote bubbles.)
	u8 actorHeight;
	/// Hitbox diameter for actors with this sprite.
	u8 actorWidth;

	/// Graphics data compression format.
	/// @see `SFMT_*` constants for all possible values.
	u8 format;

	/// Pointer to (compressed) graphics data.
	/// Graphics data compression format is specified by the `format` field.
	/// If this pointer is null, this sprite's graphics are stored as a file instead.
	const u8** gfx;
	/// Pointer to animation data.
	const u8** anims;

} SpriteInfo;

/// @return the SpriteInfo entry for the given sprite ID.
extern const SpriteInfo* GetSpriteInfo(u16 spriteID);


/// ...
typedef struct SpriteVoice {
	u16 spriteID;
	u8  voiceID;
} SpriteVoice;

/// ...
const SpriteVoice* GetSpriteVoiceEntry(u16 spriteID);

/// ...
u16 GetSpriteVoice(u16 spriteID);


/// ...
typedef struct SpriteSlot {
	/// The sprite's size in bytes (width * height * bpp / 8)
	u16 size;
	/// The sprite's allocated offset into the VRAM sprite area
	u16 vramOffset;
} SpriteSlot;

/**
 * Global allocation table for allocating space for sprites in VRAM.
 */
extern struct SpriteSlot gSpriteSlots[MAX_SPRITE_SLOTS];


// Sprite colorswap modes.
// Note that colorswaps are distinct from hardware palette swaps and are done in software,
// due to sprites in GS being 256-color and sharing a global palette.
#define COLORS_DEFAULT    0
#define COLORS_RGB        0
#define COLORS_GRB        1
#define COLORS_RBG        2
#define COLORS_BGR        3
#define COLORS_GBR        4
#define COLORS_BRG        5
#define COLORS_GRAYSCALE  6
#define COLORS_WHITE      7
#define COLORS_TINT_B     9
#define COLORS_TINT_R     10
#define COLORS_TINT_G     11
#define COLORS_INVERT     12 /// (broken in GS1)
#define COLORS_BLACK      14
#define COLORS_MASK       15 /// Invisible, masks layers behind it

/// ...
typedef struct SpriteLayer {

	/// Current sprite ID, which determines a sprite layer's GFX and animations.
	/// Note that modifying this will not automatically change a sprite's appearance;
	/// `InitSprite` or `InitSpriteLayer` must also be called afterward to update it.
	/// This variable also determines an actor's portrait and voice.
	u16 spriteID;

	/// Number of frames to wait before the next frame of animation.
	u16 animTimer;

	/// Determines the number of facing directions (see `SpriteInfo.type`)
	/// If 0, this is an unallocated slot.
	u8 type;

	/// The current colorswap mode for this sprite layer.
	/// Note that a colorswap is distinct from a hardware palette swap and is done in software,
	/// due to sprites in GS being 256-color and sharing a global palette.
	/// @see `COLORS_*` constants for all possible values.
	u8 colorswap;

	u8 priority;

	u8 format;        /// @see `SpriteInfo.format`
	const u8*  gfx;   /// @see `SpriteInfo.gfx`
	const u8** anims; /// @see `SpriteInfo.anims`

	/// Animation data pointer for current animation
	const u8* anim;
	/// Animation data index for current animation
	u8 animPos;

	u8 animSpeed;

	/// Current frame index
	u8 gfxFrameID;
	/// Current frame index (without accounting for facing direction)
	u8 animFrameID;
	
} SpriteLayer;

/// Create and initialize a new sprite layer.
/// (Typically this function shouldn't be used directly, since
///  it's called automatically by `CreateSprite` and `Sprite_CreateLayer`.)
extern SpriteLayer* CreateSpriteLayer(u16 spriteID);

/// Delete a sprite layer.
/// (Typically this function shouldn't be used directly, since
///  it's called automatically by `DeleteSprite` and `Sprite_DeleteLayer`.)
extern void DeleteSpriteLayer(SpriteLayer* layer);

/// Set this sprite layer's current animation.
extern void SpriteLayer_SetAnim(SpriteLayer* layer, u8 anim);



// Sprite flags
#define SPR_F_SHADOW      (1 << 0) /// Sprite has a shadow (field sprites only)
#define SPR_F_OUTLINE     (1 << 1) /// Sprite is drawn as an outline (Cloak, Haze, etc.)
#define SPR_F_WATER_TINT  (1 << 2) // TODO: how does this work exactly?
#define SPR_F_WATER       (1 << 3) /// Sprite is in shallow water
//      (unused?)         (1 << 4)
#define SPR_F_NOANIM      (1 << 5) /// Sprite doesn't animate

typedef struct SpriteOAM {
	struct SpriteOAM* mirror; /// Pointer into `gPtrs.oamBuffer`
	u16 attrs[3];
} SpriteOAM;

/**
 * An object that represents a single sprite on the screen.
 * Each sprite occupies a single slot in VRAM, and is comprised of one or more sprite layers.
 * Every actor has its own sprite, but a sprite does not necessarily have an actor.
 */
typedef struct Sprite { 

	/// OAM attributes for this sprite.
	SpriteOAM oam;
#if GS1
	/// OAM attributes for this sprite's shadow.
	/// (Only used for field sprites; battle sprites' shadows are sprite layers.)
	SpriteOAM shadowOAM;
#endif

	/// Affine scale factor.
	fx32 scale;

	/// The VRAM slot of this sprite.
	u8 slot;

	// Upper 6 bits control how much of the bottom of this sprite is cut off (used for shallow water)
	// Lower 2 bits seem to be flags?
	u8 unk;

	/// Affine rotation angle (not facing direction)
	u16 rotation;

	/// Sprite width and height, in pixels.
	u8 width, height;

	/// Offset to render the sprite at relative to its center.
	u8 offsetX, offsetY;

	/// Current animation ID of this sprite.
	/// Note that writing to this will not automatically change a sprite's animation;
	/// `Sprite_SetAnim` must be called to change it.
	u8 animID;

	/// True if this sprite is visible
	bool8 visible;

	/// @see `SPR_F_*` constants for more info.
	u8 flags;

	/// The number of layers this sprite has.
	u8 numLayers;

#if !GS1
	/// OAM attributes for this sprite's shadow.
	/// (Only used for field sprites; battle sprites' shadows are sprite layers.)
	SpriteOAM shadowOAM; // (moved)
#endif

	/// The layers of this sprite.
	/// Sprite layers are drawn in order of ascending priority.
	struct SpriteLayer* layers[SPRITE_MAX_LAYERS];

} Sprite;

/// Create and initialize a new sprite with the given sprite ID.
extern Sprite* CreateSprite(u16 spriteID);

/// Delete a sprite.
extern void DeleteSprite(Sprite* sprite);

/// Create and add a new layer to this sprite.
extern SpriteLayer* Sprite_CreateLayer(Sprite* sprite, u16 spriteID);

/// Remove and delete the given layer from this sprite.
extern void Sprite_DeleteLayer(Sprite* sprite, SpriteLayer* layer);

/// Remove and delete the given layer index from this sprite.
extern void Sprite_DeleteLayerIndex(Sprite* sprite, u8 index);

/// Set the current animation for all layers of this sprite.
extern void Sprite_SetAnim(Sprite* sprite, u8 anim);

/// Set the animation timer for all layers of this sprite.
extern void Sprite_SetAnimTimer(Sprite* sprite, u16 timer);

/// Set the animation speed for all layers of this sprite.
extern void Sprite_SetAnimSpeed(Sprite* sprite, u8 speed);

/// Set the colorswap mode for all layers of this sprite.
extern void Sprite_SetColorswap(Sprite* sprite, u8 colorswap);

#if !GS1
/// Set the colorswap mode for only layer 0 of this sprite.
extern void Sprite_SetLayer0Colorswap(Sprite* sprite, u8 colorswap);
#endif


/// Flag set in a sprite ID to indicate it's the second half of a double-wide sprite
#define SPR_DOUBLE  0x2000

/// ...
typedef struct CachedSpriteGFX {
	u32  spriteID;
	u8** gfx;
} CachedSpriteGFX;

/// ...
typedef struct SpriteRenderer {

	u16 gfxSize; // written to but never used?

	u16 _unk02;

	/// If true, actor sprites won't be displayed. Used for fullscreen menus.
	bool16 hideActors;

	/// Colors used for outlined sprites (Cloak, etc.)
	u8 outlineColor, fillColor;
	
	/// Pointer table for both halves of double-wide enemy sprites.
	Sprite* doubleSprites[2][2];
	u32 numDoubleSprites;

	/// Cached graphics for enemy sprites.
	CachedSpriteGFX gfxCache[8];

} SpriteRenderer;


#endif // SPRITE_H