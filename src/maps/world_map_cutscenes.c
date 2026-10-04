/* rom_77a7c8 (overlay file 881): consolidated TU — world_map_cutscenes map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/world_map_cutscenes/exports.s");

void OvlFunc_881_2008030(void)
{
    extern unsigned char iwram_3001ebc[];
    extern unsigned char gStateBytes[] __asm__("gState");
    extern int _divsi3_RAM(int, int);
    extern unsigned int __Random(void);
    extern void __Func_8091f14(int, int);
    unsigned char *base;
    int *limit;
    int *value;
    int offset = 0x8e;

    base = *(unsigned char **)iwram_3001ebc;
    limit = (int *)((char *)gStateBytes + (offset << 2));
    value = (int *)(base + 0x1ac);
    if (*limit >= _divsi3_RAM(*value * 9, 10)) {
        if (__Random() < 0x8000) {
            __Func_8091f14(0x808, 3);
            *(int *)(base + 0x1a8) = 0;
        } else {
            *limit = *value;
        }
    }
}
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200808c.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_20080d4.s");

void OvlFunc_881_200811c(struct Actor *a) {
    short *wc = &a->waveCounter;

    if (*wc <= 0) {
        *wc += 1;
    } else {
        API_DeleteActor(a);
    }
}

INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200813c.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_20081c4.s");


unsigned int OvlFunc_881_2008250(unsigned int arg0) {
    extern int __GetFlag(int kind);
    extern void OvlFunc_881_20081c4(struct Actor *);
    unsigned char *base;

    base = (unsigned char *)arg0;
    if (__GetFlag(0x30) != 0)
        return 0;
    if (__GetFlag(0xb7 << 1) != 0)
        return 0;

    *(unsigned int *)(base + 0x6c) = (unsigned int)OvlFunc_881_20081c4;
    *(unsigned char *)(base + 0x55) = 0;
    *(unsigned short *)(base + 0x64) = 0;
    *(unsigned short *)(base + 0x66) = 0;
    *(unsigned int *)(base + 0x18) = 0x80 << 8;
    *(unsigned int *)(base + 0x1c) = 0x80 << 8;
    return 0;
}


unsigned int WorldMapCutscenes_GetEntrances(void) {
    extern unsigned char gOvl_0200d27c[];
    return (unsigned int)gOvl_0200d27c;
}

int WorldMapCutscenes_GetSpecialExits(void) {
    return 0;
}


unsigned int WorldMapCutscenes_GetExits(void) {
    extern unsigned char gOvl_0200da2c[];
    return (unsigned int)gOvl_0200da2c;
}


unsigned int OvlFunc_881_20082a4(unsigned int arg0)
{
    extern void OvlFunc_881_20082cc(void);
    unsigned int r5;

    r5 = arg0;
    OvlFunc_881_20082cc();
    if (__GetFlag(0x847)) {
        __Actor_SetAnim(r5, 2);
    }
    return 1;
}

INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_20082cc.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_20082f0.s");
int OvlFunc_881_2008314(struct Actor *actor)
{
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Actor_SetColorswap(unsigned int, unsigned int);

    __Actor_SetSpriteFlags(actor, 0);
    __Actor_SetColorswap((unsigned int)actor, 0xa);
    actor->__unk59 = 0;
    if (API_GetFlag(0x8a << 4)) {
        API_SetFlag(0x2f1);
        actor->pos.x = 0;
        actor->pos.y = 0;
    }
    return 0;
}


unsigned int OvlFunc_881_2008350(unsigned char *actor)
{
    extern unsigned int iwram_3001e40;
    unsigned char *p = actor + 0x54;
    if ((1 & *p) != 0 && (iwram_3001e40 & 1) != 0) {
        *p = 1 ^ *p;
    }
    return 1;
}

unsigned int WorldMapCutscenes_GetActors(void)
{
    extern unsigned char gState_ref[] __asm__("gState");
    extern int __GetFlag(int);
    extern void __SetFlag(int);
    extern unsigned char L6154[] __asm__(".Lm881_6154");
    extern unsigned char L604c[] __asm__(".Lm881_604c");
    extern unsigned char L61e4[] __asm__(".Lm881_61e4");
    extern unsigned char L628c[] __asm__(".Lm881_628c");
    extern unsigned char L6394[] __asm__(".Lm881_6394");
    extern unsigned char L63c4[] __asm__(".Lm881_63c4");
    extern unsigned char L625c[] __asm__(".Lm881_625c");
    extern unsigned char L62ec[] __asm__(".Lm881_62ec");
    extern unsigned char L5b84[] __asm__(".Lm881_5b84");
    unsigned char *gs;

    gs = gState_ref;
    gs += (0xe1 << 1);
    switch (*(short *)gs) {
    case 0x31:
        if (__GetFlag(0x94f) == 0 && __GetFlag(0x941) != 0) {
            return (unsigned int)L6154;
        }
        break;

    case 0x40:
        if (__GetFlag(0x85a) == 0) {
            return (unsigned int)L604c;
        }
        break;

    case 0x41:
    case 0x46:
        return (unsigned int)L61e4;

    case 0x47:
        return (unsigned int)L628c;

    case 0x48:
        return (unsigned int)L6394;

    case 0x49:
        return (unsigned int)L63c4;

    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x4b:
        return (unsigned int)L625c;

    case 0x50:
        return (unsigned int)L62ec;
    }

    __SetFlag(0x235);
    return (unsigned int)L5b84;
}
void OvlFunc_881_20084a0(int a, int b, int c)
{
    extern void *__MapActor_GetActor(int);
    extern unsigned char gStateBytes[] __asm__("gState");
    extern unsigned char iwram_3001ebc[];
    struct Actor *actor;
    struct Actor *other;
    unsigned char *base;
    unsigned char *gs;

    actor = (struct Actor *)__MapActor_GetActor(a - 0x64);
    gs = gStateBytes;
    gs += (0xfa << 1);
    other = (struct Actor *)__MapActor_GetActor(*(int *)gs);
    base = *(unsigned char **)iwram_3001ebc;
    if (other->pos.x < actor->pos.x) {
        *(u16 *)(base + (0xb8 << 1)) = b;
    } else {
        *(u16 *)(base + (0xb8 << 1)) = c;
    }
    API_PlaySound(0x7b);
}
void OvlFunc_881_20084f0(int a, int b, int c)
{
    extern int __MapActor_GetActor(int);
    extern unsigned char gStateBytes[] __asm__("gState");
    extern unsigned char iwram_3001ebc[];
    struct Actor *target;
    struct Actor *other;
    unsigned char *base;
    unsigned char *gs;

    target = (struct Actor *)__MapActor_GetActor(a - 0x64);
    gs = gStateBytes;
    gs += (0xfa << 1);
    other = (struct Actor *)__MapActor_GetActor(*(int *)gs);
    base = *(unsigned char **)iwram_3001ebc;
    if (other->pos.z < target->pos.z)
        *(u16 *)(base + 0x170) = b;
    else
        *(u16 *)(base + 0x170) = c;
    API_PlaySound(0x7b);
}


void OvlFunc_881_2008540(void) {
    extern void OvlFunc_881_20084a0(int a, int b, int c);
    OvlFunc_881_20084a0(0x82, 6, 0x2f);
}


void OvlFunc_881_2008550(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x96, 0x2e, 0xb);
}


void OvlFunc_881_2008560(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x74, 0x38, 0x15);
}


void OvlFunc_881_2008570(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x97, 0x19, 0x36);
}


void OvlFunc_881_2008580(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x7d, 0x3b, 0x1e);
}


unsigned int WorldMapCutscenes_GetEvents(void) {
    extern unsigned char gOvl_0200e3f4[];
    return (unsigned int)gOvl_0200e3f4;
}

INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2008598.s");

void OvlFunc_881_20086b4(void) {
    if (__GetFlag(0x85a) == 0) {
        __Func_8091e9c(0x65);
    } else {
        __PlaySound(0x7b);
        __Func_8091e9c(3);
    }
}


void OvlFunc_881_20086dc(void)
{
    extern void __CutsceneStart(void);
    extern void __Func_8091e9c(int);
	__CutsceneStart();
	__Func_8091e9c(0x4a);
}

INCLUDE_ASM("asm/maps/world_map_cutscenes/WorldMapCutscenes_MapInit.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2008a8c.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2008c28.s");
void OvlFunc_881_200955c(void)
{
    API_Func_80933f8(0x160c0000, -1, 0x6f80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16040000, -1, 0x6fc0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x160c0000, -1, 0x6f40000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x160c0000, -1, 0x6fc0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16040000, -1, 0x6f40000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16080000, -1, 0x6f80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x160a0000, -1, 0x6f80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16060000, -1, 0x6fa0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x160a0000, -1, 0x6f60000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x160a0000, -1, 0x6fa0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16060000, -1, 0x6f60000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16080000, -1, 0x6f80000, 1);
    API_WaitFrames(4);
}
void OvlFunc_881_2009680(void)
{
    API_Func_80933f8(0x15ec0000, -1, 0x6c80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e40000, -1, 0x6cc0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15ec0000, -1, 0x6c40000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15ec0000, -1, 0x6cc0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e40000, -1, 0x6c40000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e80000, -1, 0x6c80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15ea0000, -1, 0x6c80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e60000, -1, 0x6ca0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15ea0000, -1, 0x6c60000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15ea0000, -1, 0x6ca0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e60000, -1, 0x6c60000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e80000, -1, 0x6c80000, 1);
    API_WaitFrames(4);
}

static inline int GetFlag(int flag)
{
    extern int __GetFlag(int);
    return __GetFlag(flag);
}

static inline void SetActorAnim(unsigned char *actor, int anim)
{
    extern void __Actor_SetAnim(unsigned char *, unsigned int);
    __Actor_SetAnim(actor, anim);
}

void OvlFunc_881_20097a4(void)
{
    unsigned char *actor;
    unsigned char *other;
    int flag;

    actor = (unsigned char *) __MapActor_GetActor(0xf);
    other = (unsigned char *) __MapActor_GetActor(0xe);
    *(unsigned int *)(actor + 8) = *(unsigned int *)(other + 8);
    *(unsigned int *)(actor + 0x10) = *(unsigned int *)(other + 0x10);
    if (*(int *)(actor + 0xc) < 0xa0000) {

        *(unsigned int *)(actor + 0xc) = 0xa0000;

        flag = GetFlag(0x200);
        if (flag == 0) {
            unsigned short *p;
            unsigned short v;
            __PlaySound(0x91);
            SetActorAnim(actor, 3);
            __SetFlag(0x80 << 2);
            p = (unsigned short *)(actor + 0x64);
            v = 1;
            *p = v;
        }
    }
}

void OvlFunc_881_20097fc(void)
{
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    actor->scale.x = actor->scale.y = 0x14000;
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x6666, 0x3333);
    API_MapActor_TravelToAnimWait(8, 0x14a8, 0x918);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x927);
    API_Func_8091e9c(0x66);
    API_CutsceneEnd();
}
void OvlFunc_881_2009888(void)
{
    extern struct Actor *__MapActor_GetActor(int);
    extern unsigned char gScript_881__0200d158[];
    struct Actor *actor;
    short *wc;
    int zero;

    actor = __MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(8, 0x1f080000, 0xc8 << 16);
    actor->scale.x = 0xa0 << 9;
    actor->scale.y = 0xa0 << 9;
    API_WaitFrames(1);
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x9999, 0x4ccc);
    wc = &actor->waveCounter;
    zero = 0;
    *wc = zero;
    API_MapActor_SetBehavior(8, (int)gScript_881__0200d158);
    do {
        API_WaitFrames(1);
    } while (*wc == 0);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x927);
    API_Func_8091e9c(0x67);
    API_CutsceneEnd();
}
void OvlFunc_881_2009938(void)
{
    extern struct Actor *__MapActor_GetActor(int);
    extern unsigned char gScript_881__0200d158[];
    struct Actor *actor;

    actor = __MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(8, 0x1f080000, 0xc8 << 16);
    actor->scale.x = 0xa0 << 9;
    actor->scale.y = 0xa0 << 9;
    API_WaitFrames(1);
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x9999, 0x4ccc);
    actor->waveCounter = 0;
    API_MapActor_SetBehavior(8, (int)gScript_881__0200d158);
    do {
        API_WaitFrames(1);
    } while (actor->waveCounter == 0);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x927);
    API_Func_8091e9c(0x68);
    API_CutsceneEnd();
}
void OvlFunc_881_20099e8(void)
{
    extern struct Actor *__MapActor_GetActor(int);
    extern unsigned char gScript_881__0200d158[];
    struct Actor *actor;

    actor = __MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(8, 0x1f080000, 0xc8 << 16);
    actor->scale.x = 0x14000;
    actor->scale.y = 0x14000;
    API_WaitFrames(1);
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x9999, 0x4ccc);
    actor->waveCounter = 0;
    API_MapActor_SetBehavior(8, (int)gScript_881__0200d158);
    do {
        API_WaitFrames(1);
    } while (actor->waveCounter == 0);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x927);
    API_Func_8091e9c(0x69);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2009a98.s");
void OvlFunc_881_2009b5c(void)
{
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(8);

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(8, 0x13e80000, 0x9180000);
    actor->scale.y = 0x14000;
    actor->scale.x = 0x14000;
    API_WaitFrames(1);
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x6666, 0x3333);
    API_MapActor_TravelToAnimWait(8, 0x13c8, 0x918);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x93e);
    API_ClearFlag(0x927);
    API_Func_8091e9c(0x6b);
    API_CutsceneEnd();
}
void OvlFunc_881_2009c08(void)
{
    extern void __Func_808c4c0(void);
    extern void __Func_80936a0(int, int);
    extern void __Func_8093710(void);
    extern void __Func_808c44c(void);
    extern void __Func_802899c(int, int);
    extern void __Func_80aa56c(void);
    extern void __StartMapBattle(int, int);

    __Func_808c4c0();
    __Func_80936a0(0x10000, 6);
    __Func_8093710();
    __Func_808c44c();
    API_Func_80925cc(8, 2);
    API_MessageID(0xc66);
    API_ActorMessage(8, 0);
    API_CutsceneWait(0x1e);
    API_PlaySound(0x6f);
    __Func_802899c(0, 2);
    API_ClearFlag(0x16f);
    API_ClearFlag(0x171);
    __Func_80aa56c();
    API_MapActor_Jump(8, 4, 0x1e);
    API_MessageID(0xc67);
    API_ActorMessage(8, 0);
    API_ClearFlag(0x16f);
    API_SetFlag(0x171);
    __Func_80aa56c();
    API_CutsceneWait(0x1e);
    __StartMapBattle(0xc, 6);
}
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2009ca4.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200a274.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200a4a8.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200a768.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200a7dc.s");

extern unsigned char L679c[] __asm__(".Lm881_679c");

void OvlFunc_881_200a81c(void) {

    API_CutsceneStart();
    API_MapActor_Face(0x37, 0, 0);
    API_MessageID(0x2642);
    API_ActorMessage(*(unsigned long *)L679c, 0);
    API_Func_8092adc(0x37, 0xc0 << 6, 0);
    API_CutsceneEnd();
}


extern void __CutsceneStart(void);
extern void __Func_808c44c(void);
extern void __MessageID(int);
extern void __ActorMessage(unsigned long, int);
extern void __Func_808c4c0(void);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __CutsceneEnd(void);

void OvlFunc_881_200a858(void)
{
    extern unsigned char L679c[] __asm__(".Lm881_679c");

    __CutsceneStart();
    __Func_808c44c();
    __MessageID(0x2643);
    __ActorMessage(*(unsigned long *)L679c, 0);
    __Func_808c4c0();
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0x1778, 0xd48);
    __CutsceneEnd();
}


void OvlFunc_881_200a8a8(void) {
    extern unsigned char iwram_3001ebc[];
    void *base;
    short *p;

    API_CutsceneStart();
    __Func_808c44c();
    API_Func_801776c(0x264c, 1);
    if (API_GetFlag(0x8d << 2)) {
        int one;

        base = *(void **)iwram_3001ebc;
        p = (short *)((char *)base + (0xb9 << 1));
        one = 1;
        *p = one;
    }
    __Func_808c4c0();
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200a8e8.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200acb4.s");
void OvlFunc_881_200b130(void)
{
    extern unsigned char iwram_3001ebc[];
    extern void __Func_8092950(int, int);
    extern void *__MapActor_GetActor(int);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void OvlFunc_881_200b1fc(void);
    unsigned char *base;

    API_CutsceneStart();
    API_PlaySound(0x8d);
    API_Func_8091220(0, 0);
    API_Func_8091200(0, 0);
    API_Func_8091254(1);
    API_WaitFrames(2);

    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + (0xe4 << 1)) = 1;

    API_MapTransitionIn();
    API_WaitMapTransition();

    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    API_WaitFrames(1);

    API_Func_80933d4(0x80 << 11, 0x80 << 8);
    API_StartTask(OvlFunc_881_200b1fc, 0xc8 << 4);

    API_Func_8091220(0, 0);
    API_Func_8091200(0x10004, 1);
    API_Func_8091200(0x80 << 9, 2);
    API_Func_8091254(0x28);
    API_CutsceneWait(0xf0);
    API_Func_8091200(0, 0);
    API_Func_8091254(0x50);
    API_WaitFrames(0x5a);
    API_Func_8091e9c(0x6d);
    API_SetFlag(0x8d << 1);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b1fc.s");
void OvlFunc_881_200b2f0(void)
{
    extern void *__MapActor_GetActor(int);
    extern void __Func_80936a0(int, int);
    extern unsigned char iwram_3001ebc[];
    struct Actor *actor;
    unsigned char *base;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetAnim(8, 2);
    API_MapActor_SetPos(8, 0x13080000, 0xca << 18);
    actor = (struct Actor *)__MapActor_GetActor(8);
    actor->facing = 0xa0 << 8;
    API_WaitFrames(1);
    __Func_80936a0(0x13333, 1);
    API_MapActor_SetPos(0, 0, 0);
    API_SetCameraTarget(8, 1);
    API_WaitFrames(1);
    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + (0xe0 << 1)) = 0x100;
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x6666, 0x3333);
    API_MapActor_TravelToWait(8, 0x12d8, 0xb2 << 2);
    API_MapActor_TravelToWait(8, 0x12a8, 0x9a << 2);
    API_MapActor_SetSpeed(8, 0x4ccc, 0x2666);
    API_MapActor_TravelToWait(8, 0x12a8, 0xec << 1);
    API_MapActor_SetSpeed(8, 0x3333, 0x1999);
    API_MapActor_TravelToWait(8, 0x1298, 0xe4 << 1);
    API_MapActor_SetSpeed(8, 0x1999, 0xccc);
    API_MapActor_TravelToWait(8, 0x1298, 0xdc << 1);
    API_MapActor_SetAnim(8, 1);
    API_CutsceneWait(0x28);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(0x6e);
}


unsigned int OvlFunc_881_200b41c(void)
{
    extern unsigned int OvlFunc_881_200b448(unsigned int);
    unsigned int r5;
    unsigned int r6;

    r6 = OvlFunc_881_200b448(0);
    r6 += OvlFunc_881_200b448(2);
    r5 = OvlFunc_881_200b448(1);
    r5 += OvlFunc_881_200b448(3);
    r6 -= r5;
    return r6;
}

unsigned int OvlFunc_881_200b448(unsigned int arg0)
{
    extern int __GetFlag(int);
    extern unsigned int L6718[] __asm__(".Lm881_6718");
    unsigned int base;
    unsigned int i;

    base = 0;
    switch (arg0) {
    case 0:
        base = 0x92c;
        break;
    case 1:
        base = 0x935;
        break;
    case 2:
        base = 0x917;
        break;
    case 3:
        base = 0x990;
        break;
    }

    for (i = 0; i <= 8; i++) {
        if (__GetFlag(base + i) != 0)
            return L6718[i];
    }
    return 0;
}
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b4a0.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b57c.s");
void OvlFunc_881_200b678(void)
{
    extern unsigned char gState_ovl[] __asm__("gState");
    extern unsigned char iwram_3001ebc[];
    extern unsigned int iwram_3001e40;
    extern struct Actor *__MapActor_GetActor(int);
    extern int __GetFlagByte(int);
    extern int __GetFlag(int);
    extern void __SetFlagByte(int, int);

    unsigned char *gs;
    struct Actor *actor;
    void *base;
    short *p;
    int flag;
    int val;

    gs = gState_ovl;
    gs += (0xfa << 1);
    actor = __MapActor_GetActor(*(int *)gs);
    base = *(void **)iwram_3001ebc;
    actor->facing = iwram_3001e40 << 12;

    flag = __GetFlagByte(0xbe << 2);
    if (flag != 0) {
        if (flag == 1) {
            p = (short *)((char *)base + (0xc1 << 1));
            val = 0x63;
            *p = val;
        } else if (!__GetFlag(0x83 << 1)) {
            flag--;
        }
    }
    __SetFlagByte(0xbe << 2, flag);
}
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b6dc.s");


void OvlFunc_881_200b7bc(void) {
    extern void OvlFunc_881_200b6dc(int);
    OvlFunc_881_200b6dc(0x36);
}


void OvlFunc_881_200b7c8(void) {
    extern unsigned int iwram_3001f30;
    unsigned int ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x34)) = 1;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
    extern unsigned char iwram_3001ebc[];   /* @ 0x03001EBC */
    extern GlobalState gState;   /* GlobalState @ 0x02000240 */

void OvlFunc_881_200b7d8(void)
{
    extern unsigned char iwram_3001ebc[];   /* @ 0x03001EBC */
    extern GlobalState gState;   /* GlobalState @ 0x02000240 */
    void *base;
    short *p;
    unsigned char *gs;
    int arg0;
    unsigned char *actor;
    unsigned short zero;
    unsigned short a0_flagbyte;
    unsigned long long t1;
    unsigned short a0_b;

    base = *(void **)iwram_3001ebc;
    p = (short *)((char *)base + (0xc1 << 1));
    if (*p == 0x63) {
        zero = 0;
        *p = zero;
    }
    __ClearFlag(0xbc << 2);
    __SetFlag(0x2f1);

    a0_flagbyte = 0xbe << 2;
    do { a0_flagbyte = (unsigned short) a0_flagbyte; } while (0);
    __SetFlagByte(a0_flagbyte, 0);

    t1 = 0x62;
    do { t1 = (unsigned long) t1; } while (0);
    __StartMapBattle((unsigned long) t1, 5);

    gs = (unsigned char *)&gState;
    gs[0x22b] = 3;

    a0_b = 0x62;
    do { a0_b = (unsigned short) a0_b; } while (0);
    __StartMapBattle(a0_b, 7);

    gs += (0xfa << 1);
    arg0 = *(unsigned int *)gs;
    actor = (unsigned char *)__MapActor_GetActor(arg0);
    actor[0x55] = 2;
}

INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b84c.s");
void OvlFunc_881_200b8fc(void)
{
    extern void __SetRegAnimDest(unsigned int reg, unsigned int value);
    extern unsigned int iwram_3001e40;
    extern unsigned short L67a0 __asm__(".Lm881_67a0");

    __SetRegAnimDest(0x04000050, 0x3f41);
    if (iwram_3001e40 & 2) {
        __SetRegAnimDest(0x04000052, L67a0 | 0xc);
    } else {
        __SetRegAnimDest(0x04000052, L67a0 | 0x10);
    }
}
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b95c.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b9fc.s");


void OvlFunc_881_200bf10(unsigned int arg0)
{
    extern unsigned int iwram_3001e40;
    extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
    extern void OvlFunc_881_200c058(unsigned int a);
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_881_200c058(arg0);
    }
}


void OvlFunc_881_200bf4c(unsigned int arg0)
{
    extern volatile unsigned int iwram_3001e40;
    extern void __Actor_SetColorswap(unsigned int a, int b);
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern void OvlFunc_881_200c058(unsigned int a);
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_881_200c058(arg0);
    }
}

void OvlFunc_881_200bf88(int arg0)
{
    extern volatile unsigned int iwram_3001e40;
    extern int _umodsi3_RAM(unsigned int a, int b);
    extern void __Actor_SetColorswap(int a, int b);
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
}

void OvlFunc_881_200bfb4(struct Actor *actor)
{
    extern int __sin(int);
    struct Actor *linked;
    short counter;
    int s;

    linked = actor->linkedActor;
    counter = ++actor->waveCounter;
    if (counter > 31) {
        API_DeleteActor((int)actor);
    } else {
        s = __sin(counter << 10);
        actor->scale.x = s;
        actor->scale.y = s;
        actor->pos.x = linked->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = linked->pos.z + (0x10000 - s) * 5 + 0x80000;
    }
}
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200c004.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200c058.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/world_map_cutscenes_data.s");

INCLUDE_ASM("asm/maps/world_map_cutscenes/imports.s");
