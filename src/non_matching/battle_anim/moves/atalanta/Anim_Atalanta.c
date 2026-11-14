/*
 * Non-matching clean C for Anim_Atalanta (all 87 relocations, 8-byte .rodata,
 * 0x78 stack frame, switch jump table, and particle/matrix logic match).
 *
 * Remaining diff (.text ref=0x944 vs new=0x998):
 *   08.loop strength-reduces `k = i * 3; mtx = ...; pb = ...` in the initial
 *   particle/matrix init loop and `state->sprites + tile_inc` in the 3x3 tile
 *   loop (and hoists `FX(movement_xCoord)`), creating extra call-crossing GIV
 *   pseudos that displace `state` from `fp` (r11) to `[sp, #0x30]`.
 */
#include "palette.h"

#define REG_DISPCNT  (*(volatile u16 *)0x04000000)
#define REG_BG2CNT   (*(volatile u16 *)0x0400000c)
#define REG_BG2PA    (*(volatile u16 *)0x04000020)
#define REG_BLDCNT   (*(volatile u16 *)0x04000050)
#define REG_BLDALPHA (*(volatile u16 *)0x04000052)

#define FX(n) ((n) << 16)

typedef union {
    s32 raw;
    struct {
        u16 lo;
        s16 hi;
    } half;
} Coord;

typedef struct {
    s32 x, y, z;
} vec3;

typedef struct {
    Coord px, py;
    s32 _08;
    s32 mx, my, mz;
    s32 aux;
} Particle3D;

typedef void (*Draw2DFn)(u8 *dst, void *gfx, int x, int y, int w, int h);

typedef struct {
    u32 anim, side, user, target, unknown10;
    s32 numTargets;
    u32 param, djinni, unknown20;
    s16 targets[5];
} AnimContext;

typedef struct {
    u8 buffer[0x7080];
    Particle3D particles[64];
    s32 blitMode, blitParam;
    u8 unknown7788[8];
    s32 scroll[4];
    u8 unknown77a0[8];
    s32 screenShakeFrames;
    u8 unknown77ac[8];
    s32 shake, shake2;
    u8 unknown77bc[0x1c];
    void *sprites[19];
    s32 dirty;
    AnimContext *context;
} MoveAnimState;

extern char _FILE_6a[];
extern char _FILE_a0[];
extern char _FILE_73[];
extern char _FILE_b4[];
extern char _FILE_3b[] __asm__("0x3b");
extern char _FILE_d2[] __asm__("0xd2");

extern u8 *iwram_3001f00;
extern u16 iwram_3001ad0[];
extern s32 gPhysVec[];
extern u32 gKeyRepeat;
extern u8 ewram_2013800[];
extern u8 gBuffer[];

extern u16 Data_ede48[];
extern u8 Data_ede9f[];
extern u8 Data_edea5[];
extern u8 Data_edeab[];
extern u16 Data_edeb2[];

extern void AnimStart(int prio);
extern void Func_80c9048(void);
extern int StartTask(void (*task)(void), unsigned int m);
extern int StopTask(void (*task)(void));
extern void Task_BlitAnim(void);
extern void Func_80c90e4(void);
extern void AnimTransitionOut(int a, int b);
extern void _AnimTransitionIn(int a, int file, int c);
extern void Func_80d6750(void *ctx);
extern void CreateSummonSprite(int a, int b, int c);
extern void *GetFile(int fileID);
extern void LoadVFXFile(int file, void *dst, int a, int b);
extern void *Func_8001af8(volatile u16 *dst, void *src, int len);
extern int BuildDraw2DFuncEx(int idx, int a, int b, int flags, int e);
extern void WaitFrames(int n);
extern unsigned Random(void);
extern void InitMatrixStack(void);
extern void MatrixRoll(int a);
extern void MatrixPitch(int a);
extern void MatrixYaw(int a);
extern void MatrixStore(void *m);
extern void MatrixLoad(void *m);
extern int Func_80e3944(vec3 *in, vec3 *out);
extern void _UpdateSprite(void *sprite, int *coords, const void *dims, int z);
extern void _PlaySound(int sfx);
extern void GetBattleActorPos2(int target, vec3 *out);
extern void SetBattleActorState(int t, int a, int b, int c, int d);
extern void _SetBattleActorKnockback(int t, int v);
extern void UpdateScreenShake(int a, int b);
extern void Func_80cd52c(void);
extern void Func_80d67dc(void);
extern void _DeleteSprite(void *sprite);
extern void gfree(int idx);
extern void AnimEnd(void);

static const int ATALANTA_TILE_DIMENSIONS[2] = { 0x10000, 0x10000 };

void Anim_Atalanta(AnimContext *context)
{
    u8 *workBuffer = iwram_3001f00;
    u8 *dest = *(u8 **)((u8 *)&iwram_3001f00 - 0x10);
    MoveAnimState *state = *(MoveAnimState **)((u8 *)&iwram_3001f00 - 0x14);
    signed char *movementPattern;
    int i, frame, j;
    u8 *dest_00 = *(u8 **)((u8 *)&iwram_3001f00 - 0x0c);
    u32 originalBGCoords = iwram_3001ad0[2];
    Draw2DFn draw2D[2];
    int movement_xCoord, movement_yCoord;
    int row, col;
    vec3 in, out;
    int coords[4];
    vec3 tpos;
    Particle3D *particle;

    state->context = context;

    AnimStart(0x2000);
    REG_BG2PA = 0x100;
    Func_80c9048();
    ((vu16 *)PALETTE_BG_ADDR)[0] = 0;
    ((vu16 *)PALETTE_BG_ADDR)[1] = 0;
    state->blitMode = 0;
    StartTask(Task_BlitAnim, 0x480);
    AnimTransitionOut(0, 0);
    Func_80d6750(state->context);
    CreateSummonSprite(9, 0x172, 1);

    LoadVFXFile((int)_FILE_6a, state->buffer, 1, 1);
    {
        void *palette = GetFile((int)_FILE_a0);
        void *(*copy)(volatile u16 *, void *, int) = Func_8001af8;
        copy((vu16 *)PALETTE_BG_ADDR, palette, 0x80);
    }
    LoadVFXFile((int)_FILE_73, dest_00, 0, 0);
    movementPattern = GetFile((int)_FILE_d2);

    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    BuildDraw2DFuncEx(0x2f, 7, 7, 3, 3);
    draw2D[0] = *(Draw2DFn *)((u8 *)&iwram_3001f00 + 8);
    draw2D[1] = *(Draw2DFn *)((u8 *)&iwram_3001f00 + 0xc);
    gPhysVec[4] = 0xf0;

    WaitFrames(1);
    _AnimTransitionIn(1, (int)_FILE_3b, 0);
    state->scroll[0] = 0;
    state->scroll[1] = 4;
    state->scroll[2] = -1;
    state->scroll[3] = 0;
    StartTask(Func_80c90e4, 0x480);
    *(s32 *)(workBuffer + 0x10) = 1;
    AnimTransitionOut(0, 1);
    REG_DISPCNT = 0x7741;
    REG_BG2PA = 0x80;
    REG_BLDALPHA = 0x1010;
    REG_BLDCNT = 0x3f44;

    movement_xCoord = 0;
    movement_yCoord = 0;

    for (i = 0, particle = state->particles; i != 16; i++, particle++) {
        int k;
        u8 *mtx;
        u8 *pb;

        particle->px.raw = FX((Random() % 0x60) + 0xc);
        particle->py.raw = FX((Random() & 0x3f) + 0x20);
        particle->mx = 0;
        particle->my = 0;
        particle->aux = 0;

        k = i * 3;
        mtx = ewram_2013800 + k * 0x180;
        pb = gBuffer + k * 0xe0;
        for (j = 0; j != 24; j++) {
            *(s32 *)pb = (Random() & 0xf) + 0x30;
            InitMatrixStack();
            MatrixRoll(Random() & 0xffff);
            MatrixPitch(Random() & 0xffff);
            MatrixYaw(Random() & 0xffff);
            MatrixStore(mtx);
            pb += 0x1c;
            mtx += 0x30;
        }
    }

    state->blitMode = 2;
    state->blitParam = 0x32;
    REG_BG2CNT = 0x784;

    for (frame = 0; frame != 0xdc && (gKeyRepeat & 3) == 0; frame++) {
        if (frame <= 0xd1) {
            int tile_inc;
            int tile_y;

            if (frame == 0) {
                movement_xCoord = (movementPattern[0] << 8) + (u8)movementPattern[1];
                movement_yCoord = (movementPattern[2] << 8) + (u8)movementPattern[3];
                movementPattern += 4;
            } else {
                movement_xCoord += movementPattern[0];
                movement_yCoord += movementPattern[1];
                movementPattern += 2;
            }

            coords[3] = 0;
            coords[1] = FX(255);
            tile_inc = 0;
            tile_y = FX(64) - FX(movement_yCoord);
            for (row = 0; row != 3; row++) {
                int tile_x = FX(movement_xCoord) + FX(80);
                void **sprites = state->sprites + tile_inc;
                for (col = 0; col != 3; col++) {
                    coords[0] = tile_x;
                    coords[2] = tile_y;
                    _UpdateSprite(*sprites++, coords, ATALANTA_TILE_DIMENSIONS, 0);
                    tile_x += FX(32);
                }
                tile_inc += 3;
                tile_y += FX(32);
            }
        }

        in.y = 0;
        in.z = 0;
        if (frame == 0x30) {
            state->shake = 0x18;
            state->shake2 = 0;
        }

        for (i = 0; i != 16; i++) {
            int spawn = i * 8;
            int start = spawn + 0x40;
            Particle3D *p;
            int arrow_x, arrow_y;

            if (frame < start)
                continue;

            p = state->particles + i;
            arrow_x = p->px.half.hi;
            arrow_y = p->py.half.hi;

            if (frame == spawn + 0x54)
                _PlaySound(0xd4);

            if (frame >= spawn + 0x55) {
                p->px.raw += p->mx;
                p->py.raw += p->my;
                p->mx -= 0x10000;
                p->my += 0x20000;
                (*draw2D[0])(dest, state->buffer + 0x16ac, arrow_x + 4, arrow_y - 0x28, 0x10, 0x15);
                (*draw2D[0])(dest, state->buffer + 0x17fc, arrow_x - 0x10, arrow_y - 0x13, 0x1d, 0x23);
                (*draw2D[0])(dest, state->buffer + 0x1bf3, arrow_x - 0x14, arrow_y + 0x10, 0x15, 0x18);
            } else if (frame >= spawn + 0x50) {
                switch (frame - start) {
                case 0x10:
                    (*draw2D[0])(dest, state->buffer, arrow_x - 7, arrow_y - 0xe, 0xe, 0x1c);
                    break;
                case 0x11:
                    (*draw2D[0])(dest, state->buffer + 0x188, arrow_x - 0xb, arrow_y - 0x16, 0x17, 0x2c);
                    break;
                case 0x12:
                    (*draw2D[0])(dest, state->buffer + 0x57c, arrow_x - 4, arrow_y - 0x1f, 0x14, 0x1e);
                    (*draw2D[0])(dest, state->buffer + 0x7d4, arrow_x - 0x10, arrow_y - 1, 0x16, 0x21);
                    break;
                case 0x13:
                    (*draw2D[0])(dest, state->buffer + 0xaaa, arrow_x + 1, arrow_y - 0x26, 0x12, 0x1b);
                    (*draw2D[0])(dest, state->buffer + 0xc90, arrow_x - 0xb, arrow_y - 0xb, 0x16, 0x16);
                    (*draw2D[0])(dest, state->buffer + 0xe74, arrow_x - 0x13, arrow_y + 0xb, 0x13, 0x1c);
                    break;
                case 0x14:
                    (*draw2D[0])(dest, state->buffer + 0x1088, arrow_x + 4, arrow_y - 0x28, 0x10, 0x17);
                    (*draw2D[0])(dest, state->buffer + 0x11f8, arrow_x - 0xa, arrow_y - 0x11, 0x17, 0x1c);
                    (*draw2D[0])(dest, state->buffer + 0x147c, arrow_x - 0x14, arrow_y + 0xb, 0x14, 0x1c);
                    break;
                }
            } else {
                int k = i * 3;
                u8 *mtx = ewram_2013800 + k * 0x180;
                u8 *pb = gBuffer + k * 0xe0;
                for (j = 0; j != 24; j++) {
                    if (*(s32 *)pb > 0) {
                        MatrixLoad(mtx);
                        in.x = *(s32 *)pb;
                        Func_80e3944(&in, &out);
                        out.x = (out.x >> 1) + arrow_x;
                        out.y = out.y + arrow_y + 0x10;
                        *(s32 *)pb -= 4;
                        (*draw2D[1])(dest, dest_00 + Data_ede48[4], out.x - 2, out.y - 5, 5, 10);
                    }
                    mtx += 0x30;
                    pb += 0x1c;
                }
            }
        }

        state->dirty = 1;
        WaitFrames(1);
    }

    StopTask(Func_80c90e4);
    *(s32 *)(workBuffer + 0x10) = 0;
    iwram_3001ad0[2] = originalBGCoords;
    Func_80d67dc();

    {
        void **sprites = state->sprites;
        for (i = 0; i != 9; i++)
            _DeleteSprite(*sprites++);
    }

    REG_BG2PA = 0x80;
    REG_DISPCNT = 0x7741;
    LoadVFXFile((int)_FILE_b4, gBuffer, 1, 0);

    for (i = 0, particle = state->particles; i != 0x20; i++, particle++) {
        int slot = i % 6;

        if (slot < state->context->numTargets) {
            int yrand;
            GetBattleActorPos2(state->context->targets[slot], &tpos);
            yrand = -((Random() & 0x1f) + 0x28);
            particle->py.raw = yrand;
            particle->px.raw = tpos.x / 2 + (0x50 - yrand) / 2;
        } else {
            particle->px.raw = (Random() & 0x3f) + 0x50;
            particle->py.raw = -((Random() & 0x1f) + 0x28);
        }
        particle->aux = -1;
    }

    for (frame = 0; frame != 0x58; frame++) {
        for (i = 0, particle = state->particles; i != 0x18; i++, particle++) {
            if (frame < i * 2 && frame <= 0x28)
                continue;

            if (particle->aux >= 0) {
                if (particle->aux < 0x18) {
                    int idx = particle->aux / 4;
                    (*draw2D[i & 1])(dest,
                        gBuffer + Data_edeb2[idx],
                        (particle->px.raw - (Data_ede9f[idx] >> 1)) - 8,
                        (particle->py.raw + Data_edeab[idx]) - 0x28,
                        Data_ede9f[idx],
                        Data_edea5[idx]);
                    if (particle->aux < 0xc) {
                        (*draw2D[0])(dest, state->buffer + 0x16ac, particle->px.raw + 4, particle->py.raw - 0x28, 0x10, 0x15);
                        (*draw2D[0])(dest, state->buffer + 0x17fc, particle->px.raw - 0x10, particle->py.raw - 0x13, 0x1d, 0x23);
                    }
                }
                particle->aux++;
            } else {
                int yy = particle->py.raw;
                int h = 0x18;
                if (yy > 0x38)
                    h -= yy - 0x38;
                (*draw2D[0])(dest, state->buffer + 0x16ac, particle->px.raw + 4, yy - 0x28, 0x10, 0x15);
                (*draw2D[0])(dest, state->buffer + 0x17fc, particle->px.raw - 0x10, particle->py.raw - 0x13, 0x1d, 0x23);
                if (h > 0)
                    (*draw2D[0])(dest, state->buffer + 0x1bf3, particle->px.raw - 0x14, particle->py.raw + 0x10, 0x15, h);
                particle->px.raw -= 6;
                particle->py.raw += 0xc;
                if (particle->py.raw > 0x4f) {
                    int slot;
                    particle->aux = 0;
                    state->screenShakeFrames = 2;
                    _PlaySound(0x86);
                    slot = i % 6;
                    if (slot < state->context->numTargets) {
                        SetBattleActorState(state->context->targets[slot], 7, 5, slot, 8);
                        _SetBattleActorKnockback(state->context->targets[slot], 1);
                    }
                }
            }
        }

        UpdateScreenShake(4, 8);
        Func_80cd52c();
        state->dirty = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
