/* Anim_Unused_SabreRain (GS1) = Func_80cb4ec @ 0x080CB4EC
 * Defined in: goldensun/asm/rom_c9000/rom_cb1a4.s (cluster, lines 382-749)
 *
 * First-draft decompilation, re-derived against the GS1 .s. NOTE: the GS1
 * version diverges substantially from Salenewt GS2 re_DaggerRain.c:
 *   - particle pos.y uses the spawn-loop index (0x18 - i/4), not motionX>>2.
 *   - the dagger draw is TABLE-DRIVEN: gfx offset / width / height come from
 *     three rodata tables indexed by abs(motion.x)>>17, with a -4 height
 *     adjustment once frame >= j*4+0x19. (GS2 used a computed offset and a
 *     fixed 0x20x0x20.)
 * Parked in non_matching: those tables are file-local .L rodata labels with
 * no aliases, so this TU data relocs cannot match the original without
 * aliasing them, and the FILE id (0x78) loads from the pool (FP#9;
 * small-const call-argument pooling; see camelot-gcc/README.md scoreboard).
 *
 * Func_ -> friendly name map:
 *   Func_80cd594 AnimStart           Func_80ed408 BuildDraw2DFuncEx
 *   Func_80e0524 LoadVFXFile         StartTask StartTask
 *   Func_8004278 StopTask            Func_8004458 Random
 *   Func_b50_from_thumb umod         Func_80e396c GetBattleActorPos2
 *   Func_80d6888 BattleActor_SetState  Func_80e155c UpdateScreenShake
 *   Func_80cd52c ResetAllActors      Func_80030f8 WaitFrames
 *   Func_80cdbc0 AnimEnd             Func_8002dd8 gfree
 *   _Func_80f9080 PlaySound          Func_80cd260 Task_BlitAnim
 */

typedef unsigned char  u8;
typedef unsigned short u16;
typedef unsigned int   u32;
typedef signed short   s16;
typedef signed int     s32;

typedef struct { s32 x, y, z; } vec3;
typedef struct { vec3 pos; vec3 motion; s32 aux; } Particle3D;  /* 0x1c */

typedef struct {
    u8  _00[0x14];
    u32 numTargets;        /* 0x14 */
    u8  _18[0x24 - 0x18];
    s16 targets[8];        /* 0x24 */
} AnimContext;

typedef void (*Draw2DFn)(u8 *dst, void *gfx, int x, int y, int w, int h);

/* gPtrs @ 0x03001EEC */
typedef struct {
    void    *anim_move;        /* 0x00  (0x3001EEC) -> "state" */
    u8      *renderbuffer;     /* 0x04  (0x3001EF0) */
    u8       _08[0x1c - 0x08];
    Draw2DFn draw2D_1;         /* 0x1c  (0x3001F08) */
    Draw2DFn draw2D_2;         /* 0x20  (0x3001F0C) */
} GPtrs;
#define gPtrs (*(GPtrs *)0x03001EEC)

/* MMIO */
extern volatile u16 REG_BG2PA;     /* 0x04000020 */
extern volatile u32 REG_BG2X;      /* 0x04000028 */
extern volatile u16 REG_BLDCNT;    /* 0x04000050 */
extern volatile u16 REG_BLDALPHA;  /* 0x04000052 */

/* Dagger gfx/size tables (GS1 rodata; file-local .L labels in the original) */
extern const u8  Dagger_Width[];   /* .Ledf7f @ 0x080EDF7F */
extern const u8  Dagger_Height[];  /* .Ledf83 @ 0x080EDF83 */
extern const u16 Dagger_GfxOff[];  /* .Ledf88 @ 0x080EDF88 */

/* engine (raw symbol names so call relocs match) */
extern void Func_80cd594(int prio);
extern void Func_80ed408(int idx, int a, int b, int flags, int e);
extern void Func_80e0524(int file, void *dst, int a, int b);
extern void StartTask(void (*task)(void), int mode);
extern void Func_8004278(void (*task)(void));
extern int  Func_8004458(void);
extern u32  Func_b50_from_thumb(u32 a, u32 b);
extern void Func_80e396c(int target, vec3 *out);
extern void Func_80d6888(int t, int color, int sanim, int idx, int dur);
extern void Func_80e155c(int x, int y);
extern void Func_80cd52c(void);
extern void Func_80030f8(int n);
extern void Func_80cdbc0(void);
extern void Func_8002dd8(int idx);
extern void _Func_80f9080(int sfx);
extern void Func_80cd260(void);   /* Task_BlitAnim */

#define STATE_BLITMODE(s)  (*(s32 *)((u8 *)(s) + 0x7780))
#define STATE_BLITPARAM(s) (*(s32 *)((u8 *)(s) + 0x7784))
#define STATE_SHAKE(s)     (*(s32 *)((u8 *)(s) + 0x77a8))
#define STATE_DIRTY(s)     (*(s32 *)((u8 *)(s) + 0x7824))
#define STATE_CONTEXT(s)   (*(AnimContext **)((u8 *)(s) + 0x7828))
#define STATE_PARTICLES(s) ((Particle3D *)((u8 *)(s) + 0x7080))

void Func_80cb4ec(AnimContext *context)
{
    void     *state    = gPtrs.anim_move;
    u8       *renderbuf = gPtrs.renderbuffer;
    Draw2DFn  draw2D[2];
    vec3      targetPos;
    Particle3D *p;
    int frame, i, j;

    STATE_CONTEXT(state) = context;
    Func_80cd594(1);                       /* AnimStart(BG_PRIORITY_MASK1) */

    REG_BG2PA = 0x100;
    REG_BLDALPHA = 0x1000;

    Func_80ed408(0x2e, 7, 7, 3, 1);        /* BuildDraw2DFuncEx(draw2D_1, ...XYCLIP) */
    draw2D[0] = gPtrs.draw2D_1;
    Func_80ed408(0x2f, 7, 7, 7, 1);        /* BuildDraw2DFuncEx(draw2D_2, ...XFLIP|XYCLIP) */
    draw2D[1] = gPtrs.draw2D_2;

    Func_80e0524(0x78, state, 1, 1);       /* LoadVFXFile(FILE_VFX_SABRE_DANCE,..,T,T) */
    STATE_BLITMODE(state) = 1;             /* BLIT_CLEAR */
    STATE_BLITPARAM(state) = 0;
    StartTask(Func_80cd260, 0x480);     /* StartTask(Task_BlitAnim, TASK_VBLANK) */

    Func_80e396c(STATE_CONTEXT(state)->targets[0], &targetPos);
    REG_BG2X = (0x40 - targetPos.x) << 8;

    /* Spawn the 0x40 daggers */
    p = STATE_PARTICLES(state);
    for (i = 0; i != 0x40; i++, p++) {
        u32 x = Func_b50_from_thumb(Func_8004458(), 0x60) + 0x10;
        int motionX;
        if      (x < 0x2c) motionX = 3;
        else if (x < 0x34) motionX = 2;
        else if (x < 0x3c) motionX = 1;
        else if (x < 0x44) motionX = 0;
        else if (x < 0x4c) motionX = -1;
        else if (x < 0x54) motionX = -2;
        else               motionX = -3;
        p->pos.x = x << 16;
        p->pos.y = (0x18 - i / 4) << 16;
        p->motion.x = motionX << 0x11;
        p->motion.y = 0x80000;
    }

    _Func_80f9080(0xd4);                   /* PlaySound(SFX_ENERGY_FLASH_2) */

    for (frame = 0; frame != 0x78; frame++) {
        if (frame <= 0x10) {
            REG_BLDALPHA = frame | 0x1000;
            if (frame == 0x10)
                REG_BLDCNT = 0;
        }
        if (frame > 0x67) {
            REG_BLDALPHA = (0x78 - frame) | 0x1000;
            if (frame == 0x68)
                REG_BLDCNT = 0x3f44;
        }

        /* Draw/advance the 0x10 daggers, high index first */
        p = STATE_PARTICLES(state) + 0xf;
        for (j = 0xf; j != -1; j--, p--) {
            int mx = p->motion.x;
            u32 idx = (u32)((mx < 0) ? -mx : mx) >> 17;
            u16 gfx = Dagger_GfxOff[idx];
            u8  w = Dagger_Width[idx];
            u8  h = Dagger_Height[idx];
            int drawX = (s16)(p->pos.x >> 16) - (w >> 1);
            int drawY = (s16)(p->pos.y >> 16) - (h >> 1);
            Draw2DFn fn = draw2D[(u32)mx >> 31];

            if (frame < j * 4 + 0x19) {
                fn(renderbuf, (u8 *)state + gfx, drawX, drawY, w, h);
                if (frame >= j * 4 + 0x10) {
                    p->pos.x += p->motion.x;
                    p->pos.y += p->motion.y;
                }
            } else {
                fn(renderbuf, (u8 *)state + gfx, drawX, drawY, w, h - 4);
            }
        }

        if ((u32)(frame - 0x17) <= 0x40 && (frame & 3) == 0) {
            Func_80d6888(STATE_CONTEXT(state)->targets[0], 7, 5, 0, 2);
            STATE_SHAKE(state) = 1;
            if ((frame & 7) == 0)
                _Func_80f9080(0x85);       /* PlaySound(SFX_ATTACK) */
        }

        Func_80e155c(8, 8);                /* UpdateScreenShake(8, 8) */
        Func_80cd52c();                    /* ResetAllActors */
        STATE_DIRTY(state) = 1;
        Func_80030f8(1);                   /* WaitFrames(1) */
    }

    Func_8004278(Func_80cd260);            /* StopTask(Task_BlitAnim) */
    Func_8002dd8(0x2f);                    /* gfree(draw2D_2) */
    Func_8002dd8(0x2e);                    /* gfree(draw2D_1) */
    Func_80cdbc0();                        /* AnimEnd */
}
