/* Anim_SpiderWeb (GS1) = Anim_SpiderWeb @ 0x080CCEBC
 * Defined in: goldensun/asm/rom_c9000/rom_cc5d8.s (cluster, lines 990-1249)
 *
 * Ported from Salenewt GS2 re_SpiderWeb.c, re-derived against the GS1 .s.
 * Judge: tools/judge.sh goldensun/src/non_matching/rom_c9000__rom_ccebc.c \
 *          Anim_SpiderWeb goldensun/asm/rom_c9000/rom_cc5d8.s
 *
 * RE complete; residual diff is reg-alloc / scheduling / prologue base-share
 * (permuter territory) plus the 0x59 pooled-constant (FP#9; small-const
 * call-argument pooling; see camelot-gcc/README.md scoreboard).
 *
 * Func_ -> friendly name map:
 *   AnimStart AnimStart         Func_80e396c GetBattleActorPos2
 *   LoadVFXFile LoadVFXFile       StartTask StartTask
 *   StopTask StopTask          _PlaySound PlaySound (ARM veneer)
 *   _Func_80bd7dc SetDamageSFX     BuildDraw2DFuncEx BuildDraw2DFuncEx
 *   gfree gfree             Func_80d6888 BattleActor_SetState
 *   Func_80cd52c ResetAllActors    WaitFrames WaitFrames
 *   AnimEnd AnimEnd           Task_BlitAnim Task_BlitAnim
 */

typedef unsigned char  u8;
typedef unsigned short u16;
typedef unsigned int   u32;
typedef signed short   s16;
typedef signed int     s32;

typedef struct { s32 x, y, z; } vec3;

typedef struct {
    u8  _00[0x14];
    u32 numTargets;        /* 0x14 */
    u8  _18[0x24 - 0x18];
    s16 targets[8];        /* 0x24 */
} AnimContext;

typedef void (*Draw2DFn)(u8 *dst, void *gfx, int x, int y, int w, int h);

/* gPtrs members (iwram). renderbuffer (0x3001ef0) is the base gcc shares;
 * anim.move sits 4 bytes below it; draw2D_1 is referenced as its own symbol. */
extern u8       *iwram_3001ef0;   /* gPtrs.renderbuffer  @ 0x03001EF0 */
extern Draw2DFn  iwram_3001f08;   /* gPtrs.draw2D_1      @ 0x03001F08 */

/* MMIO */
extern volatile u16 REG_BG2PA;    /* 0x04000020 */
extern volatile u32 REG_BG2X;     /* 0x04000028 */
extern volatile u16 REG_BLDALPHA; /* 0x04000052 */

/* engine (raw symbol names so relocs match the expected .o) */
extern void AnimStart(int prio);
extern void Func_80e396c(int target, vec3 *out);
extern void LoadVFXFile(int file, void *dst, int a, int b);
extern void StartTask(void (*task)(void), int mode);
extern void StopTask(void (*task)(void));
extern void _PlaySound(int sfx);
extern void _Func_80bd7dc(int sfx);
extern void BuildDraw2DFuncEx(int idx, int a, int b, int flags, int e);
extern void gfree(int idx);
extern void Func_80d6888(int t, int color, int sanim, int idx, int dur);
extern void Func_80cd52c(void);
extern void WaitFrames(int n);
extern void AnimEnd(void);
extern void Task_BlitAnim(void);   /* Task_BlitAnim */

#define STATE_BLITMODE(s)  (*(s32 *)((u8 *)(s) + 0x7780))
#define STATE_BLITPARAM(s) (*(s32 *)((u8 *)(s) + 0x7784))
#define STATE_DIRTY(s)     (*(s32 *)((u8 *)(s) + 0x7824))
#define STATE_CONTEXT(s)   (*(AnimContext **)((u8 *)(s) + 0x7828))

void Anim_SpiderWeb(AnimContext *context)
{
    void *state    = *(void **)((u8 *)&iwram_3001ef0 - 4);  /* gPtrs.anim.move */
    u8   *renderbuf = iwram_3001ef0;                         /* gPtrs.renderbuffer */
    vec3 posA, posB;
    int frame, i;

    STATE_CONTEXT(state) = context;
    AnimStart(2);                          /* AnimStart(BG_PRIORITY_MASK2) */

    REG_BG2PA = 0x100;
    REG_BLDALPHA = 0x1000;

    Func_80e396c(STATE_CONTEXT(state)->targets[0], &posA);
    Func_80e396c(STATE_CONTEXT(state)->targets[STATE_CONTEXT(state)->numTargets - 1],
                 &posB);
    posA.x += (posB.x - posA.x) / 2;          /* midpoint of first & last target */
    REG_BG2X = (0x40 - posA.x) << 8;

    LoadVFXFile(0x59, state, 1, 1);          /* LoadVFXFile(FILE_VFX_SPIDER_WEB,..,T,T) */
    STATE_BLITMODE(state) = 1;                /* BLIT_CLEAR */
    STATE_BLITPARAM(state) = 0;
    StartTask(Task_BlitAnim, 0x480);        /* StartTask(Task_BlitAnim, TASK_VBLANK) */
    _PlaySound(0x8f);                      /* PlaySound(SFX_BREAK) */

    for (frame = 0; frame != 0x3f; frame++) {
        if (frame < 9)
            REG_BLDALPHA = (frame << 1) | 0x1000;
        if (frame > 0x35)
            REG_BLDALPHA = (0x7c - (frame << 1)) | 0x1000;

        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
        iwram_3001f08(renderbuf, state, 0x21, 0x29, 0x20, 0x20);
        gfree(0x2e);
        BuildDraw2DFuncEx(0x2e, 7, 7, 7, 1);
        iwram_3001f08(renderbuf, state, 0x40, 0x29, 0x20, 0x20);
        gfree(0x2e);
        BuildDraw2DFuncEx(0x2e, 7, 7, 0xb, 1);
        iwram_3001f08(renderbuf, state, 0x21, 0x48, 0x20, 0x20);
        gfree(0x2e);
        BuildDraw2DFuncEx(0x2e, 7, 7, 0xf, 1);
        iwram_3001f08(renderbuf, state, 0x40, 0x48, 0x20, 0x20);
        gfree(0x2e);

        if (frame == 0x20)
            _Func_80bd7dc(0x8f);              /* SetDamageSFX(SFX_BREAK) */

        for (i = 0; i != STATE_CONTEXT(state)->numTargets; i++) {
            if (frame == 0xa)
                Func_80d6888(STATE_CONTEXT(state)->targets[i], 7, -1, i, 8);
        }

        Func_80cd52c();                       /* ResetAllActors */
        STATE_DIRTY(state) = 1;               /* state->dirty = TRUE */
        WaitFrames(1);                      /* WaitFrames(1) */
    }

    StopTask(Task_BlitAnim);               /* StopTask(Task_BlitAnim) */
    AnimEnd();                           /* AnimEnd */
}
