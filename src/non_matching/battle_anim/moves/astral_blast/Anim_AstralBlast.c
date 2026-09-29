#include "anim.h"

#include "actor.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct AstralBolt {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 unk18;
};

struct AstralBlastState {
               u8 pad_0000[0x7080];
               struct AstralBolt bolts[3];
               u8 pad_70d4[0x7780 - 0x70d4];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

static const vec3_t AstralArcOffsets[] = {
    { 0, 0x300000, 0 },
    { 0, 0x1c0000, 0 },
};

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001e80;

extern u8 gBuffer[];

extern const u16 Data_ede48[];

extern char _FILE_79[], _FILE_73[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void DecompressLZ(const void *, void *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Task_BlitAnim(void);

extern struct Actor **_GetBattleActor(int);

extern void _Actor_SetAnim(struct Actor *, int);

extern void _Actor_SetAnimSpeed(struct Actor *, int);

extern void _Actor_Stop(struct Actor *);

extern void _Actor_TravelTo(struct Actor *, int, int, int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void MatrixTranslatev(void *);

extern void MatrixPush(void);

extern void MatrixPop(void);

extern void MatrixRoll(int);

extern void MatrixYaw(int);

extern void MatrixScalev(s32 *);

extern int Func_80e3944(const vec3_t *, s32 *);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_AstralBlast(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct AstralBlastState *state = (struct AstralBlastState *)*slots++;
    u8 *render = *slots;
    u8 *graphics = baseSlots[2];
    u8 *camera = baseSlots[-27];
    struct Actor *self, *user, *target;
    struct AstralBolt *p, *node, *a, *b;
    DrawFunc draw;
    int frame, i, j, k, t, base, size, maxDepth, depth, scale;
    s32 vec[3];
    s32 origin[3];
    s32 screen[3];

    self = *_GetBattleActor(context->user);
    state->context = context;
    AnimStart(1);
    {
        void *file = GetFile((int)_FILE_79);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    DecompressLZ(GetFile((int)_FILE_73), graphics);
    _Actor_SetAnim(self, 2);
    _Actor_SetAnimSpeed(self, 0x30);
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    state->blitMode = 2;
    draw = (DrawFunc)baseSlots[7];
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);

    user = *_GetBattleActor(state->context->user);
    target = *_GetBattleActor((s16)state->context->targets[0]);
    p = state->bolts;
    for (i = 0; i != 3; i++) {
        p->x = user->pos.x;
        p->y = user->pos.y + 0x280000;
        p->z = user->pos.z;
        if (i == 0)
            p->vx = (target->pos.x - p->x) / 12;
        else
            p->vx = (target->pos.x * 2 - p->x) / 12;
        p->vy = (target->pos.y - p->y + 0x280000) / 12;
        p->vz = (target->pos.z - p->z) / 12;
        p->unk18 = 0;
        p++;
    }

    for (frame = 0; frame != 60; frame++) {
        if (frame < 48) {
            u8 *cam = iwram_3001e80;
            int delta = 0x80;
            if (frame > 39)
                delta = 0x300 - frame * 16;
            if (state->context->side == 0)
                *(u16 *)(cam + 0x36) -= delta;
            else
                *(u16 *)(cam + 0x36) += delta;
        }
        for (i = 0; i != 3; i++) {
            if (frame < i * 12)
                continue;
            p = &state->bolts[i];
            t = frame - i * 12;
            size = t / 4 + 2;
            if (size > 10)
                size = 10;
            InitMatrixStack();
            MatrixSetLook(camera, camera + 0xc);
            MatrixTranslatev(p);
            maxDepth = 0;
            scale = (t << 12) + 0x1000;
            base = i * 10;
            node = &((struct AstralBolt *)gBuffer)[base];
            for (j = 0; j != 10; j++) {
                MatrixPush();
                MatrixRoll(t << 10);
                MatrixYaw(0x4000);
                vec[0] = scale;
                if (scale > 0x10000)
                    vec[0] = 0x10000;
                vec[1] = vec[2] = vec[0];
                MatrixScalev(vec);
                MatrixRoll(j * 0x199a);
                depth = Func_80e3944(&AstralArcOffsets[j & 1], screen);
                if (maxDepth < depth)
                    maxDepth = depth;
                screen[0] >>= 1;
                node->vx = screen[0] + origin[0];
                node->vy = screen[1] + origin[1];
                node->vx = screen[0];
                node->vy = screen[1];
                MatrixPop();
                node++;
            }
            if (maxDepth < 400000) {
                for (j = 0; j != 10; ) {
                    a = &((struct AstralBolt *)gBuffer)[j + base];
                    j++;
                    b = &((struct AstralBolt *)gBuffer)[j % 10 + base];
                    for (k = 0; k != 16; k++) {
                        int x = a->vx + (b->vx - a->vx) * k / 16;
                        int y = a->vy + (b->vy - a->vy) * k / 16;
                        draw(render, graphics + Data_ede48[size - 1],
                             x - size / 2, y - size, size, size * 2);
                    }
                }
            }
            p->x += p->vx;
            p->y += p->vy;
            p->z += p->vz;
            if (frame == i * 12 + i + 10) {
                target->accel = 0x20000;
                target->speed = 0x80000;
                target->motion.y = 0x50000;
                target->gravity = 0xab85;
                target->__unk5A = 0;
                _Actor_Stop(target);
                if (target->pos.x < 0)
                    _Actor_TravelTo(target, target->pos.x - 0x280000, 0, target->pos.z);
                else
                    _Actor_TravelTo(target, target->pos.x + 0x280000, 0, target->pos.z);
                if (i == 2) {
                    _Func_80bd7dc(0x86);
                } else {
                    _PlaySound(0x86);
                    SetBattleActorState((s16)state->context->targets[0], 7, 5, 0, 8);
                }
                state->unk77A8 = 4;
            }
        }
        UpdateScreenShake(8, 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
