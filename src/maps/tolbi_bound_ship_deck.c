/* rom_7c7b9c (overlay file 943): consolidated TU — tolbi_bound_ship_deck map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

extern unsigned int __Random();

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/exports.s");

extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern unsigned int __Random0(void) __asm__("__Random");

unsigned int OvlFunc_943_2008030(struct Actor *actor)
{
    switch (actor->waveCounter) {
    case 6:
        actor->scale.x += -0x4000;
        actor->scale.y += 0x2000;
        break;
    case 4:
        actor->scale.x += 0x2000;
        actor->scale.y += -0x1000;
        break;
    case 2:
        actor->scale.x += 0x1000;
        actor->scale.y += -0x800;
        break;
    case 0:
        actor->scale.x = 0x10000;
        actor->scale.y = 0x10000;
        actor->waveCounter = _umodsi3_RAM(__Random0(), 90) + 60;
        break;
    }
    actor->waveCounter--;
    return 1;
}

extern int bytes(int);

extern int __Actor_SetSpriteFlags();

unsigned int OvlFunc_943_20080b4(void) {
    int a;
    __Actor_SetSpriteFlags(a, 1);
    return 0;
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20080c4.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20082ec.s");
int OvlFunc_943_2008514(struct Actor *a)
{
    short flag;
    int y;

    if (a->__unk66 != 0) {
        y = a->pos.y - ((unsigned int)(__Random() << 15) >> 16) - 0x8000;
        a->pos.y = y;
        if (y < 0x40000) {
            flag = 0;
            goto set;
        }
    } else {
        y = a->pos.y + ((unsigned int)(__Random() << 15) >> 16) + 0x8000;
        a->pos.y = y;
        if (y > 0xc0000) {
            flag = 1;
        set:
            a->__unk66 = flag;
        }
    }
    return 1;
}


unsigned int OvlFunc_943_2008570(unsigned char *arg0) {
    unsigned int v;
    unsigned int t;
    v = (__Random((unsigned int)arg0) << 5) >> 16;
    if (v == 6) {
        t = 0xd0;
        *(unsigned short *)(arg0 + 6) = t << 8;
    } else if (v == 9) {
        t = 0xb0;
        *(unsigned short *)(arg0 + 6) = t << 8;
    }
    return 1;
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008598.s");
extern void *__MapActor_GetActor(int);
extern void __Func_8092adc();
extern unsigned int __Random0(void) __asm__("__Random");
extern void __Actor_TravelTo(void *, int, int, int);
extern void __PlaySound(int);
extern void __MapActor_Emote(int, int, int);

static inline void Func_8092adc(int a, int b, int c) {
    __Func_8092adc(a, b << 8, c);
}

static inline void MapActor_Emote(int actor, int emote, int c) {
    __MapActor_Emote(actor, emote, c);
}

static inline void Actor_TravelTo(void *actor, int x, int y, int z) {
    __Actor_TravelTo(actor, x << 16, y, z << 18);
}

unsigned int OvlFunc_943_2008724(unsigned char *arg0)
{
    extern void __Actor_TravelTo(void *, int, int, int);
    extern void __PlaySound(int);
    extern void __Func_8092adc(int, int, int);
    extern void *__MapActor_GetActor(int);
    extern void __MapActor_Emote(int, int, int);

    switch (*(short *)(arg0 + 0x64)) {
    case 0:
        if ((((unsigned int)__Random0() * 5) << 3) >> 16 == 0) {
            *(unsigned short *)(arg0 + 0x64) += 1;
        }
        break;

    case 1:
        *(unsigned short *)(arg0 + 0x64) += 1;
        break;

    case 2:
        *(int *)(arg0 + 0x28) = 0x80 << 11;
        *(int *)(arg0 + 0x30) = 0x80 << 11;
        *(int *)(arg0 + 0x34) = 0x80 << 10;
        Actor_TravelTo(arg0, 0xb0, 0, 0xae);
        *(unsigned short *)(arg0 + 0x64) += 1;
        break;

    case 3:
        *(unsigned short *)(arg0 + 0x64) += 1;
        break;

    case 4:
        if (*(int *)(arg0 + 0x38) != (int)(0x80 << 24) ||
            *(int *)(arg0 + 0x3c) != *(int *)(arg0 + 0x38) ||
            *(int *)(arg0 + 0x40) != *(int *)(arg0 + 0x3c)) {
            break;
        }
        *(unsigned short *)(arg0 + 0x64) += 1;
        __PlaySound(0x98);
        if (*(unsigned char *)(arg0 + 0x63) != 0) {
            Func_8092adc(0x16, 0xd0, 0);
        } else {
            __Func_8092adc(0x16, 0, 0);
        }
        if (((__Random0() << 2) >> 16) != 0) {
            unsigned char *actor22 = (unsigned char *)__MapActor_GetActor(0x16);
            *(int *)(actor22 + 0x28) = 0x80 << 10;
        } else {
            unsigned char *actor22;
            MapActor_Emote(0x16, 0x103, 0);
            actor22 = (unsigned char *)__MapActor_GetActor(0x16);
            *(int *)(actor22 + 0x28) = 0xc0 << 11;
        }
        break;

    case 5:
        *(unsigned short *)(arg0 + 0x64) += 1;
        break;

    case 6:
        *(unsigned short *)(arg0 + 0x64) += 1;
        *(int *)(arg0 + 0x28) = 0x80 << 11;
        *(int *)(arg0 + 0x30) = 0x80 << 10;
        *(int *)(arg0 + 0x34) = 0x80 << 9;
        if (*(unsigned char *)(arg0 + 0x63) != 0) {
            Actor_TravelTo(arg0, 0xb8, 0, 0xa8);
        } else {
            Actor_TravelTo(arg0, 0xca, 0, 0xad);
        }
        break;

    case 7:
        *(unsigned short *)(arg0 + 0x64) += 1;
        break;

    case 8:
        if (*(int *)(arg0 + 0x38) == (int)(0x80 << 24) &&
            *(int *)(arg0 + 0x3c) == *(int *)(arg0 + 0x38) &&
            *(int *)(arg0 + 0x40) == *(int *)(arg0 + 0x3c)) {
            *(unsigned short *)(arg0 + 0x64) += 1;
        }
        break;

    case 9:
        {
            unsigned short zero = 0;
            *(unsigned short *)(arg0 + 0x64) = zero;
        }
        break;
    }

    return 1;
}


unsigned int OvlFunc_943_200889c(unsigned int arg0) {
    unsigned int v0;
    unsigned int v3;

    v0 = __Random(arg0);
    v3 = ((v0 * 5) << 3) >> 16;
    if (v3 == 0) {
        unsigned int v2;
        v2 = 0x80;
        v2 <<= 11;
        *(unsigned int *)((char *)arg0 + 0x28) = v2;
    }
    return 1;
}

void OvlFunc_943_20088c0(int *p)
{
    int v;

    v = p[6];
    if (v > 0x10000) {
        v -= 0x800;
        p[6] = v;
        p[7] = p[7] - 0x800;
    }
}

unsigned int OvlFunc_943_20088e0(struct Actor *actor)
{
    u8 *timer = &actor->__unk62;
    unsigned int r;

    if (*timer != 0) {
        *timer = *timer - 1;
    } else {
        r = (__Random0() * 300) >> 16;
        if (r > 200) {
            actor->facing = 0xd000;
        } else if (r > 100) {
            actor->facing = 0x5000;
        } else {
            actor->facing = 0;
        }
        *timer = ((__Random0() * 80) >> 16) + 80;
    }
    return 1;
}

extern unsigned char gOvl_0200c994[];

void *TolbiBoundShipDeck_GetEntrances(void) {
    return (void *)gOvl_0200c994;
}
extern unsigned char gOvl_0200cb44[];

void *TolbiBoundShipDeck_GetSpecialExits(void) {
    return (void *)gOvl_0200cb44;
}
extern unsigned char gOvl_0200cb64[];

void *TolbiBoundShipDeck_GetExits(void) {
    return (void *)gOvl_0200cb64;
}

extern int __GetFlag(int);
extern unsigned char gScript_968__0200d508[];
extern unsigned char Lm943_4ef0[] __asm__(".Lm943_4ef0");
extern unsigned char Lm943_5028[] __asm__(".Lm943_5028");
extern unsigned char Lm943_4cf8[] __asm__(".Lm943_4cf8");
extern unsigned char Lm943_4ba8[] __asm__(".Lm943_4ba8");

void *TolbiBoundShipDeck_GetActors(void)
{
    int flag;

    if (__GetFlag(0x93e)) {
        return gScript_968__0200d508;
    }
    if (__GetFlag(0x927)) {
        return Lm943_4ef0;
    }
    flag = __GetFlag(0x928);
    if (flag) {
        return Lm943_5028;
    }
    if (__GetFlag(0x911)) {
        if (__GetFlag(0x925)) {
            Lm943_4cf8[0x14e] = flag;
            Lm943_4cf8[0x1ae] = 2;
            Lm943_4cf8[0x1c6] = 2;
        } else if (__GetFlag(0x922)) {
            Lm943_4cf8[0x1ae] = 1;
            Lm943_4cf8[0x1c6] = 1;
        }
        return Lm943_4cf8;
    }
    return Lm943_4ba8;
}

extern unsigned char L59d0[] __asm__(".Lm943_59d0");
extern unsigned char L5a54[] __asm__(".Lm943_5a54");
extern unsigned char L5958[] __asm__(".Lm943_5958");
extern unsigned char L5778[] __asm__(".Lm943_5778");

unsigned int * TolbiBoundShipDeck_GetEvents(void) {
    if (__GetFlag(0x93e)) {
        return (unsigned int *)L59d0;
    } else {
        if (__GetFlag(0x8a << 4)) {
            return (unsigned int *)L5a54;
        } else {
            if (__GetFlag(0x928)) {
                return (unsigned int *)L5958;
            } else {
                return (unsigned int *)L5778;
            }
        }
    }
}

void OvlFunc_943_2008a48(void)
{
    extern unsigned char gScript_943__0200c4d8[];
    struct Actor *actor;

    API_CutsceneStart();
    if (API_GetFlag(0x925)) {
        API_MessageID(0x1e08);
        API_ActorMessage(0x15, 0);
    } else if (API_GetFlag(0x922)) {
        API_Func_80925cc(0x15, 2);
        API_MessageID(0x1d6f);
        API_ActorMessage(0x15, 0);
        actor = (struct Actor *)__MapActor_GetActor(0x15);
        actor->waveCounter = ((__Random0() * 0x5a) >> 16) + 0x3c;
        API_MapActor_SetBehavior(0x15, (int)gScript_943__0200c4d8);
    } else {
        API_MapActor_Emote(0x15, 0x103, 0);
        API_Func_809259c(0x15, 3);
        API_MessageID(0x1d36);
        API_ActorMessage(0x15, 0);
    }
    API_CutsceneEnd();
}

void OvlFunc_943_2008af0(void)
{
    extern unsigned char gScript_943__0200c4d8[];
    struct Actor *actor;

    API_CutsceneStart();
    if (API_GetFlag(0x925)) {
        API_MessageID(0x1e09);
        API_ActorMessage(0x18, 0);
    } else if (API_GetFlag(0x922)) {
        API_Func_80925cc(0x18, 2);
        API_MessageID(0x1d70);
        API_ActorMessage(0x18, 0);
        actor = (struct Actor *)__MapActor_GetActor(0x18);
        actor->waveCounter = ((__Random0() * 0x5a) >> 16) + 0x3c;
        API_MapActor_SetBehavior(0x18, (int)gScript_943__0200c4d8);
    } else {
        API_MapActor_Emote(0x18, 0x103, 0);
        API_Func_809259c(0x18, 3);
        API_MessageID(0x1d37);
        API_ActorMessage(0x18, 0);
    }
    API_CutsceneEnd();
}

#include "message.h"

void OvlFunc_943_2008b98(void)
{
    __CutsceneStart();
    __MessageID(MSG_1f00);
    __Func_8093054(0x15, 0);
    __CutsceneEnd();
}

extern void __CopyMapTiles(int, int, int, int, int, int);
void OvlFunc_943_2008bb8(void) {
    int a;
    int b;
    if (API_GetFlag(0x271) != 0) {
        return;
    }
    API_PlaySound(0x9e);
    a = 1;
    b = 3;
	__CopyMapTiles(0x1e, 0x5e, 0xd, 0x5e, a, b);
	API_SetFlag(0x271);
}

void OvlFunc_943_2008bf0(void){
    int a;
    int b;
    if (API_GetFlag(0x272) != 0)    {
        return;
    }
    API_PlaySound(0x9e);
    a = 1;
    b = 2;
    __CopyMapTiles(0x1e, 0x6c, 0xd, 0x6c, a, b);
    API_SetFlag(0x272);
}

void OvlFunc_943_2008c28(void) {
    extern unsigned char iwram_3001ebc[];
    unsigned char *map = *(unsigned char **)iwram_3001ebc;
    int didCopy;

    API_CutsceneStart();
    didCopy = 0;
    switch (*(short *)(map + 0x16c)) {
    case 1:
        didCopy = 1;
        OvlFunc_943_2008bb8();
        break;
    case 3:
        didCopy = 1;
        OvlFunc_943_2008bf0();
        break;
    }
    if (didCopy != 0) {
        API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
        API_Func_8092208(0, 1, -10);
        API_CutsceneWait(10);
    } else {
        API_PlaySound(0x7b);
    }
    API_Func_8091e9c(*(short *)(map + 0x16c));
}

static inline void Deck943_Byte(unsigned char *field, int value) { *field = value; }

void OvlFunc_943_2008ca0(void)
{
    extern unsigned char ActorCmd_ARRAY_943__0200c464[];

    extern unsigned char gScript_943__0200c49c[];
    extern void __Func_808e118(void);
    extern int Deck943_GetActor(int) asm("__MapActor_GetActor");
    extern void OvlFunc_943_2008bf0(void);
    extern void OvlFunc_943_200b9ec(int);
    extern void OvlFunc_943_200ba00(int, int);
    int flagValue1;
    unsigned char *actor;

    flagValue1 = API_GetFlag(0x911);
    if (flagValue1 == 0) return;
    API_CutsceneStart();
    __Func_808e118();
    API_MapActor_Face(0, 20, 10);
    API_Func_80933d4(0x19999, 0x3333);
    API_Func_80933f8(0xbe0000, -1, 0x2c40000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    API_Func_80925cc(22, 1);
    API_MessageID(0x1d26);
    OvlFunc_943_200b9ec(0x4016);
    API_MapActor_Emote(20, 0x102, 0x3c);
    API_Func_809259c(20, 2);
    OvlFunc_943_200b9ec(20);
    API_Func_80925cc(22, 1);
    API_Func_8092adc(22, 0x5000, 0);
    OvlFunc_943_200b9ec(0x4016);
    API_Func_80925cc(20, 1);
    OvlFunc_943_200ba00(20, 0xb000);
    OvlFunc_943_200b9ec(20);
    OvlFunc_943_200ba00(23, 0x3000);
    API_MapActor_SetAnim(23, 3);
    OvlFunc_943_200b9ec(0x4017);
    API_MapActor_Emote(22, 0x101, 0x28);
    API_Func_8092adc(22, 0x8000, 20);
    OvlFunc_943_200b9ec(0x4016);
    OvlFunc_943_200ba00(23, 0);
    API_MapActor_DoAnim(23, 4);
    OvlFunc_943_200b9ec(0x4017);
    API_MapActor_Emote(20, 0x100, 0x28);
    API_Func_809259c(20, 2);
    OvlFunc_943_200b9ec(20);
    API_MapActor_DoAnim(22, 3);
    OvlFunc_943_200b9ec(0x4016);
    OvlFunc_943_200ba00(20, 0xd000);
    API_MapActor_SetAnim(23, 3);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(22, 0x106, 0x28);
    OvlFunc_943_200ba00(22, 0x5000);
    API_MessageID(MSG_1d40);
    API_Func_809259c(22, 1);
    OvlFunc_943_200b9ec(0x4016);
    API_MapActor_Emote(20, 0x101, 0x28);
    API_Func_809259c(20, 2);
    OvlFunc_943_200b9ec(20);
    API_MapActor_Emote(22, 0x108, 20);
    API_ActorMessage_Wait(0x4016, 0, 20);
    API_MapActor_Emote(23, 0x102, 0x3c);
    OvlFunc_943_200b9ec(0x4017);
    OvlFunc_943_200ba00(22, 0x8000);
    API_MapActor_DoAnim(22, 3);
    API_ActorMessage_Wait(0x4016, 0, 20);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_Func_809259c(20, 2);
    OvlFunc_943_200b9ec(20);
    OvlFunc_943_200ba00(22, 0x5000);
    API_MapActor_SetAnim(22, 4);
    OvlFunc_943_200b9ec(22);
    API_Func_8092adc(20, 0xb000, 0);
    API_Func_8092adc(23, 0x3000, 0x28);
    API_Func_8092adc(23, 0, 0);
    API_Func_8092adc(20, 0xd000, 20);
    API_Func_80925cc(22, 2);
    API_CutsceneWait(20);
    OvlFunc_943_200b9ec(0x4016);
    API_MapActor_Surprise(23, 0x102);
    API_MapActor_Surprise(20, 0x102);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(22, 3);
    OvlFunc_943_200b9ec(0x4016);
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0xb60000, -1, 0x2f80000, 1);
    API_MapActor_SetSpeed(23, 0xcccc, 0x6666);
    API_MapActor_SetBehavior(23, (int)ActorCmd_ARRAY_943__0200c464);
    API_MapActor_SetSpeed(22, 0xcccc, 0x6666);
    API_MapActor_SetBehavior(22, (int)gScript_943__0200c49c);
    API_MapActor_SetSpeed(20, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(20, 0xb6, 0x2f8);
    API_Func_809259c(20, 2);
    API_MapActor_Emote(20, 0x100, 0x3c);
    OvlFunc_943_200ba00(20, 0xd000);
    API_ActorMessage_Wait(20, 0, 20);
    API_MapActor_DoAnim(20, 3);
    API_MapActor_Jump(20, 4, 0);
    API_Func_8092adc(20, 0x3000, 0x28);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0xd80000, -1, 0x3160000, 1);
    actor = (unsigned char *)Deck943_GetActor(20);
    actor += 0x23;
    Deck943_Byte(actor, 1 | *actor);
    API_MapActor_SetSpeed(20, 0x13333, 0x9999);
    API_MapActor_TravelToAnimWait(20, 0xb6, 0x30e);
    API_MapActor_TravelToAnimWait(20, 0xc0, 0x328);
    API_MapActor_TravelToAnimWait(20, 0xd8, 0x328);
    OvlFunc_943_200ba00(20, 0xd000);
    API_Func_80925cc(20, 2);
    OvlFunc_943_2008bf0();
    API_MapActor_TravelToAnimWait(20, 0xd8, 0x31e);
    API_MapActor_SetPos(20, 0, 0);
    actor = (unsigned char *)Deck943_GetActor(20);
    *(int *)(actor + 0x18) = 0x10000;
    actor = (unsigned char *)Deck943_GetActor(20);
    *(int *)(actor + 0x1c) = 0x10000;
    API_SetFlag(0x920);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20090a0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20091c8.s");

void OvlFunc_943_20092f0(void) {
    API_Func_80933d4(0x19999, 0x3333);
    API_Func_80933f8(0xd80000, -1, 0xce << 18, 1);
    API_Func_8093530();
    API_CutsceneWait(0x14);
    OvlFunc_943_2008bf0();
    API_CopyMapTiles(0x1e, 0x6c, 0xd, 0x6c, 1, 2);
    API_CutsceneWait(0xa);
    API_MapActor_SetPos(0x14, 0xd80000, 0xc8 << 18);
    API_MapActor_SetSpeed(0x14, 0x13333, 0x9999);
    API_MapActor_TravelToAnimWait(0x14, 0xd8, 0x32e);
    API_MapActor_Face(0, 0x14, 0xa);
    API_MapActor_DoAnim(0x14, 4);
    API_Func_809259c(0x14, 2);
    API_MapActor_Emote(0x14, 0x100, 0x14);
    API_MapActor_Face(0x14, 0, 0x14);
    API_Func_809259c(0x14, 2);
    API_MessageID(0x1d8d);
    API_ActorMessage_Wait(0x14, 0, 0x14);
    API_MapActor_Emote(0x14, 0x102, 0);
    API_SetFlag(0x923);
}

extern unsigned char iwram_3001e70[];
extern int Lm943_5b58 __asm__(".Lm943_5b58");
extern int Lm943_5b38 __asm__(".Lm943_5b38");
extern int Lm943_5b50[2] __asm__(".Lm943_5b50");
extern int Lm943_5b60[2] __asm__(".Lm943_5b60");
extern void OvlFunc_943_2009444(void);

int TolbiBoundShipDeck_MapInit(void)
{
    char *base = *(char **)iwram_3001e70 + 0x104;
    int *ptr;

    API_ClearFlag(0x11c);
    *(unsigned int *)(*(char **)(iwram_3001e70 + 0x4c) + 0x1c0) = 0x209;
    *(unsigned int *)(base + 0x1c) = 0;
    ptr = &Lm943_5b58;
    *ptr = (unsigned short)__Random0();
    ptr = &Lm943_5b38;
    *ptr = (unsigned short)__Random0();
    Lm943_5b50[0] = 0;
    Lm943_5b50[1] = 0;
    Lm943_5b60[0] = 0;
    __Func_800fe9c();
    __WaitFrames(1);
    OvlFunc_943_2009444();
    return 0;
}
extern void OvlFunc_943_2009684(void);
extern void OvlFunc_943_20097a0(void);
extern void OvlFunc_943_200985c(void);
extern void OvlFunc_943_2009920(void);
extern void OvlFunc_943_20099c0(void);
extern void OvlFunc_943_2009a98(void);
extern void OvlFunc_943_2009b58(void);
extern void OvlFunc_943_2009d0c(void);
extern void OvlFunc_943_2009db0(void);
extern void OvlFunc_943_2009f90(void);
extern void OvlFunc_943_200a2c0(void);
extern void OvlFunc_943_200a618(void);
extern void OvlFunc_943_200a9d4(void);
extern void OvlFunc_943_200ab7c(void);
extern void OvlFunc_943_200ac84(void);
extern void OvlFunc_943_200b1a8(void);
extern void OvlFunc_943_200b284(void);
extern void OvlFunc_943_200b4bc(void);
extern void OvlFunc_943_200b710(void);
extern void OvlFunc_943_200b950(void);
extern void OvlFunc_943_200b9b8(void);
extern void OvlFunc_943_200ba0c(void);
struct CS943D_StateView { unsigned char beforeRoom[0x1c2]; short room; };
extern struct CS943D_StateView CS943D_State __asm__("gState");
extern void __Func_8092950(int, int);
void OvlFunc_943_2009444(void)
{
    API_SetFlag(0x144);
    if (API_GetFlag(0x109)) {
        API_ClearFlag(0x271);
        API_ClearFlag(0x272);
    }
    if (API_GetFlag(0x93e)) {
        OvlFunc_943_200b950();
        OvlFunc_943_200b9b8();
        __Func_8092950(24, 2);
    } else if (API_GetFlag(0x8a0)) {
        OvlFunc_943_200b950();
        OvlFunc_943_200b9b8();
    } else {
        int storm = API_GetFlag(0x927);
        if (storm) {
            OvlFunc_943_200b950();
            OvlFunc_943_200b284();
            API_StartTask(OvlFunc_943_200b4bc, 0xc80);
            Lm943_5b50[1] = 0x200000;
            Lm943_5b60[1] = 0x13333;
            API_StartTask(OvlFunc_943_200b1a8, 0xc80);
        } else if (API_GetFlag(0x928)) {
            OvlFunc_943_200b950();
            Lm943_5b50[1] = storm;
            Lm943_5b60[1] = storm;
            API_StartTask(OvlFunc_943_200b1a8, 0xc80);
        }
    }
    if (!API_GetFlag(0x927)) OvlFunc_943_200b710();
    switch (CS943D_State.room) {
    case 4:
        ((struct Actor *)__MapActor_GetActor(0))->sprite->oam.priority = 1;
        break;
    case 10:
        if (API_GetFlag(0x928)) OvlFunc_943_2009b58();
        else OvlFunc_943_2009a98();
        return;
    case 11: OvlFunc_943_2009d0c(); return;
    case 12: OvlFunc_943_2009db0(); return;
    case 13: OvlFunc_943_2009f90(); return;
    case 14: OvlFunc_943_200a2c0(); return;
    case 15: OvlFunc_943_200a618(); return;
    case 16:
        if (API_GetFlag(0x109)) OvlFunc_943_2009920();
        else OvlFunc_943_200a9d4();
        return;
    case 17: OvlFunc_943_200ab7c(); return;
    case 18:
        if (!API_GetFlag(0x109)) OvlFunc_943_200ac84();
        return;
    case 19: OvlFunc_943_200ba0c(); return;
    }
    if (API_GetFlag(0x93e)) {
        *(int *)(*(unsigned char **)iwram_3001e70 + 0xec) = 0x410000;
    } else if (API_GetFlag(0x8a0)) {
        OvlFunc_943_20099c0();
    } else if (API_GetFlag(0x92b)) {
        OvlFunc_943_2009920();
    } else if (API_GetFlag(0x928)) {
        OvlFunc_943_200985c();
    } else if (API_GetFlag(0x925)) {
        OvlFunc_943_20097a0();
    } else if (API_GetFlag(0x911)) {
        OvlFunc_943_2009684();
    }
}
extern unsigned char gScript_943__0200c4d8[];
extern void __MapActor_SetBehavior(int, void *);
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);

void OvlFunc_943_2009684(void)
{
    API_Func_8092b08(0x1b, 1);
    API_Func_8092b08(0x17, 1);
    API_Func_8092b08(0x16, 1);
    API_Func_8092b08(0x1a, 1);
    API_Func_8092b08(0x18, 1);

    if (__GetFlag(0x920) != 0) {
        API_MapActor_SetPos(0x16, 0xa20000, 0x29a0000);
        ((struct Actor *)__MapActor_GetActor(0x16))->facing = 0x8000;
        API_MapActor_SetPos(0x17, 0, 0);
        API_MapActor_SetPos(0x14, 0, 0);
    }

    if (__GetFlag(0x922) != 0) {
        API_MapActor_SetPos(0x15, 0x1080000, 0x2be0000);
        ((struct Actor *)__MapActor_GetActor(0x15))->facing = 0x5000;
        ((struct Actor *)__MapActor_GetActor(0x15))->waveCounter = _umodsi3_RAM(__Random0(), 90) + 60;
        __MapActor_SetBehavior(0x15, gScript_943__0200c4d8);

        API_MapActor_SetPos(0x18, 0xf80000, 0x2a80000);
        ((struct Actor *)__MapActor_GetActor(0x18))->waveCounter = _umodsi3_RAM(__Random0(), 90) + 60;
        __MapActor_SetBehavior(0x18, gScript_943__0200c4d8);

        API_MapActor_SetPos(0x16, 0, 0);
    } else if (__GetFlag(0x923) != 0) {
        API_MapActor_SetPos(0x14, 0xf60000, 0x2000000);
        ((struct Actor *)__MapActor_GetActor(0x14))->facing = 0;
    }
}
extern void __MapActor_SetPos(int, int, int);
void __Func_8092b08(int, int);

void OvlFunc_943_20097a0(void) {
    void __MapActor_SetPos(int, int, int);
    void *__MapActor_GetActor(int);
    void __Func_8092b08(int, int);

    struct Actor *actor;

    __MapActor_SetPos(0x15, 0x1060000, 0x2c20000);
    actor = (struct Actor *)__MapActor_GetActor(0x15);
    actor->facing = 0x5000;
    __MapActor_SetPos(0x18, 0xa40000, 0x2880000);
    actor = (struct Actor *)__MapActor_GetActor(0x18);
    actor->facing = 0;
    __Func_8092b08(0x18, 1);
    __MapActor_SetPos(0x19, 0xc60000, 0x2990000);
    actor = (struct Actor *)__MapActor_GetActor(0x19);
    actor->facing = 0x8000;
    __Func_8092b08(0x19, 1);
    __MapActor_SetPos(0x1a, 0xbc0000, 0x2a60000);
    actor = (struct Actor *)__MapActor_GetActor(0x1a);
    actor->facing = 0xb000;
    __MapActor_SetPos(0x1b, 0xba0000, 0x27b0000);
    actor = (struct Actor *)__MapActor_GetActor(0x1b);
    actor->facing = 0x5000;
    __MapActor_SetPos(0x16, 0, 0);
    __MapActor_SetPos(0x17, 0, 0);
    __MapActor_SetPos(0x14, 0, 0);
}
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_943__0200c980[5];
extern ActorCmd gScript_943__0200c58c[];
extern ActorCmd gScript_943__0200c628[79];
extern unsigned char Lm943_5160[] __asm__(".Lm943_5160");
extern void OvlFunc_943_200c218(void);

extern void __CutsceneStart(void);
extern void __LoadFieldActors(void *);
extern void __WaitFrames(int);
extern void __MapActor_SetBehavior(int, void *);
extern void __MapActor_SetSpeed(int, int, int);
extern int __GetFlag(int);
extern void __CutsceneEnd(void);

void OvlFunc_943_200985c(void) {
    struct Actor *actor;

    API_CutsceneStart();
    __LoadFieldActors(Lm943_5160);
    API_WaitFrames(1);
    API_MapActor_SetPos(0x14, 0, 0);
    API_MapActor_SetPos(0x17, 0xee0000, 0x2720000);
    API_MapActor_SetPos(0x16, 0xcc0000, 0x2090000);
    actor = (struct Actor *)__MapActor_GetActor(0x16);
    actor->pos.y = 0x80 << 13;
    ((struct Actor *)__MapActor_GetActor(0x16))->collision |= 0x80;
    API_MapActor_SetSpeed(0x16, 0x9999, 0x4ccc);
    __MapActor_SetBehavior(0x16, gScript_943__0200c58c);
    ((struct Actor *)__MapActor_GetActor(0x15))->collision |= 0x80;
    API_MapActor_SetSpeed(0x15, 0xcccc, 0x6666);
    __MapActor_SetBehavior(0x15, gScript_943__0200c628);
    if (__GetFlag(0x109) != 0) {
        OvlFunc_943_200c218();
    }
    API_CutsceneEnd();
}


void OvlFunc_943_2009920(void)
{
    struct Actor *actor;

    __CutsceneStart();
    __LoadFieldActors(Lm943_5160);
    __WaitFrames(1);
    API_MapActor_SetPos(0x14, 0, 0);
    API_MapActor_SetPos(0x17, 0xee0000, 0x2720000);
    API_MapActor_SetPos(0x16, 0x86 << 17, 0x2a60000);
    actor = (struct Actor *)__MapActor_GetActor(0x16);
    actor->facing = 0;
    __MapActor_SetBehavior(0x16, gScript_943__0200c980);
    ((struct Actor *)__MapActor_GetActor(0x15))->collision |= 0x80;
    API_MapActor_SetSpeed(0x15, 0xcccc, 0x6666);
    __MapActor_SetBehavior(0x15, gScript_943__0200c628);
    if (__GetFlag(0x109) != 0) {
        OvlFunc_943_200c218();
    }
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20099c0.s");
extern void OvlFunc_943_2009c14(int a, int b);
#include "nonmatching.h"

void __Func_80933f8(int, int, int, int);
void __Func_800fe9c(void);
void OvlFunc_943_2009a98(void)
{
    void __CutsceneStart(void);
    void __Func_80933f8(int, int, int, int);
    void __WaitFrames(int);
    void __MapActor_SetPos(int, int, int);
    void *__MapActor_GetActor(int);
    void __Func_800fe9c(void);
    void OvlFunc_943_2009c14(int, int);

    struct Actor *actor;

    __CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    __WaitFrames(1);
    API_MapActor_SetPos(0x14, 0, 0);
    API_MapActor_SetPos(0x16, 0, 0);
    API_MapActor_SetPos(0x18, 0, 0);
    API_MapActor_SetPos(0x19, 0, 0);
    API_MapActor_SetPos(0x1a, 0, 0);
    API_MapActor_SetPos(0x1b, 0, 0);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(0x17, 0, 0);
    actor = (struct Actor *)__MapActor_GetActor(0x17);
    actor->facing = 0xc0 << 6;
    API_MapActor_SetPos(0x15, 0xe80000, 0x28a0000);
    actor = (struct Actor *)__MapActor_GetActor(0x15);
    actor->facing = 0xb0 << 8;
    API_Func_80933f8(0xe80000, -1, 0x27c0000, 0);
    __Func_800fe9c();
    __WaitFrames(1);
    OvlFunc_943_2009c14(0x17, 0x15);
}
extern void OvlFunc_943_2009c14(int a, int b);
#include "nonmatching.h"

void __Func_8092950(int, int);
void __SetCameraTarget(int, int);
void __MapActor_SetIdle(int);
void OvlFunc_943_2009b58(void)
{
    void __CutsceneStart(void);
    void __LoadFieldActors(void *);
    void __WaitFrames(int);
    void __MapActor_SetPos(int, int, int);
    void __Func_8092950(int, int);
    void *__MapActor_GetActor(int);
    void __SetCameraTarget(int, int);
    void __Func_800fe9c(void);
    void __MapActor_SetIdle(int);
    void OvlFunc_943_2009c14(int, int);

    struct Actor *actor;

    __CutsceneStart();
    __LoadFieldActors(Lm943_5160);
    __WaitFrames(1);
    API_MapActor_SetPos(0, 0xe80000, 0x27c0000);
    __Func_8092950(0, 0xf);
    actor = (struct Actor *)__MapActor_GetActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    __WaitFrames(1);
    __SetCameraTarget(0, 0);
    __Func_800fe9c();
    __WaitFrames(1);
    __MapActor_SetIdle(0x16);
    __MapActor_SetIdle(0x15);
    __WaitFrames(1);
    API_MapActor_SetPos(0x16, 0, 0);
    API_MapActor_SetPos(0x15, 0, 0);
    API_MapActor_SetPos(0x14, 0, 0);
    actor = (struct Actor *)__MapActor_GetActor(0x14);
    actor->facing = 0xc0 << 6;
    API_MapActor_SetPos(0x17, 0xe80000, 0x28a0000);
    actor = (struct Actor *)__MapActor_GetActor(0x17);
    actor->facing = 0xb0 << 8;
    __WaitFrames(1);
    OvlFunc_943_2009c14(0x14, 0x17);
}
extern void __CutsceneWait(int a);
extern void OvlFunc_943_200ba00(int a, int b);
extern unsigned char iwram_3001ebc[];

void __MapTransitionIn(void);
void __WaitMapTransition(void);
void OvlFunc_943_2008bb8(void);
void __MapActor_TravelToAnimWait(int, int, int);
void __MapActor_DoAnim(int, int);
void __MapActor_Jump(int, int, int);
void __Func_809259c(int, int);
void __MessageID(int);
void __ActorMessage_Wait(int, int, int);
void __MapTransitionOut(void);
void __Func_8091e9c(int);

void OvlFunc_943_2009c14(int a, int b)
{
    *(unsigned int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x100;
    __MapTransitionIn();

    __WaitMapTransition();
    __CutsceneWait(0x14);
    OvlFunc_943_2008bb8();
    API_MapActor_SetPos(a, 0xd80000, 0x24c0000);
    __MapActor_SetSpeed(a, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(a, 0xd8, 0x258);
    API_MapActor_TravelToAnimWait(a, 0xda, 0x25c);
    API_MapActor_TravelToAnimWait(a, 0xea, 0x25c);
    API_MapActor_TravelToAnimWait(a, 0xec, 0x26a);
    API_Func_8092adc(a, 0x5000, 0x14);
    __MapActor_DoAnim(a, 3);
    __CutsceneWait(0x14);
    OvlFunc_943_200ba00(b, 0x5000);
    __MapActor_Jump(b, 4, 0x28);
    __Func_809259c(b, 2);
    __MessageID(0x1e39);
    __ActorMessage_Wait(b, 0, 0x14);
    *(unsigned int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x202;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(0xa);
}
void OvlFunc_943_2009d0c(void)
{
    extern void __Func_8092950(int, int);

    API_CutsceneStart();
    __LoadFieldActors(Lm943_5160);
    API_WaitFrames(1);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    *(unsigned int *)(*(char **)iwram_3001ebc + (0xe0 << 1)) = (0xe0 << 1) + 0x42;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x14);
    API_Func_80925cc(0x14, 1);
    API_MessageID(0x1e41);
    API_ActorMessage_Wait(0x14, 0, 0xa);
    OvlFunc_943_200ba00(0x16, 0xa0 << 7);
    API_MapActor_Jump(0x16, 4, 0x14);
    API_Func_809259c(0x16, 2);
    API_ActorMessage_Wait(0x6016, 0, 0x14);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(0xb);
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009db0.s");

static inline void CS943_Byte(unsigned char *p, int value) { *p = value; }

void OvlFunc_943_2009f90(void)
{
    extern unsigned char CS_943_5160[] __asm__(".Lm943_5160");
    extern unsigned char CS_943_5268[] __asm__(".Lm943_5268");
    extern unsigned char gScript_943__0200c764[];
    extern unsigned char gScript_943__0200c7a8[];
    extern unsigned char gScript_943__0200c7ec[];
    extern unsigned char gScript_943__0200c80c[];
    extern unsigned char gScript_943__0200c814[];
    extern unsigned char gScript_943__0200c888[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_800c5b4(void);
    extern void __Func_800c5fc(void);
    extern void __Func_8019aa0(int, int, int);
    extern void __Func_8093304(int);
    extern void __LoadFieldActors(void *);
    extern int CS943_Actor(int) __asm__("__MapActor_GetActor");
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_943_2008bb8(void);
    extern void OvlFunc_943_200ba00(int, int);
    unsigned char *actor;

    API_CutsceneStart();
    __Func_8092950(0, 15);
    actor = (unsigned char *)CS943_Actor(0);
    __Actor_SetSpriteFlags(actor, 0);
    __LoadFieldActors(CS_943_5160);
    API_WaitFrames(1);
    __LoadFieldActors(CS_943_5268);
    API_WaitFrames(1);
    API_MapActor_SetAnim(31, 0);
    actor = (unsigned char *)CS943_Actor(24);
    __Actor_SetSpriteFlags(actor, 1);
    actor = (unsigned char *)CS943_Actor(25);
    __Actor_SetSpriteFlags(actor, 1);
    actor = (unsigned char *)CS943_Actor(26);
    __Actor_SetSpriteFlags(actor, 1);
    actor = (unsigned char *)CS943_Actor(27);
    __Actor_SetSpriteFlags(actor, 1);
    actor = (unsigned char *)CS943_Actor(28);
    __Actor_SetSpriteFlags(actor, 1);
    actor = (unsigned char *)CS943_Actor(29);
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetPos(22, 0x1000000, 0x2800000);
    API_MapActor_SetBehavior(22, (int)gScript_943__0200c80c);
    API_MapActor_SetPos(21, 0x10c0000, 0x2b40000);
    API_MapActor_SetBehavior(22, (int)gScript_943__0200c80c);
    API_MapActor_SetPos(24, 0xf20000, 0x25c0000);
    API_MapActor_SetPos(25, 0x1080000, 0x2580000);
    API_MapActor_SetPos(26, 0xfe0000, 0x29c0000);
    API_MapActor_SetPos(27, 0x11a0000, 0x2920000);
    actor = (unsigned char *)CS943_Actor(24);
    actor += 0x63;
    CS943_Byte(actor, 0);
    actor = (unsigned char *)CS943_Actor(25);
    actor += 0x63;
    CS943_Byte(actor, 1);
    actor = (unsigned char *)CS943_Actor(26);
    actor += 0x63;
    CS943_Byte(actor, 0);
    actor = (unsigned char *)CS943_Actor(27);
    actor += 0x63;
    CS943_Byte(actor, 1);
    API_MapActor_SetBehavior(24, (int)gScript_943__0200c7a8);
    API_MapActor_SetBehavior(25, (int)gScript_943__0200c7a8);
    API_MapActor_SetBehavior(26, (int)gScript_943__0200c764);
    API_MapActor_SetBehavior(27, (int)gScript_943__0200c764);
    API_MapActor_SetPos(20, 0, 0);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x202;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x190);
    API_MapActor_SetPos(28, 0xfe0000, 0x2e40000);
    API_MapActor_SetPos(29, 0x180000, 0x24a0000);
    API_MapActor_SetSpeed(28, 0x19999, 0xcccc);
    API_MapActor_SetSpeed(29, 0x19999, 0xcccc);
    API_MapActor_TravelTo(29, 0xac, 0x284);
    API_MapActor_TravelToWait(28, 0xc8, 0x294);
    API_MapActor_SetSpeed(0, 0x40000, 0x20000);
    API_MapActor_TravelTo(0, 0xae, 0x26c);
    API_MapActor_TravelToWait(28, 0xb4, 0x244);
    API_PlaySound(0x92);
    API_MapActor_SetBehavior(28, (int)gScript_943__0200c7ec);
    API_MapActor_SetBehavior(29, (int)gScript_943__0200c7ec);
    API_PlaySound(0xf0);
    API_MapActor_SetPos(31, 0x860000, 0x2520000);
    API_MapActor_SetBehavior(31, (int)gScript_943__0200c814);
    API_CutsceneWait(10);
    API_MapActor_SetPos(30, 0x860000, 0x2480000);
    API_MapActor_SetSpeed(30, 0x40000, 0x20000);
    actor = (unsigned char *)CS943_Actor(30);
    *(int *)(actor + 0x28) = 0x80000;
    API_MapActor_TravelToWait(30, 0xba, 0x264);
    actor = (unsigned char *)CS943_Actor(30);
    __Actor_SetSpriteFlags(actor, 1);
    API_CutsceneWait(10);
    API_MapActor_SetSpeed(30, 0x20000, 0x10000);
    API_MapActor_TravelToWait(30, 0xd8, 0x258);
    OvlFunc_943_200ba00(30, 0xc000);
    OvlFunc_943_2008bb8();
    API_CutsceneWait(10);
    API_MapActor_SetBehavior(30, (int)gScript_943__0200c888);
    API_CutsceneWait(10);
    API_MapActor_SetBehavior(28, (int)gScript_943__0200c888);
    API_CutsceneWait(10);
    __MapActor_RunScript(29, gScript_943__0200c888);
    API_CutsceneWait(20);
    API_PlaySound(0x93);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_MapActor_SetIdle(24);
    API_MapActor_SetIdle(25);
    API_MapActor_SetIdle(26);
    API_MapActor_SetIdle(27);
    API_CutsceneWait(10);
    __Func_800c5b4();
    __Func_8093304(21);
    __Func_8019aa0(0x1e45, 1, 0);
    __Func_800c5fc();
    API_Func_8091e9c(13);
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200a2c0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200a618.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200a9d4.s");
void OvlFunc_943_200ab7c(void)
{
    extern void OvlFunc_943_200b9ec(int);
    struct Actor *actor;

    __CutsceneStart();
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __LoadFieldActors(Lm943_5160);
    __WaitFrames(1);

    API_MapActor_SetPos(0x14, 0xc40000, 0x1f60000);
    actor = (struct Actor *)__MapActor_GetActor(0x14);
    actor->facing = 0xa000;

    API_MapActor_SetPos(0x16, 0xb80000, 0x20c0000);
    actor = (struct Actor *)__MapActor_GetActor(0x16);
    actor->facing = 0xb000;

    API_Func_8092b08(0x15, 1);
    API_MapActor_SetPos(0x15, 0xb80000, 0x2780000);
    actor = (struct Actor *)__MapActor_GetActor(0x15);
    actor->facing = 0xb000;

    *(unsigned int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x202;
    __MapTransitionIn();
    __WaitMapTransition();
    __CutsceneWait(0x14);

    API_MapActor_Jump(0x16, 4, 0xa);
    API_MapActor_Jump(0x16, 6, 0x14);
    API_MessageID(0x1ee5);
    OvlFunc_943_200b9ec(0x16);

    API_MapActor_DoAnim(0x14, 3);
    API_MapActor_SetSpeed(0x15, 0x30000, 0x18000);
    API_MapActor_TravelToAnimWait(0x15, 0xb4, 0x222);
    API_Func_8092adc(0x15, 0xb000, 0x28);
    API_Func_80925cc(0x15, 1);
    OvlFunc_943_200b9ec(0x15);
    API_Func_8091e9c(0xf);
}

static inline void ShipPassengerByte(unsigned char *field, int value)
{
    *field = value;
}

void OvlFunc_943_200ac84(void)
{
    extern void __Func_8092950(int, int);
    extern unsigned int OvlFunc_943_200b150(unsigned int);
    extern void OvlFunc_943_2008bb8(void);
    extern void OvlFunc_943_200b9ec(int);
    extern void OvlFunc_943_200ba00(int, int);
    extern unsigned char gScript_943__0200c8e0[];
    unsigned int available[4];
    unsigned int ordered[4];
    unsigned int roles[4];
    unsigned int i;
    unsigned int count = 0;
    unsigned int passenger;
    unsigned int wanted;
    unsigned char *actor;

    for (i = 0; i < 4; i++) {
        available[i] = OvlFunc_943_200b150(i);
        roles[i] = 0;
    }
    wanted = 23;
    for (i = 0; i < 4; i++) {
        if (available[i] == wanted) {
            ordered[count] = wanted;
            roles[count] = count;
            count++;
            break;
        }
    }
    wanted = 24;
    for (i = 0; i < 4; i++) {
        if (available[i] == wanted) {
            ordered[count] = wanted;
            roles[count] = count;
            count++;
            break;
        }
    }
    wanted = 25;
    for (i = 0; i < 4; i++) {
        if (available[i] == wanted) {
            ordered[count] = wanted;
            roles[count] = count;
            count++;
            break;
        }
    }
    wanted = 27;
    for (i = 0; i < 4; i++) {
        if (available[i] == wanted) {
            ordered[count] = wanted;
            roles[count] = count;
            count++;
            break;
        }
    }
    if (count != 4) {
    wanted = 28;
    for (i = 0; i < 4; i++) {
        if (available[i] == wanted) {
            ordered[count] = wanted;
            roles[count] = count;
            count++;
            break;
        }
    }
    }
    if (count != 4) {
    wanted = 29;
    for (i = 0; i < 4; i++) {
        if (available[i] == wanted) {
            ordered[count] = wanted;
            roles[count] = count;
            count++;
            break;
        }
    }
    }
    if (count != 4) {
    wanted = 26;
    for (i = 0; i < 4; i++) {
        if (available[i] == wanted) {
            ordered[count] = wanted;
            roles[count] = 10;
            count++;
            break;
        }
    }
    }
    if (count != 4) {
    wanted = 30;
    for (i = 0; i < 4; i++) {
        if (available[i] == wanted) {
            ordered[count] = wanted;
            roles[count] = 11;
            count++;
            break;
        }
    }
    }
    if (count != 4) {
    wanted = 31;
    for (i = 0; i < 4; i++) {
        if (available[i] == wanted) {
            ordered[count] = wanted;
            roles[count] = 20;
            break;
        }
    }
    }
    API_CutsceneStart();
    __Func_8092950(0, 15);
    actor = (unsigned char *)((int)__MapActor_GetActor(0));
    __Actor_SetSpriteFlags(actor, 0);
    actor = (unsigned char *)((int)__MapActor_GetActor(0));
    if (actor != 0) {
        API_MapActor_SetPos(32, *(int *)(actor + 8), *(int *)(actor + 16));
    }
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(20);
    API_SetCameraTarget(32, 1);
    OvlFunc_943_2008bb8();
    API_CutsceneWait(10);
    for (i = 0; i < 4; i++) {
        passenger = ordered[i];
        API_MapActor_SetPos(passenger, 0xd80000, 0x2480000);
        if (roles[i] == 20) {
            API_MapActor_SetSpeed(passenger, 0xcccc, 0x6666);
        } else {
            API_MapActor_SetSpeed(passenger, 0x10000, 0x8000);
        }
        API_MapActor_TravelToAnimWait(passenger, 0xd8, 0x258);
        API_MapActor_TravelToAnimWait(passenger, 0xc0, 0x26a);
        API_MapActor_TravelToAnimWait(passenger, 0xc0, 0x290);
        switch (roles[i]) {
        case 0:
            API_MapActor_Emote(passenger, 0x102, 60);
            API_MessageID(0x1ee7);
            break;
        case 1:
            OvlFunc_943_200ba00(passenger, 0xd000);
            API_MapActor_Emote(passenger, 0x102, 60);
            API_MessageID(0x1ee8);
            break;
        case 2:
            API_MapActor_Emote(passenger, 0x105, 60);
            API_MessageID(0x1ee9);
            break;
        case 3:
            API_Func_80925cc(passenger, 1);
            API_MessageID(0x1eea);
            break;
        case 10:
            API_MapActor_DoAnim(passenger, 3);
            API_MessageID(0x1eeb);
            break;
        case 11:
            API_MapActor_SetAnim(passenger, 4);
            API_MessageID(0x1eec);
            break;
        case 20:
            API_MapActor_DoAnim(passenger, 4);
            API_MapActor_Emote(passenger, 0x107, 40);
            API_MessageID(0x1eed);
            break;
        }
        OvlFunc_943_200b9ec(passenger);
        API_MapActor_SetBehavior(passenger, (int)gScript_943__0200c8e0);
    }
    API_MapActor_WaitScript(passenger);
    API_CutsceneWait(40);
    API_MapActor_SetPos(0, 0xd80000, 0x2480000);
    API_WaitFrames(1);
    __Func_8092950(0, 0);
    actor = (unsigned char *)((int)__MapActor_GetActor(0));
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0xd8, 0x258);
    API_MapActor_TravelToAnimWait(0, 0xbe, 0x264);
    API_MessageID(0x1eee);
    OvlFunc_943_200b9ec(20);
    API_Func_8092adc(0, 0xc000, 0);
    actor = (unsigned char *)((int)__MapActor_GetActor(32));
    actor += 0x55;
    ShipPassengerByte(actor, 0);
    API_MapActor_SetSpeed(32, 0x20000, 0x10000);
    API_MapActor_TravelTo(32, 0xc4, 0x234);
    API_MapActor_SetSpeed(20, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(20, 0xb6, 0x22b);
    API_Func_8092adc(20, 0x3000, 20);
    API_Func_80925cc(20, 1);
    OvlFunc_943_200b9ec(20);
    API_MapActor_DoAnim(20, 3);
    OvlFunc_943_200b9ec(20);
    API_Func_8092adc(20, 0x8000, 40);
    OvlFunc_943_200b9ec(20);
    OvlFunc_943_200ba00(20, 0x3000);
    OvlFunc_943_200b9ec(20);
    API_MapActor_DoAnim(20, 3);
    API_SetCameraTarget(0, 1);
    API_MapActor_TravelToAnimWait(20, 0xbc, 0x200);
    API_Func_8092adc(20, 0x3000, 0);
    API_MapActor_SetPos(32, 0, 0);
    API_ClearFlag(0x12f);
    API_CutsceneEnd();
}

unsigned int OvlFunc_943_200b150(unsigned int arg0) {
    unsigned int actor;
    unsigned int flag;
    unsigned int i;

    flag = 0;
    actor = 0x17;
    switch (arg0) {
    case 0:
        flag = 0x92c;
        break;
    case 1:
        flag = 0x935;
        break;
    case 2:
        flag = 0x917;
        break;
    case 3:
        flag = 0x99 << 4;
        break;
    }

    for (i = 0; i <= 8; i++, flag++, actor++) {
        if (API_GetFlag(flag)) {
            return actor;
        }
    }
    return 0;
}

extern unsigned char iwram_3001e70[];
extern int __cos(int);
extern int __sin(int);
extern int Lm943_5b58 __asm__(".Lm943_5b58");
extern int Lm943_5b38 __asm__(".Lm943_5b38");
extern int Lm943_5b50[2] __asm__(".Lm943_5b50");
extern int Lm943_5b60[2] __asm__(".Lm943_5b60");

void OvlFunc_943_200b1a8(void)
{
    char *base = *(char **)iwram_3001e70;
    int *pos = *(int **)base;
    int c = __cos(Lm943_5b58);
    int s = __sin(Lm943_5b38);
    struct Actor *actor;

    *pos++ += c >> 1;
    *pos += s;

    Lm943_5b58 += (__Random0() * 0x180) >> 16;
    Lm943_5b38 += (__Random0() << 9) >> 16;
    Lm943_5b58 &= 0xffff;
    Lm943_5b38 &= 0xffff;

    actor = (struct Actor *)(base + 0x104);
    actor->pos.x = Lm943_5b50[0];
    Lm943_5b50[0] -= Lm943_5b60[0];
    if (Lm943_5b50[0] < 0)
        Lm943_5b50[0] += 0x200000;
    if (Lm943_5b50[0] > 0x200000)
        Lm943_5b50[0] -= 0x200000;

    actor->pos.y = Lm943_5b50[1];
    Lm943_5b50[1] -= Lm943_5b60[1];
    if (Lm943_5b50[1] < 0)
        Lm943_5b50[1] += 0x200000;
}

void OvlFunc_943_200b284(void) {
    extern void OvlFunc_943_200b380(int);
    extern void OvlFunc_943_200b3b8(void);
    extern unsigned char Lm943_5b90[] __asm__(".Lm943_5b90");
    unsigned char *actor;
    int *p90;

    ((struct Actor *)__MapActor_GetActor(8))->collision = 0;
    ((struct Actor *)__MapActor_GetActor(9))->collision = 0;
    ((struct Actor *)__MapActor_GetActor(0xa))->collision = 0;
    ((struct Actor *)__MapActor_GetActor(0xb))->collision = 0;

    OvlFunc_943_200b380(8);
    OvlFunc_943_200b380(9);
    OvlFunc_943_200b380(0xa);
    OvlFunc_943_200b380(0xb);
    OvlFunc_943_200b380(0xc);
    OvlFunc_943_200b380(0xd);
    OvlFunc_943_200b380(0xe);
    OvlFunc_943_200b380(0xf);

    actor = (unsigned char *)__MapActor_GetActor(0xc);
    p90 = (int *)Lm943_5b90;
    p90[0] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(0xd);
    p90[1] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(0xe);
    p90[2] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(0xf);
    p90[3] = *(int *)(actor + 0x10);

    OvlFunc_943_200b380(0x10);
    OvlFunc_943_200b380(0x11);
    OvlFunc_943_200b380(0x12);
    OvlFunc_943_200b380(0x13);

    actor = (unsigned char *)__MapActor_GetActor(0x10);
    *(int *)(actor + 0x18) = 0xffff0000;

    actor = (unsigned char *)__MapActor_GetActor(0x11);
    *(int *)(actor + 0x18) = 0xffff0000;

    actor = (unsigned char *)__MapActor_GetActor(0x12);
    *(int *)(actor + 0x18) = 0xffff0000;

    actor = (unsigned char *)__MapActor_GetActor(0x13);
    *(int *)(actor + 0x18) = 0xffff0000;

    actor = (unsigned char *)__MapActor_GetActor(0x10);
    p90[4] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(0x11);
    p90[5] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(0x12);
    p90[6] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(0x13);
    p90[7] = *(int *)(actor + 0x10);

    OvlFunc_943_200b3b8();
}

void OvlFunc_943_200b380(int actorId) {
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(actorId);

    if (actor != 0) {
        __Func_8092b08(actorId, 3);
        __Actor_SetSpriteFlags(actor, 0);
        actor->collision = 0;
        actor->flags |= 2;
    }
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b3b8.s");

unsigned int OvlFunc_943_200b464(unsigned int arg0) {
    extern unsigned int Lm943_5b08[] __asm__(".Lm943_5b08");
    unsigned int flag;
    unsigned int i;

    flag = 0;
    switch (arg0) {
    case 0:
        flag = 0x92c;
        break;
    case 1:
        flag = 0x935;
        break;
    case 2:
        flag = 0x917;
        break;
    case 3:
        flag = 0x99 << 4;
        break;
    }

    for (i = 0; i <= 8; i++) {
        if (API_GetFlag(flag + i)) {
            return Lm943_5b08[i];
        }
    }
    return 0;
}

extern void OvlFunc_943_200b558(int, int);
extern void OvlFunc_943_200b5ec(int, int, int);
extern unsigned char L5b30[] __asm__(".Lm943_5b30");

void OvlFunc_943_200b4bc(void)
{
    unsigned short *r5;
    unsigned short r3;
    unsigned short r2;

    OvlFunc_943_200b558(8, 0);
    r5 = (unsigned short *)L5b30;
    r3 = 0;
    *r5 = r3;
    OvlFunc_943_200b558(9, 1);
    r3 = r5[1];
    r3 += 0x80;
    r5[1] = r3;
    OvlFunc_943_200b558(0xa, 2);
    r3 = r5[2];
    r2 = 0x80;
    r2 <<= 1;
    r3 += r2;
    r5[2] = r3;
    OvlFunc_943_200b558(0xb, 3);
    r3 = r5[3];
    r2 = 0x80;
    r2 <<= 2;
    r3 += r2;
    r5[3] = r3;
    OvlFunc_943_200b5ec(0xc, 0, 0);
    OvlFunc_943_200b5ec(0xd, 1, 0);
    OvlFunc_943_200b5ec(0xe, 2, 0);
    OvlFunc_943_200b5ec(0xf, 3, 0);
    OvlFunc_943_200b5ec(0x10, 4, 1);
    OvlFunc_943_200b5ec(0x11, 5, 1);
    OvlFunc_943_200b5ec(0x12, 6, 1);
    OvlFunc_943_200b5ec(0x13, 7, 1);
}

extern unsigned short L5b30_s[] __asm__(".Lm943_5b30");
extern unsigned short L5b40_s[] __asm__(".Lm943_5b40");
void OvlFunc_943_200b558(int actor, int i)
{
    extern void __MapActor_SetAnim(int, int);
    unsigned short v = L5b40_s[i];

    if (v > 0x6800 && v < 0x7000) {
        L5b30_s[i] += 0x70;
        __MapActor_SetAnim(actor, 3);
    } else if (v > 0xe800 && v < 0xf000) {
        L5b30_s[i] += 0xe0;
        __MapActor_SetAnim(actor, 3);
    } else if (v > 0x7000 && v < 0xf000) {
        L5b30_s[i] += 0x1c0;
        __MapActor_SetAnim(actor, 2);
    } else {
        L5b30_s[i] += 0x300;
        __MapActor_SetAnim(actor, 1);
    }
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b5ec.s");
extern unsigned char Lm943_5b40[] __asm__(".Lm943_5b40");
extern unsigned char Lm943_5b70[] __asm__(".Lm943_5b70");
extern unsigned char Lm943_5b90[] __asm__(".Lm943_5b90");

extern void OvlFunc_943_200b380(int);
extern void __Func_8092b54(int, int);

void OvlFunc_943_200b710(void)
{
    unsigned int i;
    unsigned char *actor;
    int *p70;
    int *p90;

    for (i = 0; i <= 7; i++) {
        ((unsigned short *)Lm943_5b40)[i] = 0xc000;
    }

    OvlFunc_943_200b380(8);
    __MapActor_SetPos(9, 0, 0);
    __MapActor_SetPos(10, 0, 0);
    __MapActor_SetPos(11, 0, 0);
    __MapActor_SetPos(12, 0, 0);
    OvlFunc_943_200b380(13);
    OvlFunc_943_200b380(14);
    OvlFunc_943_200b380(15);

    p70 = (int *)Lm943_5b70;
    p70[0] = 0;
    p70[1] = 0;
    p70[2] = 0;
    p70[3] = 0;

    actor = (unsigned char *)__MapActor_GetActor(8);
    p90 = (int *)Lm943_5b90;
    p90[0] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(13);
    p90[1] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(14);
    p90[2] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(15);
    p90[3] = *(int *)(actor + 0x10);

    OvlFunc_943_200b380(16);
    OvlFunc_943_200b380(17);
    OvlFunc_943_200b380(18);
    OvlFunc_943_200b380(19);

    actor = (unsigned char *)__MapActor_GetActor(16);
    *(int *)(actor + 0x18) = 0xffff0000;

    actor = (unsigned char *)__MapActor_GetActor(17);
    *(int *)(actor + 0x18) = 0xffff0000;

    actor = (unsigned char *)__MapActor_GetActor(18);
    *(int *)(actor + 0x18) = 0xffff0000;

    actor = (unsigned char *)__MapActor_GetActor(19);
    *(int *)(actor + 0x18) = 0xffff0000;

    p70[4] = 0;
    p70[5] = 0;
    p70[6] = 0;
    p70[7] = 0;

    actor = (unsigned char *)__MapActor_GetActor(16);
    p90[4] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(17);
    p90[5] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(18);
    p90[6] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(19);
    p90[7] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_SetPos(8, *(int *)(actor + 8), *(int *)(actor + 0x10));
    }

    __WaitFrames(1);
    __Func_8092b54(13, 8);
    __Func_8092b54(14, 8);
    __Func_8092b54(15, 8);
    __Func_8092b54(16, 8);
    __Func_8092b54(17, 8);
    __Func_8092b54(18, 8);
    __Func_8092b54(19, 8);

    ((unsigned char *)__MapActor_GetActor(8))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(13))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(14))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(15))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(16))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(17))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(18))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(19))[0x5c] = 1;

    __WaitFrames(1);
    __MapActor_SetPos(8, 0x84 << 16, 0x9e << 18);
    __WaitFrames(1);

    OvlFunc_943_200b5ec(8, 0, 2);
    OvlFunc_943_200b5ec(13, 1, 2);
    OvlFunc_943_200b5ec(14, 2, 2);
    OvlFunc_943_200b5ec(15, 3, 2);
    OvlFunc_943_200b5ec(16, 4, 3);
    OvlFunc_943_200b5ec(17, 5, 3);
    OvlFunc_943_200b5ec(18, 6, 3);
    OvlFunc_943_200b5ec(19, 7, 3);
}

void OvlFunc_943_200b950(void) {
    API_CopyMapTiles(0x4e, 0x27, 0x4e, 0x28, 5, 1);
    API_CopyMapTiles(0x4e, 0x27, 0x4e, 0x29, 5, 1);
    API_CopyMapTiles(0x4e, 0x27, 0x4f, 0x2a, 4, 1);
    API_CopyMapTiles(0x4e, 0x27, 0x52, 0x2b, 1, 1);
    API_Func_8010704(0x11, 0x26, 5, 2, 0x11, 0x28);
}

extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_943_200b9b8(void) {
    __CopyMapTiles(0x42, 0x3d, 0x40, 0x28, 5, 4);
    __Func_8010704(0, 0, 5, 4, 5, 0x27);
}

extern void __ActorMessage();

void OvlFunc_943_200b9ec(int x) {
    __ActorMessage(x, 0);
    __CutsceneWait(0xa);
}


void OvlFunc_943_200ba00(int a, int b) {
    __Func_8092adc(a, b, 10);
}


void OvlFunc_943_200ba0c(void)
{
    extern unsigned char CS_943_5160[] __asm__(".Lm943_5160");
    extern unsigned char CS_943_5b50[] __asm__(".Lm943_5b50");
    extern unsigned char CS_943_5b60[] __asm__(".Lm943_5b60");
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_8092950(int, int);
    extern void __LoadFieldActors(void *);
    extern void * __MapActor_GetActor(int);
    extern void OvlFunc_943_200b9ec(int);
    extern void OvlFunc_943_200ba00(int, int);
    struct Actor *actor;

    API_CutsceneStart();
    *(int *)CS_943_5b50 = 0x40000;
    *(int *)CS_943_5b60 = 0xffff8000;
    __LoadFieldActors(CS_943_5160);
    API_WaitFrames(1);
    API_MapActor_SetPos(21, 0xb60000, 0x26a0000);
    actor = __MapActor_GetActor(21);
    actor->facing = 0xc000;
    API_MapActor_SetPos(20, 0xda0000, 0x2040000);
    actor = __MapActor_GetActor(20);
    actor->facing = 0xb000;
    API_MapActor_SetPos(22, 0xcc0000, 0x20e0000);
    actor = __MapActor_GetActor(22);
    actor->facing = 0xb000;
    API_MapActor_SetPos(23, 0, 0);
    __Func_8092950(0, 15);
    actor = __MapActor_GetActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    API_WaitFrames(1);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x202;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_MapActor_SetSpeed(21, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(21, 0xb6, 0x214);
    API_Func_8092adc(21, 0xb000, 0x28);
    API_MessageID(0x1f23);
    OvlFunc_943_200b9ec(21);
    API_Func_80925cc(20, 2);
    API_MapActor_SetAnim(20, 4);
    OvlFunc_943_200b9ec(0x6014);
    API_Func_8092adc(21, 0xd000, 0);
    API_Func_8092adc(22, 0xd000, 0);
    API_MapActor_Emote(21, 0x101, 0);
    API_MapActor_Emote(22, 0x101, 0x3c);
    API_MapActor_SetAnim(20, 3);
    OvlFunc_943_200b9ec(0x6014);
    API_MapActor_Surprise(21, 0x102);
    API_MapActor_Surprise(22, 0x102);
    API_CutsceneWait(0x50);
    API_MapActor_Emote(21, 0x100, 20);
    API_MapActor_SetSpeed(21, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(21, 0xc2, 0x1f4);
    API_Func_8092adc(21, 0xb000, 20);
    API_MapActor_SetSpeed(22, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(22, 0xc0, 0x206);
    API_Func_8092adc(22, 0xb000, 0);
    API_MapActor_SetSpeed(20, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(20, 0xd2, 0x1fc);
    OvlFunc_943_200ba00(20, 0xb000);
    API_Func_80925cc(21, 1);
    OvlFunc_943_200b9ec(0x5015);
    API_MapActor_DoAnim(20, 3);
    OvlFunc_943_200ba00(22, 0xd000);
    OvlFunc_943_200b9ec(0x9016);
    API_Func_8092adc(20, 0x8000, 20);
    API_MapActor_SetAnim(20, 4);
    OvlFunc_943_200b9ec(0xa014);
    API_MapActor_TravelToAnimWait(20, 0xcc, 0x218);
    API_Func_8092adc(22, 0xb000, 0);
    API_MapActor_TravelToAnimWait(20, 0xb6, 0x224);
    API_MapActor_TravelToAnimWait(20, 0xb6, 0x250);
    API_MapActor_TravelToAnim(20, 0xb6, 0x298);
    API_CutsceneWait(0x28);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(16);
}
static inline void CS943_StoreByte(unsigned char *p, int value) { *p = value; }

void OvlFunc_943_200bc88(void)
{
    extern int __DeleteFieldActor(int);
    extern int __Func_8091c7c(int, int);
    extern unsigned char *CS943_Actor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_943_200b9ec(int);
    extern void OvlFunc_943_200ba00(int, int);
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    unsigned char *actor;

    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0xb4, 0x28e);
    API_Func_8092adc(0, 0x8000, 0);
    actor = CS943_Actor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    actor = CS943_Actor(0);
    if (actor != 0) {
        API_MapActor_SetPos(2, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    actor = CS943_Actor(0);
    if (actor != 0) {
        API_MapActor_SetPos(3, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(3, 0x13333, 0x9999);
    API_MapActor_TravelToAnim(1, 0xc2, 0x280);
    API_MapActor_TravelToAnim(2, 0xc6, 0x28e);
    API_MapActor_TravelToAnimWait(3, 0xc2, 0x2a0);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_SetAnim(2, 1);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0x8000, 0);
    API_Func_8092adc(2, 0x8000, 0);
    OvlFunc_943_200ba00(3, 0x8000);
    OvlFunc_943_200ba00(22, 0);
    API_MessageID(0x1f55);
    OvlFunc_943_200b9ec(22);
    OvlFunc_943_200ba00(21, 0xd000);
    API_ActorMessage_Wait(21, 0, 0x28);
    API_MapActor_Emote(22, 0x100, 20);
    API_Func_80925cc(22, 1);
    __ShowActorMessage_NoWait(22, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 1) {
        API_MapActor_DoAnim(2, 4);
        OvlFunc_943_200b9ec(2);
        OvlFunc_943_200ba00(3, 0xa000);
        API_MapActor_SetAnim(3, 3);
        OvlFunc_943_200b9ec(3);
        OvlFunc_943_200ba00(1, 0x6000);
        API_Func_80925cc(1, 1);
        __ShowActorMessage_NoWait(1, 0);
        do {
            if (__Func_8091c7c(0, 0) == 1) {
            API_Func_80925cc(2, 1);
            API_MessageID(0x1f53);
            __ShowActorMessage_NoWait(2, 0);
            } else break;
        } while (1);
    }
    API_CutsceneWait(20);
    API_MapActor_DoAnim(22, 3);
    API_MessageID(0x1f5b);
    OvlFunc_943_200b9ec(22);
    API_MapActor_SetSpeed(22, 0x10000, 0x8000);
    API_MapActor_SetSpeed(21, 0x10000, 0x8000);
    actor = CS943_Actor(22);
    actor += 0x5a;
    *actor = (0xfe & *actor);
    API_MapActor_TravelToAnimWait(22, 0xa2, 0x27a);
    API_CutsceneWait(1);
    actor = CS943_Actor(22);
    actor += 0x5a;
    *actor = (*actor | 1);
    actor = CS943_Actor(21);
    actor += 0x5a;
    *actor = (0xfe & *actor);
    API_MapActor_TravelToAnimWait(21, 0xa2, 0x2a4);
    API_CutsceneWait(1);
    actor = CS943_Actor(21);
    actor += 0x5a;
    CS943_StoreByte(actor, 1 | *actor);
    API_Func_8092adc(22, 0x3000, 0);
    OvlFunc_943_200ba00(21, 0xd000);
    OvlFunc_943_200b9ec(22);
    API_MapActor_TravelToAnim(1, 0xb4, 0x28e);
    API_MapActor_TravelToAnim(2, 0xb4, 0x28e);
    API_MapActor_TravelToAnimWait(3, 0xb4, 0x28e);
    __DeleteFieldActor(1);
    __DeleteFieldActor(2);
    __DeleteFieldActor(3);
    API_SetFlag(0x903);
    API_CutsceneEnd();
}

static inline void CS943_ShowMessage(int actor, int option)
{
    extern int __ShowActorMessage_NoWait(int, int);
    __ShowActorMessage_NoWait(actor, option);
}

void OvlFunc_943_200bf30(void)
{
    extern unsigned char CS_943_51d8[] __asm__(".Lm943_51d8");
    extern unsigned char gScript_943__0200c918[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern int __Func_8093054(int, int);
    extern void __LoadFieldActors(void *);
    extern void OvlFunc_943_2008bb8(void);
    extern void OvlFunc_943_200b9ec(int);
    extern void OvlFunc_943_200ba00(int, int);
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;

    API_CutsceneStart();
    __LoadFieldActors(CS_943_51d8);
    API_WaitFrames(1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0x94, 0x290);
    API_MapActor_Emote(22, 0x100, 0);
    API_Func_80925cc(22, 1);
    OvlFunc_943_200ba00(22, 0x5000);
    API_MessageID(0x1f69);
    CS943_ShowMessage(0x2016, 0);
    API_Func_8092adc(0, 0xe000, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 1) {
        OvlFunc_943_200b9ec(0x2016);
        API_CutsceneEnd();
        return;
    }
    *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    __Func_8093054(0x2016, 0);
    OvlFunc_943_2008bb8();
    API_MapActor_SetPos(26, 0xd80000, 0x24c0000);
    API_MapActor_SetSpeed(26, 0x13333, 0x9999);
    API_MapActor_TravelToAnimWait(26, 0xd8, 0x254);
    API_MapActor_TravelToAnimWait(26, 0xbc, 0x268);
    API_Func_8092adc(0, 0xe000, 0);
    API_Func_8092adc(21, 0xd000, 0);
    API_Func_8092adc(22, 0xd000, 0);
    OvlFunc_943_200ba00(26, 0x5000);
    API_MapActor_Jump(26, 2, 0);
    API_MapActor_SetAnim(26, 4);
    API_ActorMessage(26, 0);
    API_MapActor_SetPos(20, 0xb40000, 0x3090000);
    API_MapActor_SetSpeed(20, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(20, 0xb4, 0x298);
    API_Func_8092adc(20, 0xd000, 0);
    OvlFunc_943_200b9ec(0x2014);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(22, 0x3000, 0);
    API_MapActor_Emote(26, 0x101, 0x3c);
    API_Func_80925cc(20, 1);
    OvlFunc_943_200b9ec(0x2014);
    API_Func_809259c(21, 2);
    OvlFunc_943_200b9ec(21);
    API_Func_8092adc(20, 0x5000, 20);
    API_MapActor_SetAnim(20, 3);
    OvlFunc_943_200b9ec(0x6014);
    API_MapActor_Jump(26, 2, 20);
    API_MapActor_SetAnim(26, 4);
    OvlFunc_943_200b9ec(26);
    API_MapActor_TravelToAnimWait(20, 0xb6, 0x280);
    API_Func_8092adc(20, 0xd000, 0);
    OvlFunc_943_200b9ec(0x8014);
    API_MapActor_Emote(26, 0x100, 20);
    API_Func_809259c(26, 2);
    OvlFunc_943_200b9ec(26);
    API_MapActor_DoAnim(20, 3);
    OvlFunc_943_200ba00(22, 0);
    API_Func_80925cc(22, 1);
    OvlFunc_943_200b9ec(22);
    API_MapActor_SetSpeed(22, 0x19999, 0xcccc);
    API_MapActor_SetBehavior(22, (int)gScript_943__0200c918);
    API_MapActor_SetSpeed(21, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(21, 0xa8, 0x278);
    API_MapActor_SetBehavior(21, (int)gScript_943__0200c918);
    API_CutsceneWait(0x50);
    API_MapActor_SetBehavior(26, (int)gScript_943__0200c918);
    API_CutsceneWait(0x28);
    OvlFunc_943_200ba00(20, 0x8000);
    OvlFunc_943_200b9ec(0x2014);
    OvlFunc_943_200ba00(0, 0xe000);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(20, 3);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x201;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(17);
}

void OvlFunc_943_200c218(void)
{
    struct Actor *actor;

    API_Func_80933f8(0xe80000, -1, 0x2a40000, 0);
    __Func_800fe9c();
    API_MapActor_SetPos(0, 0xe80000, 0x2a40000);
    actor = (struct Actor *)__MapActor_GetActor(0);
    actor->facing = 0x4000;
    __WaitFrames(1);
}


INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/tolbi_bound_ship_deck_data.s");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/imports.s");
