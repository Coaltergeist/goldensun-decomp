// asm/render.h
#ifndef ASM_RENDER_H
#define ASM_RENDER_H

// Draw3D triangle cull modes
#define DRAW3D_CULL_NONE   0 /// No culling (both sides visible)
#define DRAW3D_CULL_FRONT  2 /// Front-face culling (only back side visible)
#define DRAW3D_CULL_BACK   3 /// Back-face culling (only front side visible)

#define DRAW3D_NOTEXCOPY   4 /// Flag for `cull` param, prevents texture from being copied to IWRAM

// Draw3DCmd struct offsets
#define o_Draw3DCmd_mode      0x0
#define o_Draw3DCmd_cull      0x4
#define o_Draw3DCmd_tris      0x8
#define o_Draw3DCmd_verts     0xC
#define o_Draw3DCmd_texture   0x10
#define o_Draw3DCmd_colors    0x14
#define o_Draw3DCmd_fade      0x14
#define o_Draw3DCmd_offsetUV  0x18

// Texture struct offsets
#define o_Texture_width       0x0
#define o_Texture_height      0x1
#define o_Texture_gfx         0x4

#endif // ASM_RENDER_H