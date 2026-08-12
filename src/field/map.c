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

INCLUDE_ASM("asm/field/map/rom_91584_a_c_a_c_a.s");

extern unsigned char iwram_3001ebc__a7[] __asm__("iwram_3001ebc");

void CutsceneWait(unsigned int arg0) {
    unsigned int *base;
    unsigned int r3;

    base = *(unsigned int **)iwram_3001ebc__a7;
    r3 = *(unsigned int *)((unsigned char *)base + 0xe6 * 2);
    if (r3 == 0 && arg0 != 0) {
        WaitFrames(arg0);
    }
}

INCLUDE_ASM("asm/field/map/rom_91584_a_c_a_c_c.s");

extern void Task_Cutscene(void);
extern void SetCameraTarget(unsigned int, unsigned char);
extern void *_CheckLure(void);
extern unsigned int gState__a1 __asm__("gState");

void CutsceneEnd(void) {
    unsigned int r3;

    StopTask(Task_Cutscene);
    r3 = (unsigned int)&gState__a1;
    r3 += 0xfa << 1;
    SetCameraTarget(*(unsigned int *)r3, 1);
    _CheckLure();
}

void Func_8091778(void) {}
void Func_809177c(void) {}

extern void Func_809177c(void);
extern void InitMapActors(unsigned int);
extern unsigned int gState__a2 __asm__("gState");

void Func_8091780(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;
    unsigned int r2;

    r5 = arg0;
    Func_809177c();
    InitMapActors(r5);
    WaitFrames(1);
    r3 = (unsigned int)&gState__a2;
    r2 = 0xfa;
    r2 <<= 1;
    r3 += r2;
    GetFieldActor(*(unsigned int *)r3);
}

extern int FindMapActorSlot(void);
extern void LoadMapActors(void *info, int index);

void LoadFieldActors(void *actors)
{
	LoadMapActors(actors, FindMapActorSlot());
}

extern unsigned int iwram_3001ebc__a8 __asm__("iwram_3001ebc");

void SetMapEvents(unsigned int arg0) {
    unsigned int *ptr = (unsigned int *)iwram_3001ebc__a8;
    ptr[4] = arg0;
}

extern void _GetUnit(void);
extern void _AddPartyMember(unsigned int);
extern void _Func_8021390(unsigned int, unsigned int);

void Func_80917d0(unsigned int arg0, unsigned int arg1)
{
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    r6 = arg1;
    _GetUnit();
    _AddPartyMember(r5);
    if (r6 != 0) {
        _Func_8021390(r5, r6);
    }
}

extern void _Func_8021488(unsigned int, unsigned int);

void Func_80917f4(unsigned int arg0, unsigned int arg1)
{
	unsigned int r5;
	unsigned int r6;

	r6 = arg1;
	r5 = arg0;
	_AddPartyMember(r5);
	_AddPartyMember(r6);
	_Func_8021488(r5, r6);
}

unsigned int Func_8091814(unsigned int arg0)
{
    int r5;
    unsigned int r6;

    r5 = (arg0 >> 10) & 0xf;
    r6 = arg0 & 0x3ff;
    if (r5 > 7)
        return -1;
    if (_GetFlag(r5) == 0)
        return -2;
    if (_HasMove(r5, r6) == 0)
        return -3;
    return 0;
}

INCLUDE_ASM("asm/field/map/rom_91584_c_a_c_c_c_c.s");

void Func_8091c3c(void) {}
void Func_8091c40(void) {}

INCLUDE_ASM("asm/field/map/rom_91584_c_c_a_a_a_a.s");

extern int _YesNoMenu(int a, int b, int c, int d);

int Func_8091d84(int a) {
    return _YesNoMenu(a, 0, 0, 0);
}

/* LearnInnateMove = LearnInnateMove @ 0x08091D94
 *
 * Sieve decompilation with the single FP#9 fix applied: the 0x1e message ID is
 * the absolute symbol MSG_LEARN_INNATE_MOVE (message.h / message.sym), following
 * the file_table.h convention. The ((int)&_MSG_*) macro forces gcc-2.96 to
 * materialize it from the literal pool, matching the ROM `ldr r0, =...` (where
 * stock gcc would emit an inline `mov`). See FP9_PLAN.md / COMPILER_NOTES.md
 * (FP#9). Original model output (literal 0x1e) preserved in the sibling .response.
 */
#include "message.h"

extern void _GiveInnateMove(void);
extern void _Func_8019908(unsigned int, unsigned int);
extern void _Func_801776c(unsigned int, unsigned int);

void LearnInnateMove(unsigned int pc, unsigned int move) {
    unsigned int r5;
    unsigned int r6;

    r6 = move;
    r5 = pc;
    _GiveInnateMove();
    _PlaySound(0x53);
    _Func_8019908(r5, 1);
    _Func_8019908(r6, 4);
    _Func_801776c(MSG_LEARN_INNATE_MOVE, 3);
}

extern void ScreenTransitionIn(int, int);
extern unsigned char iwram_3001ebc__a9[] __asm__("iwram_3001ebc");

void MapTransitionIn(void)
{
  int new_var;
  unsigned char *r5;
  unsigned char *r3;
  int new_var2;
  int r2;
  unsigned short *new_var3;
  r5 = *((unsigned char **) iwram_3001ebc__a9);
  r2 = 0xe0 << 1;
  r3 = r5 + r2;
  r2 += 8;
  new_var = (new_var2 = -r2);
  ScreenTransitionIn(*((int *) r3), *((int *) (r5 - new_var)));
  new_var3 = (unsigned short *) (r5 + (0xe3 << 1));
  *new_var3 = (new_var = 1);
}

extern unsigned char iwram_3001ebc__a10[] __asm__("iwram_3001ebc");
extern void ScreenTransitionOut(int, int);

void MapTransitionOut(void)
{
  unsigned short *new_var;
  unsigned char *r5 = *((unsigned char **) iwram_3001ebc__a10);
  unsigned short v;
  ScreenTransitionOut(*((int *) (r5 + 0x1c0)), *((int *) (r5 + 0x1c8)));
  new_var = (unsigned short *) (r5 + 0x1c6);
  v = 0;
  *new_var = v;
}

extern unsigned int *iwram_3001ebc__a11 __asm__("iwram_3001ebc");

void WaitMapTransition(void) {
    WaitFrames(*(unsigned int *)((char *)iwram_3001ebc__a11 + 0x1c8));
}

/* SetDestMap @ 0x08091e3c  (was Func_8091e3c; renamed by the weekend alias pass)
 * [asm/rom_8a000/rom_91584_c_c_a_a_c_c_a.s]
 *
 * Twin of SetRespawnMap (landed src/rom_8a000/rom_91584_c_c_a_a_c_c_b.c) with
 * gState__a2 offsets 0xe0/0xe1 instead of 0xe2/0xe3; same q/v/s staging: q burns
 * r2 as offset scratch and dies, v (pooled 0x3e7) reuses r2, then gState__a2
 * reuses it again; any other order lets gcc CSE the second offset.
 */
extern unsigned int iwram_3001ebc__a12 __asm__("iwram_3001ebc");

void SetDestMap(unsigned short map, unsigned short door)
{
    unsigned char *p = (unsigned char *)iwram_3001ebc__a12;
    unsigned short *q = (unsigned short *)(p + 0xb8 * 2);
    unsigned short v = 0x3e7;
    unsigned short *s;

    *q = v;
    s = (unsigned short *)gState;
    s[0xe0] = map;
    s[0xe1] = door;
}

/* SetRespawnMap @ 0x08091e6c  (was Func_8091e6c; renamed by the weekend alias pass)
 * [asm/rom_8a000/rom_91584_c_c_a_a_c_c.s]
 *
 * *(u16*)(*iwram_3001ebc__a12 + 0xb8*2) = 0x3e7;
 * *(u16*)(gState + 0xe2*2) = map;
 * *(u16*)(gState + 0xe3*2) = door;
 * Seed's offsets were correct; it used the wrong base symbol (ewram_2000240).
 * The asm base is gState. iwram_3001ebc__a12 holds a pointer (ldr; ldr [r3]).
 *
 * Diff-driven fix (diag 2026-06-10): byte-pointer constant arithmetic folded
 * gState+0x1c4 into a single pooled word (then strh [r3,#2] for the second
 * store). ROM pools bare gState, keeps it in r2, and computes each offset at
 * runtime (movs #0xe2/#0xe3; lsls #1; adds) -- u16-array indexing through the
 * named-temp s. The q/v staging matters: q (the computed first address) burns
 * r2 as offset scratch and dies, v (the pooled 0x3e7) then reuses r2, then
 * gState reuses it again -- declared in any other order, gcc holds 0x170 live
 * in r4 and CSEs the second offset as 0x170+0x54, which the ROM does not do.
 * Pool order iwram/0x3e7/gState = decl order. The r4 offset scratch with no
 * push is normal: r4 is call-clobbered (Makefile -fcall-used-r4).
 */
extern unsigned int iwram_3001ebc__a13 __asm__("iwram_3001ebc");

void SetRespawnMap(unsigned short map, unsigned short door)
{
    unsigned char *p = (unsigned char *)iwram_3001ebc__a13;
    unsigned short *q = (unsigned short *)(p + 0xb8 * 2);
    unsigned short v = 0x3e7;
    unsigned short *s;

    *q = v;
    s = (unsigned short *)gState;
    s[0xe2] = map;
    s[0xe3] = door;
}

extern unsigned int iwram_3001ebc__a14 __asm__("iwram_3001ebc");

unsigned int Func_8091e9c(unsigned int arg0) {
    unsigned int r3;
    unsigned short r2;

    r3 = iwram_3001ebc__a14;
    r2 = 0xb8;
    r3 += r2 << 1;
    *(unsigned short *)(r3) = arg0;
    return arg0;
}

INCLUDE_ASM("asm/field/map/rom_91584_c_c_a_c_a_a_a.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern void *iwram_3001ebc__a15 __asm__("iwram_3001ebc");
extern GlobalState gState__a5 __asm__("gState");
extern void Func_809537c(int a);
extern int Func_808b074(int a);
extern void Func_808adf0(void *a);
extern void Func_808b320(int a, int b);

void Func_8091f14(unsigned int arg0, unsigned int arg1)
{
    unsigned char *base;
    unsigned char *g;
    unsigned int flag;
    unsigned short val;

    base = (unsigned char *)iwram_3001ebc__a15;
    flag = arg0 & 0x800;
    arg0 = arg0 & 0xff;
    if (flag == 0) {
        Func_809537c(arg0);
    }
    g = (unsigned char *)&gState__a5;
    val = (arg1 + 300) | flag;
    *(unsigned short *)(g + 0x234) = val;
    *(unsigned short *)(base + 0x17c) = Func_808b074(arg1);
    if (*(short *)(base + 0x19e) == 3) {
        Func_808adf0((void *)((unsigned char *)GetFieldActor(*(int *)(g + 0x1f4)) + 8));
    }
    {
        unsigned long long t = 0;
        unsigned int y;
        do { t = (unsigned long) t; } while (0);
        y = (unsigned int) t;
        Func_808b320(0, y);
    }
}


void Func_8091f90(unsigned short arg0, unsigned short arg1) {
    unsigned char *r3;

    r3 = gState;
    *(unsigned short *)(r3 + 0xe7 * 2) = arg0;
    *(unsigned short *)(r3 + 0xe8 * 2) = arg1;
}

/* Func_8091fa8; two halfword stores into gState (gState) at u16
 * indices 0xe9 and 0xea. The earlier miss added a bogus return and used a
 * register-indexed store; this is plain void with independent array writes. */
extern unsigned short gState__a7[] __asm__("gState");

void Func_8091fa8(unsigned short a, unsigned short b) {
    gState__a7[0xe9] = a;
    gState__a7[0xea] = b;
}

extern unsigned char iwram_3001ebc__a16[] __asm__("iwram_3001ebc");
extern GlobalState gState__a8 __asm__("gState");

void SetDestMap2(int arg0, int arg1)
{
  unsigned short *new_var;
  unsigned char *r2;
  unsigned char *r3;
  int new_var2;
  r2 = (unsigned char *) (*((unsigned int *) iwram_3001ebc__a16));
  r3 = (unsigned char *) (&gState__a8);
  *((unsigned short *) (r3 + (0xe0 * 2))) = arg0;
  *((unsigned short *) (r3 + (0xe1 * 2))) = arg1;
  new_var = (unsigned short *) (r2 + (0xb8 * 2));
  new_var2 = 0x3e7;
  *new_var = new_var2;
}

INCLUDE_ASM("asm/field/map/rom_91584_c_c_a_c_a_c_c_a_a_c.s");

extern unsigned char iwram_3001ebc__a17[] __asm__("iwram_3001ebc");

void MapActor_PlayPendingSound(void) {
    short v;
    unsigned int p;
    p = *(unsigned int *)iwram_3001ebc__a17 + 0xcc8;
    v = *(short *)p;
    if (v != -1) {
        _PlaySound(v);
    }
}


int MapActor_GetActor(int actorID)
{
	int r;
	r = GetFieldActor(actorID);
	if (!r)
		return 0;
	return r;
}


void MapActor_SetSpeed(unsigned int actor, int speed, int accel) {
    unsigned char *r0;

    r0 = GetFieldActor(actor);
    if (r0 != 0) {
        *(unsigned int *)(r0 + 0x34) = accel;
        *(unsigned int *)(r0 + 0x30) = speed;
    }
}

extern unsigned int Actor_SetBehavior(void *, int);

void MapActor_SetBehavior(int actorID, int behavior)
{
  unsigned char *actor;
  unsigned char cur;
  int new_var;
  actor = GetFieldActor(actorID);
  if (actor != ((unsigned char *) 0))
  {
    ;
    new_var = actor[0x5a] | 1;
    actor[0x5a] = new_var;
    Actor_SetBehavior(actor, behavior);
  }
}

INCLUDE_ASM("asm/field/map/rom_91584_c_c_a_c_a_c_c_c_c_a_c_a.s");

extern unsigned int Data_9ff40[];

void MapActor_SetExtra(int arg0, int arg1) {
    unsigned int *r5;

    r5 = GetFieldActor(arg0);
    if (r5 != 0) {
        *(unsigned int *)((unsigned char *)r5 + 0x68) = MapActor_GetActor(arg1);
        Actor_SetBehavior(r5, Data_9ff40);
    }
}

extern void _Actor_WaitScript();

void MapActor_WaitScript(int actorID)
{
    if (GetFieldActor(actorID) != 0) {
        _Actor_WaitScript();
    }
}


void MapActor_RunScript(int actorID, int behavior)
{
    unsigned char *r5;
    int r6;

    r6 = behavior;
    r5 = (unsigned char *)GetFieldActor(actorID);
    if (r5 == (unsigned char *)0)
        return;
    {
        unsigned char *r1;
        unsigned int r2;
        unsigned int r3;
        r1 = r5 + 0x5a;
        r2 = *r1;
        r3 = 1;
        r3 |= r2;
        *r1 = (unsigned char)r3;
    }
    Actor_SetBehavior(r5, r6);
    _Actor_WaitScript(r5);
}

extern void _Actor_Stop(void);
extern void _Actor_WaitMovement();

void MapActor_TravelTo(unsigned int param_1, int param_2, int param_3) {
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(param_1);
    if (actor != (unsigned char *)0) {
        *(unsigned char *)(actor + 0x5b) = 0;
        _Actor_Stop();
        _Actor_TravelTo((int)actor, param_2 << 16, *(int *)(actor + 0xc), param_3 << 16);
    }
}
void MapActor_TravelToWait(int actorID, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(actorID);
    if (actor != (unsigned char *)0) {
        *(unsigned char *)(actor + 0x5b) = 0;
        _Actor_Stop();
        _Actor_TravelTo((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
        _Actor_WaitMovement((int)actor);
    }
}
void MapActor_TravelToAnim(int actorID, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(actorID);
    if (actor != (unsigned char *)0) {
        actor[0x5b] = 0;
        _Actor_Stop();
        _Actor_SetAnim((int)actor, 2);
        _Actor_TravelTo((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
    }
}
void MapActor_TravelToAnimWait(int actorID, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(actorID);
    if (actor != (unsigned char *)0) {
        *(unsigned char *)(actor + 0x5b) = 0;
        _Actor_Stop();
        _Actor_SetAnim((int)actor, 2);
        _Actor_TravelTo((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
        _Actor_WaitMovement((int)actor);
        _Actor_SetAnim((int)actor, 1);
    }
}

INCLUDE_ASM("asm/field/map/rom_91584_c_c_a_c_c_a.s");


void MapActor_TravelBy(int arg0, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(arg0);
    if (actor != (unsigned char *)0) {
        actor[0x5b] = 0;
        _Actor_Stop();
        _Actor_TravelTo((int)actor,
                      *(int *)(actor + 8) + (arg1 << 16),
                      *(int *)(actor + 0xc),
                      *(int *)(actor + 0x10) + (arg2 << 16));
    }
}


void Func_80922c4(int actorID, int dx, int dy) {
    unsigned char *base;

    base = (unsigned char *)GetFieldActor(actorID);
    if (base != (unsigned char *)0) {
        *(unsigned char *)(base + 0x5b) = 0;
        _Actor_Stop();
        _Actor_SetAnim((int)base, 2);
        _Actor_TravelTo((int)base,
                      *(int *)(base + 8) + (dx << 16),
                      *(int *)(base + 0xc),
                      *(int *)(base + 0x10) + (dy << 16));
    }
}


void Func_8092304(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    int actor;

    actor = GetFieldActor(arg0);
    Func_80922c4(arg0, arg1, arg2);
    if (actor != 0) {
        _Actor_WaitMovement(actor);
        _Actor_SetAnim(actor, 1);
    }
}

INCLUDE_ASM("asm/field/map/rom_91584_c_c_a_c_c_c_c_c_a_a_a.s");


void MapActor_WaitMovement(int arg0)
{
    int r5;
    r5 = GetFieldActor(arg0);
    if (r5 == 0) {
        return;
    }
    _Actor_WaitMovement();
    _Actor_SetAnim(r5, 1);
}

INCLUDE_ASM("asm/field/map/rom_91584_c_c_a_c_c_c_c_c_a_a_c.s");


void MapActor_SetAnim(int actorID, int anim)
{
    void *r5;
    void *actor;

    r5 = (void *)anim;
    actor = GetFieldActor(actorID);
    if (actor != 0) {
        _Actor_SetAnim(actor, (int)r5);
    }
}

extern void _Actor_SetAnimSpeed(int actor, int speed);

void MapActor_SetAnimSpeed(int actorID, int speed)
{
    int r5;
    int r0;

    r5 = speed;
    r0 = GetFieldActor(actorID);
    if (r0 == 0) {
        return;
    }
    _Actor_SetAnimSpeed(r0, r5);
}

INCLUDE_ASM("asm/field/map/rom_91584_c_c_a_c_c_c_c_c_a_c_c.s");

extern void Func_8092504(int actorID);

void MapActor_DoAnim(int actorID, int anim) {
    MapActor_SetAnim(actorID, anim);
    Func_8092504(actorID);
}

void Func_809255c(void) {}


void MapActor_Jump(int actor, int height, unsigned int holdTime) {
    int res;
    unsigned char *p;
    unsigned char v;

    res = GetFieldActor(actor);
    if (res != 0) {
        p = (unsigned char *)((char *)res + 0x55);
        v = 2 | *p;
        *p = v;
        *(unsigned int *)((char *)res + 0x28) = height << 16;
        if (height > 5)
            _PlaySound(0x99);
        else
            _PlaySound(0x98);
        CutsceneWait(holdTime);
    }
}
