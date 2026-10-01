/* rom_77a7c8 (overlay file 881): consolidated TU — world_map_cutscenes map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/world_map_cutscenes/exports.s");

INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2008030.s");
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
    extern void OvlFunc_881_20081c4(void);
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

INCLUDE_ASM("asm/maps/world_map_cutscenes/WorldMapCutscenes_GetActors.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_20084a0.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_20084f0.s");


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
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200955c.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2009680.s");

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

INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_20097fc.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2009888.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2009938.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_20099e8.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2009a98.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2009b5c.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2009c08.s");
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
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b130.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b1fc.s");
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b2f0.s");


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
INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200b678.s");
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
