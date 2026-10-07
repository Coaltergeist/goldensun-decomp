#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

static const u8 CondemnX[2][7] = {
    { 0x0a, 0x1e, 0x00, 0x00, 0x00, 0x06, 0x34 },
    { 0x3c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
};

static const u8 CondemnY[2][7] = {
    { 0x00, 0x14, 0x02, 0x02, 0x22, 0x40, 0x44 },
    { 0x00, 0x09, 0x04, 0x04, 0x04, 0x04, 0x04 },
};

struct CondemnState {
               u8 graphics[0x6980];
               s32 scroll[160];
               u8 pad_6c00[0x7780 - 0x6c00];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

struct CondemnActor {
    u8 pad_00[0x08];
    s32 x;
    s32 pad_0c;
    s32 z;
    u8 pad_14[0x28 - 0x14];
    s32 unk28;
    u8 pad_2c[0x30 - 0x2c];
    s32 unk30;
    s32 unk34;
    u8 pad_38[0x48 - 0x38];
    s32 unk48;
    u8 pad_4c[0x58 - 0x4c];
    u8 unk58;
    u8 pad_59;
    u8 unk5a;
};

struct CondemnPoint {
    s32 x, y;
};

struct CondemnPosition {
    s32 x, y, z;
};

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001e74[];

extern u8 gBuffer[];

extern u8 ewram_2012d80[];

extern u8 ewram_2014b00[];

extern u8 ewram_20158d2[];

extern char _FILE_ab[], _FILE_ac[];

extern void Func_80cdb24(int);

extern void AnimEnd(void);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void DecompressLZ(const void *, void *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Func_80dbb9c(void);

extern void Task_BlitAnim(void);

extern void *Func_80008d8(void *, int, int);

extern void _PlaySound(int);

extern void GetBattleActorPos2(int, struct CondemnPosition *);

extern struct CondemnActor **_GetBattleActor(int);

extern void _Actor_TravelTo(void *, int, int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _AnimTransitionIn(int, int, int);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Condemn(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct CondemnState *state = (struct CondemnState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    struct CondemnPosition pos;
    struct CondemnActor *actor;
    int frame, i, x, y, amp, visible, base;
    struct CondemnPoint row;
    struct CondemnPoint cur;
    s32 *scroll;
    u8 *file;

    state->context = context;
    Func_80cdb24(0);
    (*(vu16 *)0x04000020) = 0x100;
    (*(vu16 *)0x04000052) = 0x1010;
    {
        void *(*copy)(void *, const void *, unsigned int);
        file = GetFile((int)_FILE_ab);
        copy = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
        file += 0x80;
        DecompressLZ(file, state);
        file = GetFile((int)_FILE_ac);
        file += 0x80;
        DecompressLZ(file, gBuffer);
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
    pair[0] = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 1);
    pair[1] = (DrawFunc)baseSlots[8];
    StartTask(Func_80dbb9c, 0x480);
    state->blitMode = 1;
    state->blitParam = 0;
    StartTask(Task_BlitAnim, 0x480);
    visible = 1;
    if (state->context->side == 1)
        cur.x = -0x50 << 16;
    else
        cur.x = 0x70 << 16;
    cur.y = -0x20 << 16;

    for (frame = 0; frame != 0x84; frame++) {
        x = (cur.x >> 16) + ((sin(frame << 9) << 4) >> 16) + 0x30;
        y = (cur.y >> 16) + ((cos(frame << 9) << 2) >> 16) + 0x10;
        if (frame == 0x58)
            _PlaySound(0x86);
        if (frame == 0x20) {
            if (state->context->side == 1)
                cur.x = -0x20 << 16;
            else
                cur.x = 0x48 << 16;
            cur.y = 0x18 << 16;
            visible = 0;
        }
        if (frame == 0x21) {
            (*(vu16 *)0x04000052) = 0x1010;
            visible = 1;
        }
        if (frame == 0x40) {
            GetBattleActorPos2((s16)state->context->targets[0], &pos);
            if (state->context->side == 1)
                cur.x = (pos.x - 0x80) << 16;
            else
                cur.x = (pos.x - 0x40) << 16;
            cur.y = 0;
            visible = 0;
        }
        if (frame == 0x41) {
            (*(vu16 *)0x04000052) = 0x1010;
            visible = 1;
        }

        scroll = state->scroll;
        amp = 0;
        if (frame < 0x20) {
            if (frame >= 0x10) {
                amp = frame * 2 - 0x20;
                (*(vu16 *)0x04000052) = (0x1f - frame) | 0x1000;
            }
        } else if (frame < 0x40) {
            if (frame >= 0x30) {
                amp = frame * 2 - 0x60;
                (*(vu16 *)0x04000052) = (0x3f - frame) | 0x1000;
            }
        }
        if (amp < 0)
            amp = 0;
        base = (6 - x) << 8;
        for (i = 0; i != 160; i++)
            *scroll++ = base - ((amp * sin((frame + i) << 11)) >> 10);

        if (visible) {
            if (state->context->side == 0) {
                row.x = 0;
                row.y = 0;
            } else {
                row.x = 1;
                row.y = 0;
            }
            if (frame < 0x58) {
                pair[state->context->side](render, state->graphics,
                    CondemnX[row.x][0], CondemnY[row.y][0] + y, 0x39, 0x62);
            } else {
                if (frame < 0x5c)
                    pair[state->context->side](render, state->graphics,
                        CondemnX[row.x][0], CondemnY[row.y][0] + y, 0x39, 0x62);
                pair[state->context->side](render, state->graphics + 0x15d2,
                    CondemnX[row.x][1], CondemnY[row.y][1] + y, 0x63, 0x45);
                if (frame == 0x58 || frame == 0x59) {
                    void *(*clear)(void *, int, int) = Func_80008d8;
                    clear(render, 0x4000, 0x3f3f3f3f);
                }
                if (frame == 0x5a || frame == 0x5b)
                    pair[state->context->side](render, state->graphics + 0x3081,
                        CondemnX[row.x][2], CondemnY[row.y][2] + y, 0x80, 0x5b);
                if (frame == 0x5c || frame == 0x5d)
                    pair[state->context->side](render, gBuffer,
                        CondemnX[row.x][3], CondemnY[row.y][3] + y, 0x80, 0x5b);
                if (frame == 0x5e || frame == 0x5f)
                    pair[state->context->side](render, ewram_2012d80,
                        CondemnX[row.x][4], CondemnY[row.y][4] + y, 0x80, 0x3b);
                if (frame == 0x60 || frame == 0x61)
                    pair[state->context->side](render, ewram_2014b00,
                        CondemnX[row.x][5], CondemnY[row.y][5] + y, 0x7a, 0x1d);
                if (frame == 0x62 || frame == 0x63)
                    pair[state->context->side](render, ewram_20158d2,
                        CondemnX[row.x][6], CondemnY[row.y][6] + y, 0x4c, 0x19);
            }
        }

        if (frame == 0x58) {
            actor = *_GetBattleActor((s16)state->context->targets[0]);
            actor->unk28 = 0x10000;
            actor->unk30 = actor->unk34 = 0x20000;
            actor->unk48 = 0;
            actor->unk5a = 0;
            actor->unk58 = 0;
            _Actor_TravelTo(actor, actor->x * 2, 0, actor->z);
            SetBattleActorState((s16)state->context->targets[0], -1, 5, -1, 0);
        }
        if (frame == 0x78) {
            actor = *_GetBattleActor((s16)state->context->targets[0]);
            actor->unk48 = 0xab85;
        }
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    StopTask(Func_80dbb9c);
    _AnimTransitionIn(1, *(u16 *)(*iwram_3001e74 + 0x648), 0x18);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
