/* Anim_Atalanta (GS1) = Anim_Atalanta @ 0x080DC968
 * Defined in: goldensun/asm/rom_c9000/rom_dbbdc.s (cluster, lines 1644-2693)
 *
 * Ported from Salenewt GS2 re_Atalanta.c (Anim_Atalanta @ GS2 0x8153EBC),
 * re-derived against the GS1 .s. GS1 and GS2 share the same overall logic;
 * GS1-specific symbol addresses, file/asset IDs, and a few structural points
 * (noted inline) were read from the GS1 disassembly.
 *
 * Judge: tools/judge.sh <cand>.c Anim_Atalanta goldensun/asm/rom_c9000/rom_dbbdc.s
 *
 * NON-MATCHING reference. Residual diffs are reg-alloc / scheduling (permuter
 * territory) plus FP#9 pooled small-const file-ID call arguments (see
 * camelot-gcc/README.md scoreboard). This file documents the function; it is
 * not expected to byte-match as-is.
 *
 * Func_ -> friendly name map (GS2 name : GS1 symbol):
 *   AnimStart            AnimStart      Random               Random
 *   FUN_0813BA50         Func_80c9048      InitMatrixStack      InitMatrixStack
 *   StartTask            StartTask      MatrixRoll           MatrixRoll
 *   StopTask/free-handle StopTask      MatrixPitch          MatrixPitch
 *   Task_BlitAnim        Task_BlitAnim      MatrixYaw            MatrixYaw
 *   Task_ScrollBG        Func_80c90e4      MatrixStore          Func_8004a28
 *   AnimTransitionOut    AnimTransitionOut      MatrixLoad           Func_8004a44
 *   AnimTransitionIn     _AnimTransitionIn     PhysMove             Func_80e3944
 *   FUN_0814CC4C         Func_80d6750      UpdateSprite         _UpdateSprite
 *   GetFile              Func_8002f40      PlaySound            _PlaySound
 *   LoadVFXFile          LoadVFXFile      BattleActor_GetPos2  Func_80e396c
 *   BuildDraw2DFunc      BuildDraw2DFuncEx      BattleActor_SetState Func_80d6888
 *   WaitFrames           WaitFrames      BattleActor_Knockbk  _SetBattleActorKnockback
 *   RestoreBattleBG      Func_80d67dc      UpdateScreenShake    UpdateScreenShake
 *   DeleteSprite         _DeleteSprite     ResetAllActors       Func_80cd52c
 *   gfree                gfree      AnimEnd              AnimEnd
 *   battle-flag setter   CreateSummonSprite      x%0x60 helper        Func_b50_from_thumb
 *   palette/copy helper  Func_8001af8 (via _call_via_r3)
 *   ATALANTA_TILE_DIMENSIONS = .Leeb40   draw2D[] calls via _call_via_r4
 *
 * GS1 asset IDs (read from disasm; GS2 used different numbering):
 *   0x6a LoadVFXFile arrow gfx     0xa0 GetFile (BG palette, 0x80 bytes)
 *   0x73 LoadVFXFile particle      0xd2 GetFile movement pattern
 *   0x3b AnimTransitionIn BG       0xb4 LoadVFXFile flare (segment 2)
 *   0x2e/0x2f BuildDraw2DFunc      0xd4/0x86 PlaySound (arrow / impact SFX)
 *   These small-const file IDs load from the literal pool (FP#9; see
 *   camelot-gcc/README.md scoreboard); one reason this stays non-matching.
 */

typedef unsigned char  u8;
typedef unsigned short u16;
typedef unsigned int   u32;
typedef signed char    s8;
typedef signed short   s16;
typedef signed int     s32;
typedef u8  byte;

typedef struct { s32 x, y, z; } vec3;

typedef struct {              /* Particle3D, stride 0x1c */
    s32 px, py;   /* 0x00 pos.x, 0x04 pos.y (fixed-point, <<16) */
    s32 _08;
    s32 mx, my;   /* 0x0c motion.x, 0x10 motion.y */
    s32 aux;      /* 0x18 */
} Particle3D;

typedef void (*Draw2DFn)(u8 *dst, void *gfx, int x, int y, int w, int h);

/* gPtrs (iwram) pointer table around 0x03001f00 (same base SpiderWeb uses):
 *   *(iwram_3001f00 - 0x14) = gPtrs.anim.move    (state)
 *   *(iwram_3001f00 - 0x10) = gPtrs.renderbuffer (dest)
 *   *(iwram_3001f00 - 0x0c) = gPtrs.particleGFX  (dest_00) */
extern u8 *iwram_3001f00;
extern u16 iwram_3001ad0;      /* +4 -> saved BG coord (originalBGCoords) */
extern u8 *gPhysVec;      /* draw2D scratch + [+0x10] = a BG/scroll field */
extern u8 *gKeyRepeat;      /* low bits gate the movement-pattern loop */

/* gBuffer regions (ewram) */
extern u8 ewram_2013800[];     /* matrix blocks: + i*0x120 + 0xe00 per arrow */
extern u8 gBuffer[];     /* particle bytes: + i*0xa8, stride 7; flare gfx base */

/* MMIO */
extern volatile u16 REG_BG2PA;     /* 0x04000020 */
extern volatile u16 REG_BG2CNT;    /* 0x0400000c */
extern volatile u16 REG_DISPCNT;   /* 0x04000000 */
extern volatile u16 REG_BLDALPHA;  /* 0x04000052 */
extern volatile u16 REG_BLDCNT;    /* 0x04000050 */
#define PALETTE_BG  ((volatile u16 *)0x05000000)

/* engine (raw symbol names so relocs match the expected .o) */
extern void  AnimStart(int prio);                  /* AnimStart */
extern void  Func_80c9048(void);                      /* FUN_0813BA50 */
extern void  StartTask(void (*task)(void), int m); /* StartTask */
extern void  StopTask(void *handle);              /* StopTask / free handle */
extern void  Task_BlitAnim(void);                      /* Task_BlitAnim */
extern void  Func_80c90e4(void);                      /* Task_ScrollBG */
extern void  AnimTransitionOut(int a, int b);              /* AnimTransitionOut */
extern void  _AnimTransitionIn(int a, int file, int c);   /* AnimTransitionIn */
extern void  Func_80d6750(void *ctx);                 /* FUN_0814CC4C */
extern void  CreateSummonSprite(int a, int b, int c);       /* GS1 battle-state setter */
extern void *Func_8002f40(int fileID);                /* GetFile */
extern void  LoadVFXFile(int file, void *dst, int a, int b); /* LoadVFXFile */
extern void  Func_8001af8(volatile u16 *dst, void *src, int len); /* copy helper */
extern void  BuildDraw2DFuncEx(int idx, int a, int b, int flags, int e); /* BuildDraw2DFunc */
extern void  WaitFrames(int n);                     /* WaitFrames */
extern int   Random(void);                      /* Random (u16) */
extern int   Func_b50_from_thumb(int val, int div);   /* umod veneer */
extern void  InitMatrixStack(void);                      /* InitMatrixStack */
extern void  MatrixRoll(int a);                     /* MatrixRoll */
extern void  MatrixPitch(int a);                     /* MatrixPitch */
extern void  MatrixYaw(int a);                     /* MatrixYaw */
extern void  Func_8004a28(void *m);                   /* MatrixStore */
extern void  Func_8004a44(void *m);                   /* MatrixLoad */
extern void  Func_80e3944(vec3 *in, vec3 *out);       /* PhysMove */
extern void  _UpdateSprite(void *sprite, int *coords, void *dims, int z); /* UpdateSprite */
extern void  _PlaySound(int sfx);                  /* PlaySound */
extern void  Func_80e396c(int target, vec3 *out);     /* BattleActor_GetPos2 */
extern void  Func_80d6888(int t, int a, int b, int c, int d); /* BattleActor_SetState */
extern void  _SetBattleActorKnockback(int t, int v);             /* BattleActor_SetKnockback */
extern void  UpdateScreenShake(int a, int b);              /* UpdateScreenShake */
extern void  Func_80cd52c(void);                      /* ResetAllActors */
extern void  Func_80d67dc(int bgCoords);              /* RestoreBattleBG */
extern void  _DeleteSprite(void *sprite);             /* DeleteSprite */
extern void  gfree(int idx);                   /* gfree */
extern void  AnimEnd(void);                      /* AnimEnd */
extern int   ATALANTA_TILE_DIMENSIONS[];              /* .Leeb40 */
extern u16   iwram_3001ad0_w[];                        /* alias of iwram_3001ad0 as u16[] */

/* segment-2 flare animation tables (file-local rodata in the original) */
extern u8  Data_ede9f[];   /* flare widths  */
extern u8  Data_edea5[];   /* flare heights */
extern u8  Data_edeab[];   /* flare y-offsets */
extern u16 Data_edeb2[];   /* flare gfx offsets */

/* MoveAnimState field offsets (verified against the GS1 disasm) */
#define STATE_BLITMODE(s)   (*(s32 *)((u8 *)(s) + 0x7780))
#define STATE_BLITPARAM(s)  (*(s32 *)((u8 *)(s) + 0x7784))
#define STATE_SCROLL0(s)    (*(s32 *)((u8 *)(s) + 0x7790))
#define STATE_SCROLL1(s)    (*(s32 *)((u8 *)(s) + 0x7794))
#define STATE_SCROLL2(s)    (*(s32 *)((u8 *)(s) + 0x7798))
#define STATE_SCROLL3(s)    (*(s32 *)((u8 *)(s) + 0x779c))
#define STATE_SHAKE(s)      (*(s32 *)((u8 *)(s) + 0x77b4))
#define STATE_SHAKE2(s)     (*(s32 *)((u8 *)(s) + 0x77b8))
#define STATE_PARTICLES(s)  ((Particle3D *)((u8 *)(s) + 0x77d8))
#define STATE_CONTEXT(s)    (*(AnimContext **)((u8 *)(s) + 0x7828))

typedef struct {
    u8  _00[0x14];
    u32 numTargets;        /* 0x14 */
    u8  _18[0x24 - 0x18];
    s16 targets[8];        /* 0x24 */
} AnimContext;

#define FX(n)  ((n) << 16)

void Anim_Atalanta(AnimContext *context)
{
    u8 *state    = *(u8 **)((u8 *)&iwram_3001f00 - 0x14);  /* gPtrs.anim.move */
    u8 *dest     = *(u8 **)((u8 *)&iwram_3001f00 - 0x10);  /* gPtrs.renderbuffer */
    u8 *dest_00  = *(u8 **)((u8 *)&iwram_3001f00 - 0x0c);  /* gPtrs.particleGFX */
    u8 *gBuffer  = iwram_3001f00;
    u32 originalBGCoords = iwram_3001ad0;                  /* (u16)[+4] */
    Draw2DFn *draw2D = (Draw2DFn *)(state + 0x3c);         /* sp-local draw2D[2] */
    int frame, i, j;

    STATE_CONTEXT(state) = context;

    /* ---- Startup / Summon Sequencing ---- */
    AnimStart(0x2000);                 /* AnimStart(BG_WRAP) */
    REG_BG2PA = 0x100;
    Func_80c9048();
    PALETTE_BG[0] = 0;
    PALETTE_BG[1] = 0;
    STATE_BLITMODE(state) = 0;            /* BLIT_COPY */
    StartTask(Task_BlitAnim, 0x480);    /* StartTask(Task_BlitAnim, TASK_VBLANK) */
    AnimTransitionOut(0, 0);                   /* AnimTransitionOut(0,0) */
    Func_80d6750(STATE_CONTEXT(state));   /* FUN_0814CC4C(state->context) */
    CreateSummonSprite(9, 0x172, 1);            /* GS2: (gPtrs.battle)->_unk867 = 1 */

    /* ---- File loading / render setup ---- */
    LoadVFXFile(0x6a, state, 1, 1);                       /* LoadVFXFile arrow gfx */
    Func_8001af8(PALETTE_BG, Func_8002f40(0xa0), 0x80);    /* copy BG palette */
    LoadVFXFile(0x73, dest_00, 0, 0);                     /* LoadVFXFile particle */
    {
        s8 *movementPattern = Func_8002f40(0xd2);          /* GetFile movement file */

        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);   /* BuildDraw2DFunc draw2D_1 */
        BuildDraw2DFuncEx(0x2f, 7, 7, 3, 3);   /* BuildDraw2DFunc draw2D_2 */
        draw2D[0] = *(Draw2DFn *)(gBuffer + 8);
        draw2D[1] = *(Draw2DFn *)(gBuffer + 0xc);
        gPhysVec[0x10] = 0xf0;        /* move all units off screen (Y=0xf0) */

        WaitFrames(1);                  /* WaitFrames(1) */
        _AnimTransitionIn(1, 0x3b, 0);        /* AnimTransitionIn(1, BG, 0) */
        STATE_SCROLL0(state) = 0;
        STATE_SCROLL1(state) = 4;
        STATE_SCROLL2(state) = -1;
        STATE_SCROLL3(state) = 0;
        StartTask(Func_80c90e4, 0x480);/* StartTask(Task_ScrollBG, TASK_VBLANK) */
        *(s32 *)(dest + 0x10) = 1;        /* BG_SCROLL_ENABLE = 1 */
        AnimTransitionOut(0, 1);               /* AnimTransitionOut(0,1) */
        REG_DISPCNT  = 0x7741;
        REG_BG2PA    = 0x80;
        REG_BLDALPHA = 0x1010;
        REG_BLDCNT   = 0x3f44;

        /* ---- Arrows: init 16 arrows x 24 particles ---- */
        for (i = 0; i < 16; i++) {
            Particle3D *p = STATE_PARTICLES(state) + i;
            u8 *mtx = ewram_2013800 + i * 0x120 + 0xe00;
            u8 *pb  = gBuffer + i * 0xa8;

            p->px = FX((Func_b50_from_thumb(Random(), 0x60)) + 0xc);
            p->py = FX((Random() & 0x3f) + 0x20);
            p->mx = 0;
            p->my = 0;
            p->aux = 0;

            for (j = 0; j < 24; j++) {
                *(s32 *)pb = (Random() & 0xf) + 0x30;
                InitMatrixStack();                          /* InitMatrixStack */
                MatrixRoll(Random() & 0xffff);   /* MatrixRoll(Random) */
                MatrixPitch(Random() & 0xffff);   /* MatrixPitch(Random) */
                MatrixYaw(Random() & 0xffff);   /* MatrixYaw(Random) */
                Func_8004a28(mtx);                       /* MatrixStore */
                pb  += 7;
                mtx += 0x30;
            }
        }

        STATE_BLITMODE(state)  = 2;       /* BLIT_FADE_DIV */
        STATE_BLITPARAM(state) = 0x32;
        REG_BG2CNT = 0x784;

        /* ---- Animation Segment 1 ---- */
        if ((*(s32 *)gKeyRepeat & 3) == 0) {
            int movement_xCoord = 0;
            int movement_yCoord = 0;

            for (frame = 0; frame <= 0xdb; frame++) {
                /* movement-pattern tile placement (frame < 0xd2) */
                if (frame <= 0xd1) {
                    if (frame == 0) {
                        movement_xCoord = movementPattern[0] * 0x100 + (u8)movementPattern[1];
                        movement_yCoord = movementPattern[2] * 0x100 + (u8)movementPattern[3];
                        movementPattern += 4;
                    } else {
                        movement_xCoord += (s8)movementPattern[0];
                        movement_yCoord += (s8)movementPattern[1];
                        movementPattern += 2;
                    }

                    {
                        int coords[3];
                        int tile_inc = 0;
                        int tile_y = movement_yCoord * FX(-1) + FX(64);
                        coords[1] = FX(255);              /* z fixed */
                        for (i = 0; i != 4; i++) {
                            int tile_x = movement_xCoord * FX(1) + FX(80);
                            void **sprites = (void **)(state + 0x77d8) + tile_inc;
                            for (j = 0; j != 3; j++) {
                                if (!(i == 3 && j == 2)) {
                                    coords[0] = (i == 3) ? tile_x + FX(32) : tile_x;
                                    coords[2] = tile_y;
                                    _UpdateSprite(sprites[0], coords,
                                                  ATALANTA_TILE_DIMENSIONS, 0);
                                }
                                tile_x += FX(32);
                                sprites++;
                            }
                            tile_inc += 3;
                            tile_y += FX(32);
                        }
                    }
                }

                if (frame == 0x30) {
                    STATE_SHAKE(state)  = 0x18;
                    STATE_SHAKE2(state) = 0;
                }

                /* spawn + move arrows */
                for (i = 0; i < 16; i++) {
                    int spawn = i * 8;
                    Particle3D *p;
                    int arrow_x, arrow_y;
                    byte *gfx; int x, y, w, h;

                    if (frame < spawn + 0x40)
                        continue;

                    p = STATE_PARTICLES(state) + i;
                    arrow_x = (p->px >> 16) + 2;
                    arrow_y = (p->py >> 16) + 2;

                    if (frame == spawn + 0x54)
                        _PlaySound(0xd4);             /* PlaySound */

                    if (frame >= spawn + 0x55) {
                        p->px += p->mx;
                        p->py += p->my;
                        p->mx += FX(-1);
                        p->my += FX(2);
                        (*draw2D[0])(dest, gBuffer + 0x16ac, arrow_x + 4, arrow_y - 0x28, 0x10, 0x15);
                        (*draw2D[0])(dest, gBuffer + 0x17fc, arrow_x - 0x10, arrow_y - 0x13, 0x1d, 0x23);
                        gfx = gBuffer + 0x1bf3; x = arrow_x - 0x14; y = arrow_y + 0x10; w = 0x15; h = 0x18;
                        (*draw2D[0])(dest, gfx, x, y, w, h);
                        continue;
                    }

                    if (frame < spawn + 0x50) {
                        u8 *mtx = ewram_2013800 + i * 0x120 + 0xe00;
                        u8 *pb  = gBuffer + i * 0xa8;
                        for (j = 0; j != 24; j++) {
                            if ((int)*(s32 *)pb > 0) {
                                vec3 in, out;
                                Func_8004a44(mtx);        /* MatrixLoad */
                                in.x = *(s32 *)pb;
                                Func_80e3944(&in, &out);  /* PhysMove */
                                out.x = (out.x >> 1) + arrow_x;
                                out.y = (out.y + arrow_y) + 0x10;
                                *(s32 *)pb -= 4;
                                (*draw2D[1])(dest, dest_00 + 0x3c, out.x - 2,
                                             (out.y - 0x10) + 0xb, 5, 10);
                            }
                            mtx += 0x30;
                            pb  += 7;
                        }
                        continue;
                    }

                    /* growing-burst frames: switch on (frame - (spawn+0x40)) */
                    switch (frame - (spawn + 0x40)) {
                    case 0x10:
                        gfx = gBuffer; x = arrow_x - 7; y = arrow_y - 0xe; w = 0xe; h = 0x1c;
                        break;
                    case 0x11:
                        gfx = gBuffer + 0x188; x = arrow_x - 0xb; y = arrow_y - 0x16; w = 0x17; h = 0x2c;
                        break;
                    case 0x12:
                        (*draw2D[0])(dest, gBuffer + 0x57c, arrow_x - 4, arrow_y - 0x1f, 0x14, 0x1e);
                        gfx = gBuffer + 0x7d4; x = arrow_x - 0x10; y = arrow_y - 1; w = 0x16; h = 0x21;
                        break;
                    case 0x13:
                        (*draw2D[0])(dest, gBuffer + 0xaaa, arrow_x + 1, arrow_y - 0x26, 0x12, 0x1b);
                        (*draw2D[0])(dest, gBuffer + 0xc90, arrow_x - 0xb, arrow_y - 0xb, 0x16, 0x16);
                        gfx = gBuffer + 0xe74; x = arrow_x - 0x13; y = arrow_y + 0xb; w = 0x13; h = 0x1c;
                        break;
                    case 0x14:
                        (*draw2D[0])(dest, gBuffer + 0x1088, arrow_x + 4, arrow_y - 0x28, 0x10, 0x17);
                        (*draw2D[0])(dest, gBuffer + 0x11f8, arrow_x - 0xa, arrow_y - 0x11, 0x17, 0x1c);
                        gfx = gBuffer + 0x147c; x = arrow_x - 0x14; y = arrow_y + 0xb; w = 0x14; h = 0x1c;
                        break;
                    default:
                        continue;
                    }
                    (*draw2D[0])(dest, gfx, x, y, w, h);
                }

                *(s32 *)(state + 0x7824) = 1; /* state->dirty = TRUE */
                WaitFrames(1);          /* WaitFrames(1) */
            }
        }

        /* ---- Segment 1 teardown ---- */
        StopTask(Func_80c90e4);       /* StopTask(Task_ScrollBG) */
        *(s32 *)(dest + 0x10) = 0;        /* BG_SCROLL_ENABLE = 0 */
        iwram_3001ad0_w[2] = (u16)originalBGCoords;  /* restore saved BG coord */
        Func_80d67dc(originalBGCoords);   /* RestoreBattleBG */

        /* delete the tile sprites (loop runs 9 times in GS1) */
        {
            void **sprites = (void **)(state + 0x77d8);
            for (i = 0; i != 9; i++)
                _DeleteSprite(*sprites++);   /* DeleteSprite */
        }

        /* ---- Segment 2 setup ---- */
        REG_BG2PA   = 0x80;
        REG_DISPCNT = 0x7741;
        LoadVFXFile(0xb4, gBuffer, 1, 0);  /* LoadVFXFile flare */

        /* init 0x20 flare particles */
        for (i = 0; i < 0x20; i++) {
            Particle3D *p = STATE_PARTICLES(state) + i;
            int slot = i % 6;     /* i % 6 */
            vec3 tpos;
            if (slot < (int)STATE_CONTEXT(state)->numTargets) {
                int yrand;
                Func_80e396c(STATE_CONTEXT(state)->targets[slot], &tpos);
                yrand = -((Random() & 0x1f) + 0x28);
                p->py = yrand;
                p->px = (tpos.x + (0x50 - yrand)) >> 1;   /* signed /2 of each, summed */
            } else {
                p->px = (Random() & 0x3f) + 0x50;
                p->py = -((Random() & 0x1f) + 0x28);
            }
            p->aux = -1;
        }

        /* ---- Segment 2: Flares ---- */
        for (frame = 0; frame < 0x58; frame++) {
            for (i = 0; i < 0x18; i++) {
                Particle3D *p = STATE_PARTICLES(state) + i;
                int flareLife = p->aux;

                if (!((i * 2) <= frame || frame > 0x28))
                    continue;

                if (flareLife < 0) {
                    int yy = p->py;
                    int x = 0x18;
                    if (yy > 0x38)
                        x = 0x50 - yy;
                    (*draw2D[0])(dest, gBuffer + 0x16ac, p->px + 4, yy - 0x28, 0x10, 0x15);
                    (*draw2D[0])(dest, gBuffer + 0x17fc, p->px - 0x10, p->py - 0x13, 0x1d, 0x23);
                    if (x > 0)
                        (*draw2D[0])(dest, gBuffer + 0x1bf3, p->px - 0x14, p->py + 0x10, 0x15, x);
                    p->px -= 6;
                    yy = p->py + 0xc;
                    p->py = yy;
                    if (yy > 0x4f) {
                        p->aux = 0;
                        STATE_SHAKE2(state) = 2;   /* state+0x77a8 */
                        _PlaySound(0x86);
                        {
                            int slot = i % 6;  /* i % 6 */
                            if (slot < (int)STATE_CONTEXT(state)->numTargets) {
                                Func_80d6888(STATE_CONTEXT(state)->targets[slot], 7, 5, slot, 8);
                                _SetBattleActorKnockback(STATE_CONTEXT(state)->targets[slot], 1);
                            }
                        }
                    }
                } else {
                    if (flareLife < 0x18) {
                        int idx = (flareLife < 0) ? (flareLife + 3) >> 2 : flareLife >> 2;
                        (*draw2D[i & 1])(dest,
                            gBuffer + Data_edeb2[idx],          /* gfx offset table */
                            (p->px - (Data_ede9f[idx] >> 1)) - 8,     /* width table */
                            (p->py + Data_edeab[idx]) - 0x28,         /* yoffset table */
                            Data_ede9f[idx],                          /* width */
                            Data_edea5[idx]);                         /* height table */
                        if (p->aux < 0xc) {
                            (*draw2D[0])(dest, gBuffer + 0x16ac, p->px + 4, p->py - 0x28, 0x10, 0x15);
                            (*draw2D[0])(dest, gBuffer + 0x17fc, p->px - 0x10, p->py - 0x13, 0x1d, 0x23);
                        }
                        flareLife = p->aux;
                    }
                    p->aux = flareLife + 1;
                }
            }

            UpdateScreenShake(4, 8);           /* UpdateScreenShake */
            Func_80cd52c();               /* ResetAllActors */
            *(s32 *)(state + 0x7824) = 1; /* state->dirty = TRUE */
            WaitFrames(1);              /* WaitFrames(1) */
        }

        /* ---- Final teardown ---- */
        StopTask(Task_BlitAnim);       /* StopTask(Task_BlitAnim) */
        gfree(0x2f);               /* gfree(draw2D_2) */
        gfree(0x2e);               /* gfree(draw2D_1) */
        AnimEnd();                   /* AnimEnd */
    }
}
