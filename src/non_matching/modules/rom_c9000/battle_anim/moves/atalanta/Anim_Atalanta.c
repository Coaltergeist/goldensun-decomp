/* Adapted from Salenewt GS2 re_Atalanta.c. */
#define REG_BG2PA (*(volatile u16 *)0x04000020)

#define REG_BG2CNT (*(volatile u16 *)0x0400000c)

#define REG_DISPCNT (*(volatile u16 *)0x04000000)

#define REG_BLDALPHA (*(volatile u16 *)0x04000052)

#define REG_BLDCNT (*(volatile u16 *)0x04000050)

#define PALETTE_BG  ((volatile u16 *)0x05000000)

#define OFFSET_CHECK(field, offset) typedef char field##_offset_check[(unsigned int)&((MoveAnimState *)0)->field == offset ? 1 : -1]

#define STATE_BLITMODE(s) ((s)->blitMode)

#define STATE_BLITPARAM(s) ((s)->blitParam)

#define STATE_SCROLL0(s) ((s)->scroll[0])

#define STATE_SCROLL1(s) ((s)->scroll[1])

#define STATE_SCROLL2(s) ((s)->scroll[2])

#define STATE_SCROLL3(s) ((s)->scroll[3])

#define STATE_SHAKE(s) ((s)->shake)

#define STATE_SHAKE2(s) ((s)->shake2)

#define STATE_PARTICLES(s) ((s)->particles)

#define STATE_CONTEXT(s) ((s)->context)

#define FX(n) ((n) * 65536)

extern char _FILE_6a[];

extern char _FILE_a0[];

extern char _FILE_73[];

extern char _FILE_b4[];

typedef unsigned char  u8;

typedef unsigned short u16;

typedef unsigned int   u32;

typedef signed char    s8;

typedef signed short   s16;

typedef signed int     s32;

typedef u8  byte;

typedef struct { s32 x, y, z; } vec3;

typedef struct {
    s32 px, py;
    s32 _08;
    s32 mx, my, mz;
    s32 aux;
} Particle3D;

typedef void (*Draw2DFn)(u8 *dst, void *gfx, int x, int y, int w, int h);

extern u8 *iwram_3001f00;

extern u16 iwram_3001ad0[];

extern s32 gPhysVec[];

extern u32 gKeyRepeat;

extern u8 ewram_2013800[];

extern u8 gBuffer[];

extern void  AnimStart(int prio);

extern void  Func_80c9048(void);

extern int StartTask(void (*task)(void), unsigned int m);

extern int StopTask(void (*task)(void));

extern void  Task_BlitAnim(void);

extern void  Func_80c90e4(void);

extern void  AnimTransitionOut(int a, int b);

extern void  _AnimTransitionIn(int a, int file, int c);

extern void  Func_80d6750(void *ctx);

extern void  CreateSummonSprite(int a, int b, int c);

extern void *GetFile(int fileID);

extern void  LoadVFXFile(int file, void *dst, int a, int b);

extern void *Func_8001af8(volatile u16 *dst, void *src, int len);

extern void  BuildDraw2DFuncEx(int idx, int a, int b, int flags, int e);

extern void  WaitFrames(int n);

extern unsigned   Random(void);

extern void  InitMatrixStack(void);

extern void  MatrixRoll(int a);

extern void  MatrixPitch(int a);

extern void  MatrixYaw(int a);

extern void  MatrixStore(void *m);

extern void  MatrixLoad(void *m);

extern void  Func_80e3944(vec3 *in, vec3 *out);

extern void  _UpdateSprite(void *sprite, int *coords, void *dims, int z);

extern void  _PlaySound(int sfx);

extern void  GetBattleActorPos2(int target, vec3 *out);

extern void  SetBattleActorState(int t, int a, int b, int c, int d);

extern void  _SetBattleActorKnockback(int t, int v);

extern void  UpdateScreenShake(int a, int b);

extern void  Func_80cd52c(void);

extern void Func_80d67dc(void);

extern void  _DeleteSprite(void *sprite);

extern void  gfree(int idx);

extern void  AnimEnd(void);

extern int   ATALANTA_TILE_DIMENSIONS[] __asm__(".Leeb40");

extern u16 Data_ede48[];

extern u8  Data_ede9f[];

extern u8  Data_edea5[];

extern u8  Data_edeab[];

extern u16 Data_edeb2[];

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

typedef char particle_size_check[sizeof(Particle3D) == 0x1c ? 1 : -1];

OFFSET_CHECK(particles, 0x7080);

OFFSET_CHECK(blitMode, 0x7780);

OFFSET_CHECK(scroll, 0x7790);

OFFSET_CHECK(screenShakeFrames, 0x77a8);

OFFSET_CHECK(sprites, 0x77d8);

OFFSET_CHECK(dirty, 0x7824);

OFFSET_CHECK(context, 0x7828);

void Anim_Atalanta(AnimContext *context)
{
    u8 *workBuffer = iwram_3001f00;
    u8 *dest     = *(u8 **)((u8 *)&iwram_3001f00 - 0x10);
    MoveAnimState *state = *(MoveAnimState **)((u8 *)&iwram_3001f00 - 0x14);
    u8 *dest_00  = *(u8 **)((u8 *)&iwram_3001f00 - 0x0c);
    u32 originalBGCoords = iwram_3001ad0[2];
    Draw2DFn draw2D[2];
    int frame, i, j;
    vec3 in, out, tpos;
    Particle3D *particle;

    STATE_CONTEXT(state) = context;

    AnimStart(0x2000);
    REG_BG2PA = 0x100;
    Func_80c9048();
    PALETTE_BG[0] = 0;
    PALETTE_BG[1] = 0;
    STATE_BLITMODE(state) = 0;
    StartTask(Task_BlitAnim, 0x480);
    AnimTransitionOut(0, 0);
    Func_80d6750(STATE_CONTEXT(state));
    CreateSummonSprite(9, 0x172, 1);

    LoadVFXFile((int)_FILE_6a, state->buffer, 1, 1);
    { void *palette = GetFile((int)_FILE_a0);
      void *(*copy)(volatile u16 *, void *, int) = Func_8001af8;
      copy(PALETTE_BG, palette, 0x80); }
    LoadVFXFile((int)_FILE_73, dest_00, 0, 0);
    {
        s8 *movementPattern = GetFile(0xd2);

        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
        BuildDraw2DFuncEx(0x2f, 7, 7, 3, 3);
        draw2D[0] = *(Draw2DFn *)((u8 *)&iwram_3001f00 + 8);
        draw2D[1] = *(Draw2DFn *)((u8 *)&iwram_3001f00 + 0xc);
        gPhysVec[4] = 0xf0;

        WaitFrames(1);
        _AnimTransitionIn(1, 0x3b, 0);
        STATE_SCROLL0(state) = 0;
        STATE_SCROLL1(state) = 4;
        STATE_SCROLL2(state) = -1;
        STATE_SCROLL3(state) = 0;
        StartTask(Func_80c90e4, 0x480);
        *(s32 *)(workBuffer + 0x10) = 1;
        AnimTransitionOut(0, 1);
        REG_DISPCNT  = 0x7741;
        REG_BG2PA    = 0x80;
        REG_BLDALPHA = 0x1010;
        REG_BLDCNT   = 0x3f44;

        for (i = 0, particle = STATE_PARTICLES(state); i != 16; i++, particle++) {
            Particle3D *p = particle;
            u8 *mtx = ewram_2013800 + i * 0x480;
            u8 *pb  = gBuffer + i * 0x2a0;

            p->px = FX(((Random() % 0x60)) + 0xc);
            p->py = FX((Random() & 0x3f) + 0x20);
            p->mx = 0;
            p->my = 0;
            p->aux = 0;

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

        STATE_BLITMODE(state)  = 2;
        STATE_BLITPARAM(state) = 0x32;
        REG_BG2CNT = 0x784;

        {
            int movement_xCoord = 0;
            int movement_yCoord = 0;

            for (frame = 0; frame != 0xdc && (gKeyRepeat & 3) == 0; frame++) {

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
                        int coords[4];
                        int tile_inc = 0;
                        int tile_y = movement_yCoord * FX(-1) + FX(64);
                        coords[3] = 0;
                        coords[1] = FX(255);
                        for (i = 0; i != 3; i++) {
                            int tile_x = movement_xCoord * FX(1) + FX(80);
                            void **sprites = state->sprites + tile_inc;
                            for (j = 0; j != 3; j++) {
                                {
                                    coords[0] = tile_x;
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

                in.y = 0;
                in.z = 0;
                if (frame == 0x30) {
                    STATE_SHAKE(state)  = 0x18;
                    STATE_SHAKE2(state) = 0;
                }

                for (i = 0; i != 16; i++) {
                    int spawn = i * 8;
                    Particle3D *p;
                    int arrow_x, arrow_y;
                    byte *gfx; int x, y, w, h;

                    if (frame < spawn + 0x40)
                        continue;

                    p = STATE_PARTICLES(state) + i;
                    arrow_x = *(s16 *)((u8 *)&p->px + 2);
                    arrow_y = *(s16 *)((u8 *)&p->py + 2);

                    if (frame == spawn + 0x54)
                        _PlaySound(0xd4);

                    if (frame >= spawn + 0x55) {
                        p->px += p->mx;
                        p->py += p->my;
                        p->mx += FX(-1);
                        p->my += 0x8000;
                        (*draw2D[0])(dest, state->buffer + 0x16ac, arrow_x + 4, arrow_y - 0x28, 0x10, 0x15);
                        (*draw2D[0])(dest, state->buffer + 0x17fc, arrow_x - 0x10, arrow_y - 0x13, 0x1d, 0x23);
                        gfx = state->buffer + 0x1bf3; x = arrow_x - 0x14; y = arrow_y + 0x10; w = 0x15; h = 0x18;
                        (*draw2D[0])(dest, gfx, x, y, w, h);
                        continue;
                    }

                    if (frame >= spawn + 0x50) {
                    switch (frame - (spawn + 0x40)) {
                    case 0x10:
                        gfx = state->buffer; x = arrow_x - 7; y = arrow_y - 0xe; w = 0xe; h = 0x1c;
                        break;
                    case 0x11:
                        gfx = state->buffer + 0x188; x = arrow_x - 0xb; y = arrow_y - 0x16; w = 0x17; h = 0x2c;
                        break;
                    case 0x12:
                        (*draw2D[0])(dest, state->buffer + 0x57c, arrow_x - 4, arrow_y - 0x1f, 0x14, 0x1e);
                        gfx = state->buffer + 0x7d4; x = arrow_x - 0x10; y = arrow_y - 1; w = 0x16; h = 0x21;
                        break;
                    case 0x13:
                        (*draw2D[0])(dest, state->buffer + 0xaaa, arrow_x + 1, arrow_y - 0x26, 0x12, 0x1b);
                        (*draw2D[0])(dest, state->buffer + 0xc90, arrow_x - 0xb, arrow_y - 0xb, 0x16, 0x16);
                        gfx = state->buffer + 0xe74; x = arrow_x - 0x13; y = arrow_y + 0xb; w = 0x13; h = 0x1c;
                        break;
                    case 0x14:
                        (*draw2D[0])(dest, state->buffer + 0x1088, arrow_x + 4, arrow_y - 0x28, 0x10, 0x17);
                        (*draw2D[0])(dest, state->buffer + 0x11f8, arrow_x - 0xa, arrow_y - 0x11, 0x17, 0x1c);
                        gfx = state->buffer + 0x147c; x = arrow_x - 0x14; y = arrow_y + 0xb; w = 0x14; h = 0x1c;
                        break;
                    default:
                        continue;
                    }
                    (*draw2D[0])(dest, gfx, x, y, w, h);
                    } else {

                        u8 *mtx = ewram_2013800 + i * 0x480;
                        u8 *pb  = gBuffer + i * 0x2a0;
                        for (j = 0; j != 24; j++) {
                            if ((int)*(s32 *)pb > 0) {

                                MatrixLoad(mtx);
                                in.x = *(s32 *)pb;
                                Func_80e3944(&in, &out);
                                out.x = (out.x >> 1) + arrow_x;
                                out.y = (out.y + arrow_y) + 0x10;
                                *(s32 *)pb -= 4;
                                (*draw2D[1])(dest, dest_00 + Data_ede48[4], out.x - 2,
                                             (out.y - 0x10) + 0xb, 5, 10);
                            }
                            mtx += 0x30;
                            pb += 0x1c;
                        }

                                        }
                }

                state->dirty = 1;
                WaitFrames(1);
            }
        }

        StopTask(Func_80c90e4);
        *(s32 *)(workBuffer + 0x10) = 0;
        iwram_3001ad0[2] = (u16)originalBGCoords;
        Func_80d67dc();

        {
            void **sprites = state->sprites;
            for (i = 0; i != 9; i++)
                _DeleteSprite(*sprites++);
        }

        REG_BG2PA   = 0x80;
        REG_DISPCNT = 0x7741;
        LoadVFXFile((int)_FILE_b4, gBuffer, 1, 0);

        for (i = 0, particle = STATE_PARTICLES(state); i != 0x20; i++, particle++) {
            Particle3D *p = particle;
            int slot = i % 6;

            if (slot < (int)STATE_CONTEXT(state)->numTargets) {
                int yrand;
                GetBattleActorPos2(STATE_CONTEXT(state)->targets[slot], &tpos);
                yrand = -((Random() & 0x1f) + 0x28);
                p->py = yrand;
                p->px = tpos.x / 2 + (0x50 - yrand) / 2;
            } else {
                p->px = (Random() & 0x3f) + 0x50;
                p->py = -((Random() & 0x1f) + 0x28);
            }
            p->aux = -1;
        }

        for (frame = 0; frame != 0x58; frame++) {
            for (i = 0, particle = STATE_PARTICLES(state); i != 0x18; i++, particle++) {
                Particle3D *p = particle;
                int flareLife = p->aux;

                if (!((i * 2) <= frame || frame > 0x28))
                    continue;

                if (flareLife < 0) {
                    int yy = p->py;
                    int x = 0x18;
                    if (yy > 0x38)
                        x = 0x50 - yy;
                    (*draw2D[0])(dest, state->buffer + 0x16ac, p->px + 4, yy - 0x28, 0x10, 0x15);
                    (*draw2D[0])(dest, state->buffer + 0x17fc, p->px - 0x10, p->py - 0x13, 0x1d, 0x23);
                    if (x > 0)
                        (*draw2D[0])(dest, state->buffer + 0x1bf3, p->px - 0x14, p->py + 0x10, 0x15, x);
                    p->px -= 6;
                    yy = p->py + 0xc;
                    p->py = yy;
                    if (yy > 0x4f) {
                        p->aux = 0;
                        state->screenShakeFrames = 2;
                        _PlaySound(0x86);
                        {
                            int slot = i % 6;
                            if (slot < (int)STATE_CONTEXT(state)->numTargets) {
                                SetBattleActorState(STATE_CONTEXT(state)->targets[slot], 7, 5, slot, 8);
                                _SetBattleActorKnockback(STATE_CONTEXT(state)->targets[slot], 1);
                            }
                        }
                    }
                } else {
                    if (flareLife < 0x18) {
                        int idx = (flareLife < 0) ? (flareLife + 3) >> 2 : flareLife >> 2;
                        (*draw2D[i & 1])(dest,
                            gBuffer + Data_edeb2[idx],
                            (p->px - (Data_ede9f[idx] >> 1)) - 8,
                            (p->py + Data_edeab[idx]) - 0x28,
                            Data_ede9f[idx],
                            Data_edea5[idx]);
                        if (p->aux < 0xc) {
                            (*draw2D[0])(dest, state->buffer + 0x16ac, p->px + 4, p->py - 0x28, 0x10, 0x15);
                            (*draw2D[0])(dest, state->buffer + 0x17fc, p->px - 0x10, p->py - 0x13, 0x1d, 0x23);
                        }
                        flareLife = p->aux;
                    }
                    p->aux = flareLife + 1;
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
}
