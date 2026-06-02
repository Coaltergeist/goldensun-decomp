// anim_gfx.h
#ifndef ANIM_GFX_H
#define ANIM_GFX_H

#include "render.h"


// FILE_VFX_SCREEN_SHATTER
#define VFX_SCREEN_SHATTER_SIZE  27946
extern u16 gVFX_ScreenShatter_Offsets[];
extern u8  gVFX_ScreenShatter_Widths[];
extern u8  gVFX_ScreenShatter_Heights[];

// FILE_UNSUMMON_FLASH
#define VFX_UNSUMMON_FLASH_SIZE  22092
extern u16 gVFX_UnsummonFlash_Offsets[];
extern u8  gVFX_UnsummonFlash_Widths[];
extern u8  gVFX_UnsummonFlash_Heights[];

// FILE_VFX_HELM_SPLITTER_SLASH
#define VFX_HELM_SPLITTER_SLASH_SIZE  15796
extern u16 gVFX_HelmSplitterSlash_Offsets[];
extern u8  gVFX_HelmSplitterSlash_Widths[];
extern u8  gVFX_HelmSplitterSlash_Heights[];
extern u8  gVFX_HelmSplitterSlash_XCoords[];
extern u8  gVFX_HelmSplitterSlash_YCoords[];

// FILE_VFX_PARTICLE
#define VFX_PARTICLE_SIZE  770
extern u16 gVFX_Particle_Offsets[];

// FILE_WIDE_PARTICLE
#define VFX_WIDE_PARTICLE_SIZE  1540
extern u16 gVFX_WideParticle_Offsets[];

// FILE_BIG_PARTICLE
#define VFX_BIG_PARTICLE_SIZE  3080
extern u16 gVFX_BigParticle_Offsets[];

// FILE_VFX_GROWTH
#define VFX_GROWTH_SIZE  11557
extern u16 gVFX_Growth_Offsets[];
extern u8  gVFX_Growth_Widths[];
extern u8  gVFX_Growth_Heights[];
extern u16 gVFX_Growth_HitOffsets[];
extern u8  gVFX_Growth_HitDims[];
extern u8  gVFX_Growth_HitXYOffsets[];

// FILE_VFX_PUNJI
#define VFX_PUNJI_SIZE  6603
extern u16 gVFX_Punji_Offsets[];
extern u8  gVFX_Punji_Widths[];
extern u8  gVFX_Punji_Heights[];

// FILE_VFX_THORN
#define VFX_THORN_SIZE  11394
extern u16 gVFX_Thorn_HitOffsets[];
extern u8  gVFX_Thorn_HitWidths[];
extern u8  gVFX_Thorn_HitHeights[];

// FILE_VFX_PROCNE_SHOT
#define VFX_PROCNE_SHOT_SIZE  1804
extern u16 gVFX_ProcneShot_Offsets[];
extern u8  gVFX_ProcneShot_Widths[];
extern u8  gVFX_ProcneShot_Heights[];
extern u8  gVFX_ProcneShot_YOffsets[];

// FILE_VFX_SPIRE
#define VFX_SPIRE_SIZE  4731
extern u16 gVFX_Spire_DebrisOffsets[];
extern u8  gVFX_Spire_DebrisWidths[];
extern u8  gVFX_Spire_DebrisHeights[];

// FILE_VFX_STAT_DOWN
#define VFX_STAT_DOWN_SIZE  696
extern u16 gVFX_StatDown_ShardOffsets[];
extern u8  gVFX_StatDown_ShardWidths[];
extern u8  gVFX_StatDown_ShardHeights[];

// FILE_VFX_GROUND
#define VFX_GROUND_SIZE  2392
extern u16 gVFX_Ground_Offsets[];
extern u8  gVFX_Ground_Widths[];
extern u8  gVFX_Ground_Heights[];

// FILE_VFX_CONDEMN
#define VFX_CONDEMN_1_SIZE  24065
#define VFX_CONDEMN_2_SIZE  24638
extern u8 gVFX_Condemn_XOffsets[];
extern u8 gVFX_Condemn_YOffsets[];

// FILE_VFX_CYBELE
#define VFX_CYBELE_SIZE  4495
extern u16 gVFX_Cybele_SeedOffsets[];
extern u8  gVFX_Cybele_SeedWidths[];
extern u8  gVFX_Cybele_SeedHeights[];
extern u16 gVFX_Cybele_HitOffsets[];
extern u8  gVFX_Cybele_HitDims[];

// FILE_VFX_FLARE
#define VFX_FLARE_SIZE  6017
extern u16 gVFX_Flare_Offsets[];
extern u8  gVFX_Flare_Widths[];
extern u8  gVFX_Flare_Heights[];
extern u8  gVFX_Flare_YOffsets[];

// FILE_VFX_FROST
#define VFX_FROST_SIZE  2564
extern u16 gVFX_Frost_ShardOffsets[];
extern u8  gVFX_Frost_ShardWidths[];
extern u8  gVFX_Frost_ShardHeights[];

// FILE_VFX_BOREAS
#define VFX_BOREAS_SIZE  9367
extern u16 gVFX_Boreas_IceOffsets[];
extern u8  gVFX_Boreas_IceWidths[];
extern u8  gVFX_Boreas_IceHeights[];
extern u16 gVFX_Boreas_DebrisOffsets[];
extern u8  gVFX_Boreas_DebrisWidths[];
extern u8  gVFX_Boreas_DebrisHeights[];
extern u16 gVFX_Boreas_BlizzardOffsets[];
extern u8  gVFX_Boreas_BlizzardWidths[];
extern u8  gVFX_Boreas_BlizzardHeights[];

// FILE_VFX_SPARKLE
#define VFX_SPARKLE_SIZE  257
extern u16 gVFX_Sparkle_Offsets[];
extern u8  gVFX_Sparkle_Dims[];

// FILE_VFX_MUD
#define VFX_MUD_SIZE  9117
extern u16 gVFX_Mud_Offsets[];
extern u8  gVFX_Mud_Widths[];
extern u8  gVFX_Mud_Heights[];

// FILE_VFX_BLAST
#define VFX_BLAST_SIZE  14556
extern u16 gVFX_Blast_Offsets[];
extern u8  gVFX_Blast_Dims[];

// FILE_VFX_SLASH_HIT
#define VFX_SLASH_HIT_SIZE  9492
extern u16 gVFX_SlashHit_Offsets[];
extern u8  gVFX_SlashHit_ShortDims[];
extern u8  gVFX_SlashHit_LongDims[];

// FILE_VFX_WHIRLWIND
#define VFX_WHIRLWIND_SIZE  14639
extern u16 gVFX_Whirlwind_SparkOffsets[];
extern u8  gVFX_Whirlwind_SparkWidths[];
extern u8  gVFX_Whirlwind_SparkHeights[];

// FILE_VFX_PRISM
#define VFX_PRISM_SIZE  5835
extern u16 gVFX_Prism_DebrisOffsets[];
extern u8  gVFX_Prism_DebrisWidths[];
extern u8  gVFX_Prism_DebrisHeights[];


#if GS2

// FILE_VFX_METEOR_BLOW_STARS
#define VFX_METEOR_BLOW_STARS_SIZE  1956
extern u16 gVFX_MeteorBlowStars_Offsets[];
extern u8  gVFX_MeteorBlowStars_Widths[];
extern u8  gVFX_MeteorBlowStars_Heights[];

// FILE_VFX_ULYSSES_OFUDA
#define VFX_ULYSSES_OFUDA_SIZE  1814
extern u16 gVFX_UlyssesOfuda_Offsets[];
extern u8  gVFX_UlyssesOfuda_Widths[];
extern u8  gVFX_UlyssesOfuda_Heights[];

// FILE_VFX_HEARTBREAK
#define VFX_HEARTBREAK_SIZE  21085
extern u16 gVFX_Heartbreak_HitOffsets[];
extern u8  gVFX_Heartbreak_HitWidths[];
extern u8  gVFX_Heartbreak_HitHeights[];

// FILE_VFX_COATLICUE_BUBBLES
#define VFX_COATLICUE_BUBBLES_SIZE  3000
extern u16 gVFX_CoatlicueBubbles_Offsets[];
extern u8  gVFX_CoatlicueBubbles_Widths[];
extern u8  gVFX_CoatlicueBubbles_Heights[];

extern Vertex8 MDL_Quad_Verts[];

extern TriangleUV MDL_Quad_TrisUV64[];
extern TriangleUV MDL_Quad_TrisUV128[];

#endif // GS2

#endif // ANIM_GFX_H