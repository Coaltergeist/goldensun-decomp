/* field/map_actor.c */
#include "nonmatching.h"

extern int MapActor_GetActor();
extern void Func_80922c4();
extern void MapActor_SetAnim();
extern void MapActor_WaitScript();

extern unsigned char iwram_3001ebc[];
extern unsigned int iwram_3001ebc__v __asm__("iwram_3001ebc");
extern void *galloc_ewram(unsigned int index, unsigned int size);
extern void _Func_8011590(void);
extern void _Func_8011644(void);

unsigned int GetFieldActor(unsigned int actorID)
{
    unsigned int base = iwram_3001ebc__v;
    unsigned int ofs;

    if (actorID > 0xbf)
        return 0;
    ofs = (actorID << 2) + 0x14;
    return *(unsigned int *)(base + ofs);
}

INCLUDE_ASM("asm/field/map_actor/Func_808ba38.s");

INCLUDE_ASM("asm/field/map_actor/Func_808bb2c.s");

INCLUDE_ASM("asm/field/map_actor/Func_808bc44.s");

int Func_808bc9c(void)
{
    unsigned int r1;

    r1 = *(unsigned int *)iwram_3001ebc;
    return *(short *)((char *)r1 + 0xb6 * 2) +
           *(short *)((char *)r1 + 0xb7 * 2) +
           *(short *)((char *)r1 + 0xb8 * 2) +
           *(short *)((char *)r1 + 0xb9 * 2) +
           *(short *)((char *)r1 + 0xba * 2) +
           *(short *)((char *)r1 + 0xbb * 2) +
           *(short *)((char *)r1 + 0xbc * 2) +
           *(short *)((char *)r1 + 0xbd * 2) +
           *(short *)((char *)r1 + 0xbc * 2) +
           *(short *)((char *)r1 + 0xbe * 2) +
           *(short *)((char *)r1 + 0xbf * 2) +
           *(short *)((char *)r1 + 0xc0 * 2) +
           *(short *)((char *)r1 + 0xc1 * 2);
}

INCLUDE_ASM("asm/field/map_actor/Func_808bd24.s");

INCLUDE_ASM("asm/field/map_actor/CheckSpecialExits.s");

INCLUDE_ASM("asm/field/map_actor/Func_808bec0.s");

INCLUDE_ASM("asm/field/map_actor/Func_808c2dc.s");

INCLUDE_ASM("asm/field/map_actor/Func_808c30c.s");

INCLUDE_ASM("asm/field/map_actor/UpdatePoison.s");

void Func_808c44c(void)
{
    void *pvVar1;
    void *pvVar2;

    pvVar1 = galloc_ewram(0x1b, 0xccc);
    if (*(short *)((int)pvVar1 + (0xcf << 1)) == 3)
    {
        pvVar2 = galloc_ewram(0x1f, 0xa8 << 3);
        if (pvVar2 != 0 && *(signed char *)((int)pvVar2 + 0x53d) != 0)
        {
            *(unsigned char *)((int)pvVar2 + 0x53a) = 0;
            *(unsigned char *)((int)pvVar2 + 0x53b) = 0;
            *(unsigned char *)((int)pvVar2 + 0x53c) = 1;
            *(unsigned char *)((int)pvVar2 + 0x53d) = 0;
        }
        *(unsigned char *)(*(int *)((int)pvVar1 + (0xf0 << 1)) + 0x5b) = 1;
        _Func_8011590();
    }
}

void Func_808c4c0(void)
{
    void *base;
    short *r5;

    base = galloc_ewram(0x1b, 0xccc);
    r5 = (short *)((char *)base + (0xcf << 1));
    if (*r5 == 3) {
        _Func_8011644();
        *(unsigned char *)(*(unsigned int *)((char *)base + (0xf0 << 1)) + 0x5b) = 0;
    }
}

SECTION(".text.map_actor_2");

extern void _Actor_SetAnim();
extern void _Actor_TravelTo(void *actor, int a1, int a2, int a3);
extern void CutsceneEnd();
extern int GetMapActorIndex();
extern unsigned int MapActor_GetSpriteID();
extern void CutsceneWait();

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

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_91584_c_c_a_c_a_c_c_c_c_a_c_a.s", ".text.map_actor_2");

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

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_91584_c_c_a_c_c_a.s", ".text.map_actor_2");


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

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_91584_c_c_a_c_c_c_c_c_a_a_a.s", ".text.map_actor_2");


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

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_91584_c_c_a_c_c_c_c_c_a_a_c.s", ".text.map_actor_2");


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

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_91584_c_c_a_c_c_c_c_c_a_c_c.s", ".text.map_actor_2");

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

extern unsigned char L9ebfc[] __asm__(".L9ebfc");
extern void _Actor_SetScript(int actor, unsigned char *script);

void Func_809259c(int arg0, int arg1) {
    int r5;
    int actor;
    r5 = arg1;
    actor = GetFieldActor(arg0);
    if (!actor) return;
    if (r5 <= 0) return;
    if (r5 > 3) r5 = 3;
    _Actor_SetScript(actor, L9ebfc + (3 - r5) * 128);
}


void Func_80925cc(unsigned int arg0)
{
	extern void Func_809259c_0(void) __asm__("Func_809259c");
	Func_809259c_0();
	MapActor_WaitScript(arg0);
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_925e0_a_a_a.s", ".text.map_actor_2");

extern int atan2(int y, int x);

void MapActor_Face(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned char *a;
    unsigned char *b;

    a = (unsigned char *)GetFieldActor(arg0);
    b = (unsigned char *)GetFieldActor(arg1);
    if (a != (unsigned char *)0 && b != (unsigned char *)0) {
        *(short *)(a + 6) = atan2(
            *(int *)(b + 16) - *(int *)(a + 16),
            *(int *)(b + 8) - *(int *)(a + 8));
        CutsceneWait(arg2);
    }
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_925e0_a_a_c.s", ".text.map_actor_2");

extern void _DeleteActor(void);
extern unsigned int iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void DeleteFieldActor(int actorID) {
    int res;
    unsigned char *base;
    int off;

    res = GetFieldActor(actorID);
    base = (unsigned char *)iwram_3001ebc__a1;
    if (res != 0) {
        _DeleteActor();
        off = (actorID << 2) + 0x14;
        *(unsigned int *)(base + off) = 0;
    }
}

void Func_809294c(void) {}

extern void Func_8092980(void);
extern void Func_80929d8(unsigned int a, unsigned int b);

void Func_8092950(unsigned int arg0, unsigned int arg1) {
    unsigned char *actor;
    actor = (unsigned char *)GetFieldActor(arg0);
    if (actor) {
        if (arg1 & 0x100) {
            *(unsigned int *)(actor + 0x6c) = (unsigned int)&Func_8092980;
        } else {
            *(unsigned int *)(actor + 0x6c) = arg1 & 0x100;
            Func_80929d8((unsigned int)actor, arg1);
        }
    }
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_92950_a_a_c_a.s", ".text.map_actor_2");

unsigned int Func_8092a74(unsigned int arg0)
{
    unsigned short *p;
    short delta;
    int result;

    result = 0;
    if (arg0 != 0) {
        p = (unsigned short *)arg0;
        delta = (short)(*(unsigned short *)(arg0 + 0x64) - p[3]);
        result = delta;
        if (result != 0) {
            if (result > 0x1000)
                result = 0x800;
            if (result < (int)0xfffff000)
                result = (int)0xfffff800;
            p[3] = p[3] + result;
        }
    }
    return result;
}


void Func_8092ab4(unsigned int actorID) {
    unsigned char *r5;

    r5 = GetFieldActor(actorID);
    if (r5 != 0) {
        *(unsigned int *)(r5 + 0x38) = 0x80 << 24;
        *(unsigned int *)(r5 + 0x3c) = 0x80 << 24;
        *(unsigned int *)(r5 + 0x40) = 0x80 << 24;
        _Actor_Stop();
        _Actor_SetAnim(r5, 1);
    }
}

extern unsigned char Data_9fc1c[];

void Func_8092adc(int arg0, int arg1, int arg2) {
    void *r3;
    int r5;
    int r6;

    r5 = arg1;
    r6 = arg2;
    r3 = GetFieldActor(arg0);
    if (r3 != 0) {
        *(unsigned short *)((char *)r3 + 0x64) = r5;
        _Actor_SetScript(r3, Data_9fc1c);
        CutsceneWait(r6);
    }
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_92950_a_c_c.s", ".text.map_actor_2");

void Func_8092b90(void) {}


void MessageID(unsigned short stringID) {
    unsigned int r3;
    unsigned short r2;

    r3 = iwram_3001ebc__a1;
    r2 = 0xec;
    r3 += r2 << 1;
    *(unsigned short *)(r3) = stringID;
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_92950_c_a_c_a.s", ".text.map_actor_2");

extern void ActorMessage(unsigned int actor);

void ActorMessage_Wait(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    ActorMessage(arg0);
    CutsceneWait(arg2);
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_92950_c_a_c_c.s", ".text.map_actor_2");

void Func_80930b8(void) {}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_92950_c_c_a.s", ".text.map_actor_2");

extern void Func_8093168(void);

void Func_809315c(void) {
    Func_8093168();
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_92950_c_c_c_a.s", ".text.map_actor_2");

extern int GetActorSpriteID(void);

void Func_80931d4(void)
{
    if (GetActorSpriteID() == -1)
        return;
    _Func_8019e48();
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_92950_c_c_c_c.s", ".text.map_actor_2");

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_93304_a_a_a_a_a.s", ".text.map_actor_2");


void Func_80933d4(unsigned int a0, unsigned int a1) {
    unsigned int r5;
    unsigned int r6;
    unsigned int base;
    unsigned int r3;

    r5 = a0;
    r6 = a1;
    base = (unsigned int)galloc_ewram(0x1b, 0xccc);
    r3 = 0xf0;
    r3 <<= 1;
    base += r3;
    r3 = *(unsigned int *)base;
    *(unsigned int *)(r3 + 0x30) = r5;
    *(unsigned int *)(r3 + 0x34) = r6;
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_93304_a_a_a_a_c.s", ".text.map_actor_2");

extern void Func_80933f8(int a, int b, int c, int d);

void Func_8093500(unsigned int arg0, unsigned int arg1)
{
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(arg0);
    galloc_ewram(0x1b, 0xccc);
    if (actor != (unsigned char *)0) {
        Func_80933f8(*(int *)(actor + 8), -1, *(int *)(actor + 0x10), arg1);
    }
}


void Func_8093530(void) {
    unsigned int r0;
    unsigned int r3;

    r0 = galloc_ewram(0x1b, 0xccc);
    r3 = 0xf0;
    r3 <<= 1;
    r0 += r3;
    r0 = *(unsigned int *)r0;
    _Actor_WaitMovement(r0);
    CutsceneWait(2);
}


unsigned int Func_8093554(void) {
    unsigned int r0;
    unsigned int r3;

    r0 = galloc_ewram(0x1b, 0xccc);
    r3 = 0xf0;
    r3 <<= 1;
    r0 += r3;
    r0 = *(unsigned int *)r0;
    return r0;
}

extern void _Camera_SetTarget(unsigned char *ptr, int arg);

void Func_8093570(unsigned int arg0, unsigned int arg1) {
    unsigned char *base;
    unsigned char *obj;

    base = galloc_ewram(0x1b, 0xccc);
    obj = *(unsigned char **)(base + 0x1e0);
    if (arg0 != 0) {
        _Camera_SetTarget(obj, 0);
        *(unsigned int *)(obj + 0x68) = arg0;
        if (arg1 == 0) {
            *(unsigned int *)(obj + 8) = *(unsigned int *)(arg0 + 8);
            *(unsigned int *)(obj + 0xc) = *(unsigned int *)(arg0 + 0xc);
            *(unsigned int *)(obj + 0x10) = *(unsigned int *)(arg0 + 0x10);
        }
    }
}

extern unsigned int iwram_3001e70;

void Func_80935b0(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
    unsigned int *ptr;
    ptr = (unsigned int *)iwram_3001e70;
    ptr[0x3b] = arg0;
    ptr[0x3c] = arg1;
    ptr[0x3d] = arg2;
    ptr[0x3e] = arg3;
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_93304_a_c_a_a_a.s", ".text.map_actor_2");

extern void WaitFrames(unsigned int nframes);

void Func_8093710(void)
{
    unsigned char *pFVar1;
    void *pvVar2;
    int iVar3;

    pFVar1 = (unsigned char *)iwram_3001e70;
    pvVar2 = galloc_ewram(0x1b, 0xccc);
    if (*(short *)((int)pvVar2 + (0xcf << 1)) == 3 &&
        (iVar3 = 0, *(short *)(pFVar1 + (0xd6 << 2)) != 0))
    {
        do
        {
            WaitFrames(1);
            iVar3 = iVar3 + 1;
            if (iVar3 > 0x12b)
            {
                return;
            }
        } while (*(short *)(pFVar1 + (0xd6 << 2)) != 0);
    }
}

extern short *Func_808d394(short arg0);
extern void *_GetSpriteInfo(short arg0);

int Update_EmoteBubble(unsigned char *r5)
{
  unsigned char *r6 = *((unsigned char **) (r5 + 0x68));
  if (r6 != 0)
  {
    short idx;
    short *p;
    void *sprite;
    unsigned short b;
    int val;
    *((unsigned char *) (r5 + 0x55)) = 0;
    *((int *) (r5 + 8)) = *((int *) (r6 + 8));
    idx = *((short *) (r5 + 0x66));
    p = Func_808d394(idx);
    sprite = _GetSpriteInfo(*p);
    b = *(((signed char *) sprite) + 8);
    val = *((int *) (r6 + 0xc));
    val += ((int) b) << 16;
    val += 0x80 << 12;
    *((int *) (r5 + 0xc)) = val;
    *((int *) (r5 + 0x14)) = *((int *) (r6 + 0x14));
    *((int *) (r5 + 0x10)) = *((int *) (r6 + 0x10));
  }
  return 0;
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_93304_a_c_a_c.s", ".text.map_actor_2");

extern void _Actor_SetSpriteFlags(unsigned int arg, int b);

unsigned int Func_8093964(unsigned int arg0)
{
    _Actor_SetSpriteFlags(arg0, 0);
    *(unsigned char *)(arg0 + 0x59) = 0;
    return 0;
}

INCLUDE_ASM_SECTION("asm/field/map_actor/rom_93304_a_c_c.s", ".text.map_actor_2");
