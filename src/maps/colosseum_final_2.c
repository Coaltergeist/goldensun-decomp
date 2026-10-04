/* rom_7ddb88 (overlay file 955): consolidated TU — colosseum_final_2 map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

extern unsigned char gOvl_0200c414[];

unsigned int ColosseumFinal2_GetEntrances(void) {
    return (unsigned int)gOvl_0200c414;
}

unsigned int ColosseumFinal2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c474[];

unsigned int ColosseumFinal2_GetExits(void) {
    return (unsigned int)gOvl_0200c474;
}
extern unsigned char gOvl_0200c48c[];

unsigned int ColosseumFinal2_GetActors(void) {
    return (unsigned int)gOvl_0200c48c;
}

void OvlFunc_955_200804c(void) {}

extern void OvlFunc_common1_2060(void);

void OvlFunc_955_2008050(void) {
    OvlFunc_common1_2060();
}

extern struct Actor *__MapActor_GetActor(int);

void OvlFunc_955_200805c(void) {
    int e;
    int f;

    if (__MapActor_GetActor(0xb)->pos.x >> 20 == 0x24) {
        API_SetFlag(0x335);
        e = 0x23;
        f = 0x4d;
        API_Func_8010704(0x23, 0x4e, 1, 1, e, f);
    } else {
        API_ClearFlag(0x335);
        e = 0x23;
        f = 0x4d;
        API_Func_8010704(0x22, 0x4d, 1, 1, e, f);
    }
}

void OvlFunc_955_20080b0(void)
{
	OvlFunc_common1_2060();
	OvlFunc_955_200805c();
}

INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20080c0.s");

extern unsigned int iwram_3001f30;

void OvlFunc_955_2008150(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x35)) = 1;
}

INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2008160.s");

void OvlFunc_955_2008258(void) {
    struct Actor *actor;
    API_SetFlag(0x331);
    actor = __MapActor_GetActor(0x14);
    actor->__unk55 = 0;
    API_Func_8010704(0x2e, 0x11, 1, 1, 0x2c, 0x11);
}

void OvlFunc_955_200828c(void) {
    struct Actor *actor;
    API_SetFlag(0x332);
    actor = __MapActor_GetActor(0x15);
    actor->__unk55 = 0;
    API_Func_8010704(0x2e, 0x11, 1, 1, 0x32, 0x11);
}

void OvlFunc_955_20082c0(void)
{
    int s1;
    int s2;
    __SetFlag(0x333);
    s1 = 0x20;
    s2 = 0x4d;
    API_Func_8010704(0x20, 0x25, 1, 4, s1, s2);
}

extern void __Func_8092708(unsigned int, int, int);
extern unsigned char gState;

void OvlFunc_955_20082e8(void) {
    unsigned int r3;

    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    __Func_8092708(*(unsigned int *)r3, 6, 0);
}

extern void __Func_8093c00(void);

void OvlFunc_955_2008304(void) {
    __Func_8093c00();
}

INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2008310.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2008400.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20084c0.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_200862c.s");

extern void OvlFunc_955_20084c0(int a, int b, int c);
extern void OvlFunc_955_200862c(void);

void OvlFunc_955_200869c(void)
{
	OvlFunc_955_20084c0(0xf, 0x1d, 0x1a);
	OvlFunc_955_200862c();
}


void OvlFunc_955_20086b0(void)
{
	OvlFunc_955_20084c0(0xf, 0x21, 0x1a);
	OvlFunc_955_200862c();
}


void OvlFunc_955_20086c4(void)
{
	OvlFunc_955_20084c0(0x10, 0x2d, 0x1a);
	OvlFunc_955_200862c();
}


void OvlFunc_955_20086d8(void)
{
	OvlFunc_955_20084c0(0x10, 0x31, 0x1a);
	OvlFunc_955_200862c();
}


void OvlFunc_955_20086ec(void)
{
	OvlFunc_955_20084c0(0x11, 0x28, 0x17);
	OvlFunc_955_200862c();
}


void OvlFunc_955_2008700(void)
{
	OvlFunc_955_20084c0(0x11, 0x28, 0x19);
	OvlFunc_955_200862c();
}

INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2008714.s");

// fakematch
extern void OvlFunc_955_2008714(void);
extern unsigned int L4838[] __asm__(".Lm955_4838");
extern unsigned int L4834[] __asm__(".Lm955_4834");
extern void __StopTask(void (*)(void));
extern void __MapActor_SetPos(int, int, int);
extern void __MapActor_SetAnim(int, int);

void OvlFunc_955_20088ec(void)
{
    L4838[0] = 0;
    L4834[0] = 0;
    __StopTask(OvlFunc_955_2008714);

    API_MapActor_SetPos(0x16, 0x3a80000, 0xd80000);
    API_MapActor_SetPos(0x17, 0x3c80000, 0xd80000);
    API_MapActor_SetPos(0x18, 0x3e80000, 0xd80000);
    API_MapActor_SetPos(0x19, 0x4080000, 0xd80000);

    __MapActor_SetAnim(0x1f, 10);
}

extern void __StartTask(void (*f)(void), int x);
extern void __ClearFlag(int x);

void OvlFunc_955_2008950(void) {
    int x;
    x = 0xc85;
    __StartTask(OvlFunc_955_2008714, x);
    __ClearFlag(0x82 << 1);
}

void OvlFunc_955_2008970(void)
{
    int i;

    API_WaitFrames(10);
    i = 0;
    while (L4834[0] != 0 || L4838[0] != 0x4b) {
        API_WaitFrames(1);
        i++;
        if (i >= 600)
            return;
    }
}
extern void __Func_809ad90(int);

void OvlFunc_955_20089b0(void)
{
    __Func_809ad90(0x1f);
    API_SetFlag(0x334);
    if (L4834[0] != 0) {
        L4838[0] = 0;
    }
    API_WaitFrames(30);
    API_WaitFrames(1);
    __StopTask(OvlFunc_955_2008714);
    API_Func_8010704(0x3a, 0x1c, 7, 1, 0x3a, 0xd);
    API_Func_8010704(0x39, 0xb, 1, 1, 0x3a, 0xb);
}
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2008a1c.s");

extern unsigned char gOvl_0200c83c[];

void *ColosseumFinal2_GetEvents(void) {
    return (void *)gOvl_0200c83c;
}

extern void __DeleteFieldActor(int);
extern void __Func_807808c(int);
extern void OvlFunc_common1_fac(int);

void OvlFunc_955_2008b38(int arg0)
{
    __DeleteFieldActor(0x28);
    __DeleteFieldActor(0x29);
    __Func_807808c(1);
    API_CutsceneStart();
    API_MapActor_SetPos(8, 0xb0 << 15, 0x80 << 17);
    API_MapActor_SetPos(0, 0xf0 << 15, 0x80 << 17);
    API_MapActor_Face(8, 0x80 << 7, 0);
    API_MapActor_Face(0, 0x80 << 7, 0);
    if (arg0 < 0) {
        API_MapActor_SetAnim(8, 0xa);
        API_MapActor_SetAnim(0, 0x23);
    } else {
        API_MapActor_SetAnim(8, 8);
        API_MapActor_SetAnim(0, 0x1c);
    }
    API_WaitFrames(1);
    API_Func_80933f8(0xd0 << 15, 0, 0xc0 << 16, 0);
    OvlFunc_common1_fac(arg0);
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/colosseum_final_2/ColosseumFinal2_MapInit.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20090dc.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20092f0.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2009424.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2009538.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20096d4.s");
extern void __Actor_SetAnim(struct Actor *, int);
extern void __Actor_WaitMovement(struct Actor *);

void OvlFunc_955_2009898(int arg0, int arg1, int arg2)
{
    unsigned int r3;
    int leaderId;
    struct Actor *actorB;
    struct Actor *actorA;
    int cond;
    int dx;
    int dz;

    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    leaderId = *(int *)r3;

    actorB = __MapActor_GetActor(leaderId);
    actorA = __MapActor_GetActor(arg0);

    cond = actorA->pos.x >> 20 != arg1 / 2;
    arg1 <<= 16;
    arg2 <<= 16;
    if (cond) {
        dx = (arg1 - actorA->pos.x) / 2;
        dz = 0;
    } else {
        dx = 0;
        dz = (arg2 - actorA->pos.z) / 2;
    }

    API_MapActor_SetAnim(leaderId, 8);
    API_CutsceneWait(6);

    actorA->speed = 0x8000;
    actorA->accel = 0x3333;
    API_PlaySound(0xef);
    __Actor_SetAnim(actorA, 3);
    API_Actor_TravelTo(actorA, arg1, 0, arg2);

    API_CutsceneWait(6);

    API_MapActor_SetAnim(leaderId, 2);
    API_MapActor_SetSpeed(leaderId, 0x8000, 0x3333);

    __Actor_SetAnim(actorB, 2);
    API_Actor_TravelTo(actorB, actorB->pos.x + dx, 0, actorB->pos.z + dz);
    __Actor_WaitMovement(actorB);
    __Actor_SetAnim(actorB, 1);

    __Actor_WaitMovement(actorA);
    __Actor_SetAnim(actorA, 1);

    API_PlaySound(0x120);
    API_PlaySound(0xd5);
    API_CutsceneWait(15);
}
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20099bc.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/colosseum_final_2_data.s");
