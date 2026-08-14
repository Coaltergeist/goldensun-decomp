/* field/map.c -- consolidated TU. */
#include "nonmatching.h"

extern void CutsceneEnd();
extern int MapActor_GetActor();
extern int GetMapActorIndex();
extern unsigned int MapActor_GetSpriteID();
extern void Func_80922c4();
extern void MapActor_SetAnim();
extern void CutsceneWait();

INCLUDE_ASM("asm/field/map/rom_8d5dc_a.s");

extern void *FindMapActorEvent(int a, int b);
extern void CutsceneStart(void);
extern void MessageID(int id);
extern void ActorMessage(int a, int b);
extern int _call_via_r3(int a);

int CallMapEventType6(int arg0)
{
    int *event;
    int ret;

    event = (int *) FindMapActorEvent(6, arg0);
    ret = -1;
    if (event != 0 && event[2] != 0) {
        if (event[2] < 0x10000) {
            CutsceneStart();
            MessageID(event[2]);
            ActorMessage(ret, 0);
            ret = 0;
            CutsceneEnd();
        } else {
            _call_via_r3(arg0);
            ret = 0;
        }
    }
    return ret;
}

INCLUDE_ASM("asm/field/map/rom_8d5dc_c.s");

INCLUDE_ASM("asm/field/map/rom_8d9a4_a_a.s");

extern void _PlaySound(unsigned int arg0);
extern void _Actor_SetAnim(unsigned int arg0, unsigned int arg1);
extern void WaitFrames(unsigned int nframes);
extern unsigned int Func_808ef70(unsigned int arg0, unsigned int arg1);

unsigned int Func_808e078(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned char *actor;
    unsigned int ret;

    actor = (unsigned char *)MapActor_GetActor(arg1);
    ret = 0;
    if (actor != (unsigned char *)0) {
        _PlaySound(0x7c);
        _Actor_SetAnim((unsigned int)actor, 4);
        WaitFrames(0xc);
        ret = Func_808ef70(arg0, arg2);
    }
    return ret;
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_a_c_a_a_a.s");

extern unsigned int FindFieldMoveEvent(unsigned int, unsigned int, unsigned int *);

unsigned int Func_808e96c(unsigned int arg0)
{
    unsigned int local;
    unsigned int r3;
    r3 = FindFieldMoveEvent(0x70000005, (unsigned short)arg0, &local);
    return ((unsigned int)(-(int)r3 | (int)r3)) >> 31;
}

extern int FindFieldItemEvent(unsigned short);

unsigned int Func_808e990(unsigned short a)
{
    int r3;
    r3 = FindFieldItemEvent(a);
    return (unsigned int)(-r3 | r3) >> 31;
}

extern int _Func_8011f54(int a, int b, int c);

void Func_808e9a8(unsigned int arg0)
{
    unsigned char *p;
    int r;

    p = (unsigned char *)arg0;
    r = _Func_8011f54(0, *(int *)(p + 8), *(int *)(p + 0x10));
    *(int *)(p + 0xc) = r;
    *(int *)(p + 0x14) = r;
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_a_c_a_c_c.s");

extern unsigned char *iwram_3001ebc;

int GetMapActorIndex(param_1) unsigned int param_1;
{
    unsigned char *p;
    int i;
    int r4;

    p = iwram_3001ebc + 0x11c;
    r4 = -1;
    i = 0;
    if (p[4] == param_1) {
        r4 = 0;
    } else {
        do {
            i++;
            p += 8;
            if (i > 9)
                break;
        } while (p[4] != param_1);
        if (i <= 9)
            r4 = i;
    }
    return r4;
}

void Func_808ec4c(void) {}

extern unsigned int iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void Func_808ec50(void) {
    int idx;
    unsigned char *base;

    idx = GetMapActorIndex();
    if (idx != -1) {
        base = (unsigned char *)iwram_3001ebc__a1;
        if (*(unsigned int *)(base + (idx << 3) + 0x11c) != 0) {
            _Actor_SetAnim(*(unsigned int *)(base + (idx << 3) + 0x11c), 5);
        }
        _PlaySound(0x7d);
        WaitFrames(0xc);
    }
}

extern void _Actor_SetSpriteFlags();
extern unsigned int iwram_3001ebc__a2 __asm__("iwram_3001ebc");

void Func_808ec8c(void) {
    int idx;
    unsigned char *base;
    unsigned char *actor;

    idx = GetMapActorIndex();
    if (idx != -1) {
        base = (unsigned char *)iwram_3001ebc__a2;
        actor = *(unsigned char **)(base + (idx << 3) + 0x11c);
        WaitFrames(0x12);
        if (actor != 0) {
            _Actor_SetAnim(actor, 7);
        }
        _PlaySound(0x92);
        if (actor != 0) {
            *(unsigned int *)(actor + 0x28) = 0x80000;
            _Actor_SetSpriteFlags(actor, 1);
        }
    }
}

extern unsigned int iwram_3001ebc__a3 __asm__("iwram_3001ebc");

void Func_808ece0(unsigned int param_1) {
    int idx;
    unsigned char *base;
    unsigned int val;

    idx = GetMapActorIndex(param_1);
    if (idx != -1) {
        base = (unsigned char *)iwram_3001ebc__a3;
        val = *(unsigned int *)(base + (idx << 3) + 0x11c);
        if (val != 0) {
            _Actor_SetAnim(val, 4);
        }
        _PlaySound(0x7c);
        WaitFrames(0xc);
    }
}

extern unsigned int iwram_3001ebc__a4 __asm__("iwram_3001ebc");

void Func_808ed1c(void) {
    int idx;
    unsigned char *base;
    int val;

    idx = GetMapActorIndex();
    if (idx != -1) {
        base = (unsigned char *)iwram_3001ebc__a4;
        val = *(unsigned int *)(base + (idx << 3) + 0x11c);
        if (val != 0) {
            _Actor_SetAnim(val, 2);
        }
    }
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_c_a_c_c_c_a.s");

extern unsigned int iwram_3001ebc__a5 __asm__("iwram_3001ebc");

void Func_808ed78(void) {
    int res;
    unsigned char *base;

    res = GetMapActorIndex();
    if (res != -1) {
        base = (unsigned char *)(*(unsigned int *)&iwram_3001ebc__a5 + (res << 3) + 0x11c);
        if (*(unsigned int *)base != 0) {
            *(unsigned char *)(*(unsigned int *)base + 0x54) = 0;
        }
    }
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_c_a_c_c_c_c_a.s");

extern void _DeleteActor(void *actor);

void DeleteMapActorPtr(void *actor)
{
	if (actor)
		_DeleteActor(actor);
}

extern unsigned char gState[];
extern void *GetFieldActor(unsigned int actorID);
extern void _Actor_TravelTo(void *actor, int a1, int a2, int a3);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char L9e75c[] __asm__(".L9e75c");

void Func_808f0d8(unsigned int arg0)
{
    unsigned char *r6 = (unsigned char *)arg0;

    if (r6 != 0)
    {
        unsigned short *s;
        unsigned char *r5;
        unsigned char zero;
        unsigned short facing;

        s = (unsigned short *)gState;
        r5 = (unsigned char *)GetFieldActor(*(unsigned int *)&s[0xfa]);

        *(int *)(r6 + 0x34) = 0x80 << 9;
        *(int *)(r6 + 0x30) = 0x80 << 10;
        zero = 0;
        r6[0x55] = zero;

        _Actor_TravelTo(r6, *(int *)(r5 + 8), *(int *)(r5 + 0xc) + (0x90 << 14), *(int *)(r5 + 0x10));
        WaitFrames(3);
        _Actor_SetAnim(r5, 0x1c);
        _Actor_SetScript(r6, L9e75c);

        facing = 0x80 << 7;
        *(unsigned short *)(r5 + 6) = facing;
    }
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_c_a_c_c_c_c_c_c.s");

extern unsigned int iwram_3001ebc__a6 __asm__("iwram_3001ebc");

unsigned int Func_808f304(void) {
    unsigned int r3;
    unsigned int r2;
    unsigned int r0;

    r3 = iwram_3001ebc__a6;
    r0 = 0;
    if (r3 != 0) {
        r2 = 0xcb8;
        r3 += r2;
        r2 = 0;
        r3 = *(short *)((char *)r3 + r2);
        r0 = -r3;
        r0 |= r3;
        r0 >>= 31;
    }
    return r0;
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_c_c_a_a.s");

extern void Func_80042c8(void (*)(void));
extern void Task_ScreenWindowTransition(void);
extern void Func_808f498(void);

void Func_808feb0(void) {
    Func_80042c8(Task_ScreenWindowTransition);
    Func_80042c8(Func_808f498);
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_c_c_a_c.s");

extern unsigned char *iwram_3001e70;

void Func_8090378(unsigned int a, unsigned int b, unsigned int c) {
    unsigned char *p;
    p = iwram_3001e70;
    if (p) {
        if (c)
            *(unsigned short *)(p + 0x14) &= 0xfdff;
        if (b)
            *(unsigned short *)(p + 0x14) &= 0xfbff;
        if (a)
            *(unsigned short *)(p + 0x14) &= 0xf7ff;
    }
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_c_c_c_a_a_a_a.s");

#include "dma.h"
extern void *galloc_ewram(int index, unsigned int size);
extern void Func_80907b0(int a0);
extern void Task_Transition300(void);

void Func_8090824(unsigned int arg0)
{
    void *p;

    p = galloc_ewram(0x1f, 0xa8 << 3);
    DMA3_CLEAR(p, 0xa8 << 3);
    Func_80907b0(0);
    *(unsigned short *)((unsigned int)p + (0xa5 << 3)) = arg0;
    *(unsigned short *)((unsigned int)p + 0x52a) = 0;
    StartTask(Task_Transition300, 0xc8 << 4);
    WaitFrames(0x78);
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_c_c_c_a_a_a_c_a.s");

#include "dma.h"
#include "task.h"
extern void Func_8090a5c(unsigned int, unsigned int, unsigned int, unsigned int);
extern void Func_80908e0(void);
#define PALETTE_BG  ((void *)0x05000000)
#define PALETTE_OBJ ((void *)0x05000200)

void Func_8091174(void)
{
    unsigned short *p;

    p = galloc_ewram(0x20, 0x2a04);
    DMA3_FILL(p, 0, 0x2a04);
    DMA3_COPY(PALETTE_BG, p, 0x1c0);
    DMA3_COPY(PALETTE_OBJ, p + 0xe0, 0x1c0);
    Func_8090a5c(0x10000, (unsigned int)p, (unsigned int)p + 0xe00, 0);
    StartTask(Func_80908e0, 0xc8f);
}

extern void gfree(int index);

void Func_80911e8(void) {
    StopTask(Func_80908e0);
    gfree(0x20);
}

extern unsigned char iwram_3001ed0[];

void Func_8091200(unsigned int arg0, unsigned int arg1) {
    unsigned int r4;
    unsigned int r1;
    unsigned int r3;

    r4 = arg1;
    r1 = *(unsigned int *)iwram_3001ed0;
    if (r1 != 0) {
        r3 = 0xe0;
        r3 = r3 << 4;
        Func_8090a5c(arg0, r1, r1 + r3, r4);
    }
}


void Func_8091220(unsigned int arg0, unsigned int arg1) {
    unsigned int r4;
    unsigned int r1val;

    r4 = arg1;
    r1val = *(unsigned int *)iwram_3001ed0;
    if (r1val != 0) {
        Func_8090a5c(arg0, r1val, r1val + (0xe0 << 2), r4);
    }
}

extern unsigned short *iwram_3001ed0__a2 __asm__("iwram_3001ed0");

void Func_8091240(int arg0)
{
    unsigned short *p;
    p = iwram_3001ed0__a2;
    if (p)
        *p = arg0;
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_c_c_c_a_c_a_a.s");

int Func_8091294(int arg0) {
    if (arg0 > 0x1f)
        arg0 = 0x1f;
    else if (arg0 < 0)
        arg0 = 0;
    return arg0;
}

int Func_80912a8(int arg0) {
    int limit;

    limit = 0xf8 << 7;
    if (arg0 > limit)
        arg0 = limit;
    return arg0;
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_c_c_c_a_c_c.s");

extern void Func_80912b8(void);

void Func_8091540(void) {
    Func_80042c8(Func_80912b8);
}

extern void Func_800439c(void *p);

void Func_8091550(void) {
    Func_800439c(Func_80912b8);
}

INCLUDE_ASM("asm/field/map/rom_8d9a4_c_c_c_c_c.s");


unsigned int MapActor_GetSpriteID(actorID) unsigned int actorID; {
    unsigned int v0;
    unsigned int v3;

    v0 = GetFieldActor(actorID);
    v3 = *(unsigned char *)((char *)v0 + 0x54);
    if (v3 != 1) {
        return 0;
    }
    v0 = *(unsigned int *)((char *)v0 + 0x50);
    if (v0 == 0) {
        return 0;
    }
    v0 = *(unsigned int *)((char *)v0 + 0x28);
    if (v0 == 0) {
        return 0;
    }
    return *(short *)v0;
}

INCLUDE_ASM("asm/field/map/rom_91584_a_c_a_a.s");

extern unsigned int GetSpriteVoiceEntry(void);

unsigned int MapActor_GetName(void) {
    MapActor_GetSpriteID();
    return *(unsigned char *)(GetSpriteVoiceEntry() + 3);
}

