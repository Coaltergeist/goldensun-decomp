/* field/map_actor_api.c -- consolidated TU. */
#include "nonmatching.h"

extern void Func_809259c();

extern unsigned char L9ebfc[] __asm__(".L9ebfc");
extern int GetFieldActor(int actorID);
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

extern void MapActor_WaitScript(unsigned int actorID);

void Func_80925cc(unsigned int arg0)
{
	extern void Func_809259c_0(void) __asm__("Func_809259c");
	Func_809259c_0();
	MapActor_WaitScript(arg0);
}

INCLUDE_ASM("asm/field/map_actor_api/rom_925e0_a_a_a.s");

extern int atan2(int y, int x);
extern void CutsceneWait(unsigned int param_1);

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

INCLUDE_ASM("asm/field/map_actor_api/rom_925e0_a_a_c.s");

extern void _DeleteActor(void);
extern unsigned int iwram_3001ebc;

void DeleteFieldActor(int actorID) {
    int res;
    unsigned char *base;
    int off;

    res = GetFieldActor(actorID);
    base = (unsigned char *)iwram_3001ebc;
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

INCLUDE_ASM("asm/field/map_actor_api/rom_92950_a_a_c_a.s");

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

extern void _Actor_Stop(void);
extern void _Actor_SetAnim(unsigned char *actor, int arg1);

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

INCLUDE_ASM("asm/field/map_actor_api/rom_92950_a_c_c.s");

void Func_8092b90(void) {}


void MessageID(unsigned short stringID) {
    unsigned int r3;
    unsigned short r2;

    r3 = iwram_3001ebc;
    r2 = 0xec;
    r3 += r2 << 1;
    *(unsigned short *)(r3) = stringID;
}

INCLUDE_ASM("asm/field/map_actor_api/rom_92950_c_a_c_a.s");

extern void ActorMessage(unsigned int actor);

void ActorMessage_Wait(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    ActorMessage(arg0);
    CutsceneWait(arg2);
}

INCLUDE_ASM("asm/field/map_actor_api/rom_92950_c_a_c_c.s");

void Func_80930b8(void) {}

INCLUDE_ASM("asm/field/map_actor_api/rom_92950_c_c_a.s");

extern void Func_8093168(void);

void Func_809315c(void) {
    Func_8093168();
}

INCLUDE_ASM("asm/field/map_actor_api/rom_92950_c_c_c_a.s");

extern int GetActorSpriteID(void);

void Func_80931d4(void)
{
    if (GetActorSpriteID() == -1)
        return;
    _Func_8019e48();
}

INCLUDE_ASM("asm/field/map_actor_api/rom_92950_c_c_c_c.s");

INCLUDE_ASM("asm/field/map_actor_api/rom_93304_a_a_a_a_a.s");

extern int galloc_ewram(int, int);

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

INCLUDE_ASM("asm/field/map_actor_api/rom_93304_a_a_a_a_c.s");

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

extern void _Actor_WaitMovement(unsigned int param);

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

INCLUDE_ASM("asm/field/map_actor_api/rom_93304_a_c_a_a_a.s");

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

INCLUDE_ASM("asm/field/map_actor_api/rom_93304_a_c_a_c.s");

extern void _Actor_SetSpriteFlags(unsigned int arg, int b);

unsigned int Func_8093964(unsigned int arg0)
{
    _Actor_SetSpriteFlags(arg0, 0);
    *(unsigned char *)(arg0 + 0x59) = 0;
    return 0;
}

INCLUDE_ASM("asm/field/map_actor_api/rom_93304_a_c_c.s");

void Func_80941dc(void) {}

INCLUDE_ASM("asm/field/map_actor_api/rom_93304_c_a.s");

extern void Func_942e0(unsigned int anim);
extern void _SetFlag(int x);

void Player_EnterStairsUp(void) {
    Func_942e0(0x1a);
    _SetFlag(0x90 << 1);
}


void Player_EnterStairsDown(void) {
    Func_942e0(0x19);
    _SetFlag(0x121);
}

INCLUDE_ASM("asm/field/map_actor_api/rom_93304_c_c_c.s");
