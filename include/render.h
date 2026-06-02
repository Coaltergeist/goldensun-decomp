// render.h
#ifndef RENDER_H
#define RENDER_H

#include <gba/types.h>

#include "asm/render.h"
#include "math.h"

// Dimensions (powers of 2)
// Used by BuildDraw2DFuncEx for renderbuffer dimensions and Draw3D for texture dimensions
#define DIM_1      0
#define DIM_2      1
#define DIM_4      2
#define DIM_8      3
#define DIM_16     4
#define DIM_32     5
#define DIM_64     6
#define DIM_128    7
// unsupported by Draw3D?
#define DIM_256    8
#define DIM_512    9
#define DIM_1024   10
#define DIM_2048   11
#define DIM_4096   12
#define DIM_8192   13
#define DIM_16384  14
#define DIM_32768  15


/// Draw a line in software.
/// `DrawLine` always uses lighter-color blending.
extern void DrawLine(int x1, int y1, int x2, int y2, int color);


// Draw2D blend modes
#if GS1
#define DRAW2D_BLEND_NONE  0 /// No blending
#define DRAW2D_BLEND_MASK  1 /// Color 0 transparency
#define DRAW2D_BLEND_MAX   2 /// Lighter-color blending
#define DRAW2D_BLEND_ADD   3 /// Additive blending
#else // GS2
#define DRAW2D_BLEND_ADD   0 /// Additive blending
#define DRAW2D_BLEND_MAX   1 /// Lighter-color blending
#define DRAW2D_BLEND_MASK  2 /// Color 0 transparency
#define DRAW2D_BLEND_NONE  3 /// No blending
#endif

// Draw2D flags
#define DRAW2D_XCLIP (1 << 0) /// Disable X screen wrap
#define DRAW2D_YCLIP (1 << 1) /// Disable Y screen wrap
#define DRAW2D_XFLIP (1 << 2) /// Mirror horizontally
#define DRAW2D_YFLIP (1 << 3) /// Mirror vertically

#define DRAW2D_XYCLIP (DRAW2D_XCLIP | DRAW2D_YCLIP)
#define DRAW2D_XYFLIP (DRAW2D_XFLIP | DRAW2D_YFLIP)

/** 
 * Draw a 2D particle in software.
 * Draw2D allows for drawing blended particles that overlap each other, as well as displaying many more 
 * particles at once than would be possible using only hardware sprites. 
 * However, unlike hardware sprites, Draw2D is not capable of rotation or scaling beyond simple mirroring.
 * (Also, in order to use mirroring, a separate Draw2D function must be created for each configuration.)
 * To draw particles with rotation or scaling effects, either pre-rendered graphics must be used, 
 * or in GS2, `Draw3D` can be used instead to achieve rotation and scaling effects.
 * Both `dest` and `gfx` must be 8bpp, as Draw2D only supports 8bpp graphics.
 * Note that Draw2D is not a function itself; in order to use it, a Draw2D function must first be created
 * by calling `BuildDraw2DFunc` or `BuildDraw2DFuncEx`. 
 */
typedef void (*Draw2DFn)(u8* dest, const u8* gfx, s16 x, s16 y, u16 width, u16 height);

/** 
 * Assemble a Draw2D function and place a pointer to it in the given global ptr index.
 * The assembled function is dynamic memory and must be freed with `free_global`.
 * `bufWidth` and `bufHeight` are the renderbuffer width and height, as `DIM_*` constants.
 * (The renderbuffer dimensions used are always 128x128 in vanilla GS animations, though.)
 * @see `DRAW2D_*` constants for possible values for `flags` and `blend`. 
 */
extern int BuildDraw2DFuncEx(u8 index, u8 bufWidth, u8 bufHeight, u8 flags, u8 blend);

/// Simplified version of `BuildDraw2DFuncEx`, buffer size is always 128x128px.
/// The lower 4 bits of `mode` is `flags` and the upper 4 bits is `blend`.
#if GS1
static inline int BuildDraw2DFunc(int index, u8 mode) {
	return BuildDraw2DFuncEx(index, DIM_128, DIM_128, mode & 0xF, mode >> 4);
}
#else // GS2
extern int BuildDraw2DFunc(int index, u8 mode);
#endif

/// Macro for combining `flags` and `blend` params for `BuildDraw2DFunc`
#define DRAW2D_MODE(flags, blend) ((flags) | (blend) << 4)

/// Builds `gPtrs.draw2D_1` and `gPtrs.draw2D_2` with `DRAW2D_BLEND_MAX` and `DRAW2D_BLEND_ADD`, respectively.
/// Both have `DRAW2D_XYCLIP` passed to them, as well as `DRAW2D_XFLIP` if `xflip` is true.
/// Pointers to both are also returned in the array pointed to by `dest`.
/// Both must be freed individually, with `draw2D_2` freed before `draw2D_1`.
extern void BuildDraw2DFuncs(bool8 xflip, Draw2DFn(*dest)[2]);


#if !GS1 // NOTE: 3D rendering is only available in GS2

// Draw3D modes
#define DRAW3D_END            0  /// End of command array
#define DRAW3D_FLAT           1  /// 128x128, flat-colored triangles, no blending
#define DRAW3D_FLAT_MAX       2  /// 128x128, flat-colored triangles, lighter-color blending
#define DRAW3D_FLAT_ADD       3  /// 128x128, flat-colored triangles, additive blending
#define DRAW3D_TEX_MAX        4  /// 128x128, textured triangles, lighter-color blending
#define DRAW3D_TEX_ADD        5  /// 128x128, textured triangles, additive blending (unused)
#define DRAW3D_TEX_FADE_MAX   6  /// 128x128, textured triangles, fade parameter, lighter-color blending
#define DRAW3D_TEX_FADE_ADD   7  /// 128x128, textured triangles, fade parameter, additive blending
#define DRAW3D_TEX            8  /// 128x128, textured triangles, no blending
#define DRAW3D_TEX_FADE_MASK  9  /// 128x128, textured triangles, fade parameter, color 0 transparency
#define DRAW3D_SMALL_TEX      10 /// 64x64, textured triangles (unused)
#define DRAW3D_SMALL_FLAT     11 /// 64x64, flat-colored triangles (unused)

/// Vertex data (untransformed)
typedef struct Vertex8 {
	s8 x, y, z;
} Vertex8;

/// Vertex data (transformed)
typedef struct Vertex16 {
	s16 x, y, z;
} Vertex16;

/// Triangle data (untextured)
typedef struct Triangle {
	u8 verts[3]; /// Indices into the vertex array
} Triangle;

/// Triangle data (textured)
typedef struct TriangleUV {
	u8 verts[4]; /// Indices into the vertex array (1 byte padding)
	u8 uvs[3][2];
} TriangleUV;

/// Texture descriptor struct
typedef struct Texture {
	u8 width, height; /// Texture dimensions (as `DIM_*` constants)
	const u8* gfx;    /// Texture graphics data
} Texture;

/// Render command for `Draw3D`.
typedef struct Draw3DCmd {
	/// Draw mode (see `DRAW3D_*` constants for all possible modes)
	u32 mode;

	/// Triangle culling mode (see `DRAW3D_CULL_*` constants in `render_asm.h`)
	u32 cull;

	/// Triangle data
	union {
		const Triangle*   tris;
		const TriangleUV* uvtris;
	};

	/// Vertex position data (transformed)
	const Vertex16* verts;
	
	/// Texture (only for textured draw modes)
	const Texture* texture;

	union {
		/// Triangle color array (only for flat-colored draw modes)
		/// One 256-color BG palette index for each triangle in `tris`.
		const u8* colors;
		/// Fade parameter (only for fadeable draw modes)
		/// Value must be in the range [-63,0] and is added to each pixel to decrease its brightness.
		s32 fade;
	};

	/// Texture offset parameters (only for textured draw modes)
	s8 offsetU, offsetV;

} Draw3DCmd;

/**
 * Allocate a new Draw3D command buffer on the heap. This must be freed after use.
 * An array of `count + 1` commands is allocated and automatically terminated with a `DRAW3D_END` command.
 * All allocated commands also have their cull and UV offset fields initialized to 0 (no culling.)
 */
extern Draw3DCmd* NewDraw3DCmdList(int count);

/// Transform the vertices at `src` by `gMatrix` and write the transformed vertices to the buffer at `dest`.
/// The vertices are also expanded from 8-bit to 16-bit.
extern void Transform3D(const Vertex8* src, Vertex16* dest, u32 count);

/**
 * Draw 3D polygonal graphics in software.
 * `Draw3D` takes a null-terminated list of draw commands, each specifying a draw mode and pointers to
 * triangle and vertex data, as well as other parameters like a texture depending on the draw mode.
 * Command lists are typically created by calling `Draw3D_NewCmdArray`.
 * `Draw3D` does not handle vertex transformation, this must be done separately by calling `Transform3D`
 * before passing the transformed vertices to `Draw3D` in the draw command.
 * Also note that `Draw3D` only supports orthographic projection, not true perspective projection.
 * Like Draw2D, `Draw3D` only supports 8bpp graphics.
 * Unlike Draw2D, the destination buffer for `Draw3D` is always `gPtrs.renderbuffer`.
 */
extern void Draw3D(Draw3DCmd* cmds);

#endif // !GS1

#endif // RENDER_H