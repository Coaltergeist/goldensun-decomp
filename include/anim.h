// anim.h
#ifndef ANIM_H
#define ANIM_H

#include "global.h"
#include "battle.h"
#include "render.h"
#include "camera.h"
#include "anim_gfx.h"

#if GS1
#include "gs1/move_anims.h"
#else // GS2
#include "gs2/move_anims.h"
#endif

// Move animation types
#define MOVE_ANIM_T_NORMAL      0
#define MOVE_ANIM_T_HIDE_PARTY  9

// Anim_Elem subanims
#define ANIM_ELEM_CAST           0 /// Cast animation
#define ANIM_ELEM_UNLEASH        1 /// Weapon unleash/Enemy attack animation
#define ANIM_ELEM_ELEM_POWER_UP  2 /// Elemental Power up animation
#define ANIM_ELEM_DJINNI_SET     3 /// Djinni set animation

// Blit modes
// Specifies behavior of `Task_BlitAnim` after copying renderbuffer to VRAM
#define BLIT_COPY      0 /// On copy, do nothing
#define BLIT_CLEAR     1 /// On copy, fill renderbuffer with `blitParam`
#define BLIT_FADE_DIV  2 /// On copy, fade renderbuffer (`p = p / 4`; or `p = p / 2` if `blitParam == 50`)
#define BLIT_FADE_SUB  3 /// On copy, fade renderbuffer (`p = p - blitParam`)
#define BLIT_FADE_ADD  4 /// On copy, fade renderbuffer (`p = p + blitParam`)

/// ...
typedef struct AnimContext {
	/// Current animation ID
	u32 anim;

	/// Which side the current move was used by (`SIDE_PLAYER` or `SIDE_ENEMY`)
	u32 side;
	/// Unit ID who used the current move
	u32 user;
	/// Unit ID for the main target
	u32 target;

	/// ...
	u32 _unk10;

	/// Number of units targeted by the current move
	u32 numTargets;

	/// For most moves, this is the animation parameter specified in `gMoveAnims`.
	/// For certain moves with variable effects, this indicates which effect happened.
	u32 param;
	/// ...
	u32 djinni;
	/// ...
	u32 _unk20;

	/// Unit IDs targeted by the current move
	u16 targets[5];

} AnimContext;


typedef struct Particle2D {
	vec2 pos;
	vec2 motion;
	u32  aux; /// Auxiliary value (animation frame, etc.)
} Particle2D;

typedef struct Particle3D {
	vec3 pos;
	vec3 motion;
	u32  aux; /// Auxiliary value (animation frame, etc.)
} Particle3D;


typedef struct MoveAnimState {
#if GS1
	Particle3D particles[64];
#endif
	/// General-purpose data buffer (for textures, vertices, etc.)
	u8 buffer[28800];
#if GS2
	Particle3D particles[64];
#endif

	/// Blit behavior (see `BLIT_*` constants in `constants/anim.h`)
	u32 blitMode;
	/// Blit parameter (use differs by blit mode)
	u32 blitParam;

	u32 _unk7788;
	u32 _unk778C;
	u32 _unk7790;
	u32 _unk7794;
	u32 _unk7798;
	u32 _unk779C;
	u32 _unk77A0;
	u32 _unk77A4;

	/// Amount of frames to shake the screen for. Used in conjunction with `UpdateScreenShake`.
	u32 screenShakeFrames;

	u32 _unk77AC;
	u32 _unk77B0;
	u32 _unk77B4;
	u32 _unk77B8;
	u32 _unk77BC;
	u32 _unk77C0;
	u32 _unk77C4;
	u32 _unk77C8;
	u32 _unk77CC;
	u32 _unk77D0;
	u32 _unk77D4;
	u32 _unk77D8;
	
	Sprite* sprites[64];

	u8 _unk78DC[8];

	/// How many actual frames have elapsed since the last rendered frame,
	/// including lag frames.
	u32 actualFrames;

	/// Set to true to cause the renderbuffer to be blitted to the screen next frame.
	bool32 dirty;

#if GS2
	bool32 _unk78EC;
#endif

	/// Pointer to context struct for the current animation
	AnimContext* context;

#if GS2
	u8  _unk78F4[640];
	u8* _unk7B74;
	u32 _unk7B78;
#endif // GS2
} MoveAnimState;

/// Start a move animation.
extern void AnimStart(u16 bgcnt);

/// End the current move animation.
extern void AnimEnd(void);

/// Transition out of the current scene
extern void AnimTransitionOut(u8 type, u8 fade);

/// Transition into a new scene with a new background
extern void AnimTransitionIn(u8 type, u16 bgFileID, u8 fade);

/// Load a VFX graphic file.
extern void LoadVFXFile(u16 fileID, u8* dest, bool8 hasPalette, bool8 loadPalette);

/// ...
extern void BlendVFXPaletteFile(u16 fileID);

/// Set the VFX palette to a grayscale gradient.
extern void LoadWhiteVFXPalette(void);

/// This task handles blitting the renderbuffer to VRAM every frame, as well as any inter-frame fade effects.
/// @see `AnimState.blitMode` and `AnimState.blitParam` for configuring the blit mode.
extern void Task_BlitAnim(void);

/// Write the position of the actor targeted by the current move to `dest`.
extern void GetAnimTargetPos(vec3* dest);


extern void GetAnimTargetFeetPos(vec3* dest);

/// Update the screen position during a screen shake effect.
/// This should be called once per frame after initializing `AnimState.screenShakeFrames`.
extern void UpdateScreenShake(int x, int y);

/// Display the Djinni unleash animation (orbs of light released from user converging together)
/// The lower 3 bits of `param` are the element.
extern void Anim_Djinni(AnimContext* context, u8 param, vec3* out_djinniPos, vec3* out_unk);

#if GS2

/// Mirror GFX in memory across the X and Y axes.
/// This lets the GFX be drawn X/Y mirrored with only one Draw2D call or quad, but it also takes up more memory.
/// `width` and `height` are the dimensions of the initial un-mirrored GFX.
extern void MirrorTextureXY(const u8* src, u8* dest, int width, int height);

/// Generate GFX for a radial gradient circle.
/// The generated GFX is half-width, so it needs to be drawn with the BG stretched horizontally (or with `Draw3D`.)
/// `fade` controls the distance from the center at which the gradient begins.
extern void GenerateCircleGFX(u8* dest, u32 radius, fx32 fade);

/// Generate GFX for a radial gradient circle.
/// The generated GFX is half-width, so it needs to be drawn with the BG stretched horizontally (or with `Draw3D`,)
/// and is only a quarter circle so it needs to be drawn mirrored across the X and Y axes.
/// `fade` controls the distance from the center at which the gradient begins.
extern void GenerateQuarterCircleGFX(u8* dest, u32 radius, fx32 fade);

/// Generate a UV-mapped triangle strip.
/// This function only generates the triangle data, not the actual vertex coordinates.
extern void GenerateTriangleStrip(TriangleUV* dest, u8 unk1, u8 unk2, int ntris);

/// Generate UV-mapped triangles for a 3D radial mesh (sphere, cylinder, etc.)
/// This function only generates the triangle data, not the actual vertex coordinates.
extern void GenerateTriangleLoops(TriangleUV* dest, int nsides, int nloops, u8 unk1, u8 unk2);

#endif // GS2

#endif // ANIM_H