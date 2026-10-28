/* rom_7cb2c0 (overlay file 945): consolidated TU — tolbi_bound_ship_hull map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

#include "state/global_state.h"
extern unsigned int __Random();

extern GlobalState gState;
extern unsigned char Lm945_696c[] __asm__(".Lm945_696c");
extern unsigned char Lm945_6984[] __asm__(".Lm945_6984");
extern unsigned char Lconst_6f[] __asm__(".Lconst_6f");
__asm__(".equ .Lconst_6f, 0x6f");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/exports.s");

extern void OvlFunc_945_200c8ac();

unsigned int OvlFunc_945_2008030(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;

    r5 = arg0;
    __Actor_SetAnim(r5, 1);
    r3 = 0;
    *(unsigned int *)(r5 + 8) = r3;
    *(unsigned int *)(r5 + 0xc) = r3;
    *(unsigned int *)(r5 + 0x10) = r3;
    *(unsigned int *)(r5 + 0x24) = r3;
    *(unsigned int *)(r5 + 0x28) = r3;
    *(unsigned int *)(r5 + 0x2c) = r3;
    r3 = 0x80;
    r3 <<= 24;
    *(unsigned int *)(r5 + 0x3c) = r3;
    *(unsigned int *)(r5 + 0x38) = r3;
    return 0;
}

int OvlFunc_945_2008058(struct Actor *a)
{
    short flag;
    int y;

    if (a->__unk66 != 0) {
        y = a->pos.y - ((unsigned int)(__Random() << 15) >> 16) - 0x8000;
        a->pos.y = y;
        if (y < 0) {
            flag = 0;
            goto set;
        }
    } else {
        y = a->pos.y + ((unsigned int)(__Random() << 15) >> 16) + 0x8000;
        a->pos.y = y;
        if (y > 0x80000) {
            flag = 1;
        set:
            a->__unk66 = flag;
        }
    }
    return 1;
}

unsigned int OvlFunc_945_20080b0(unsigned char *arg0) {
    unsigned int v;
    unsigned int t;
    v = (__Random((unsigned int)arg0) << 6) >> 16;
    if (v == 6) {
        t = 0xc0;
        *(unsigned short *)(arg0 + 6) = t << 6;
    } else if (v == 9) {
        t = 0xa0;
        *(unsigned short *)(arg0 + 6) = t << 7;
    }
    return 1;
}

void OvlFunc_945_20080d8(unsigned char *p)
{
    unsigned char *c;
    unsigned int v;

    c = p + 0x62;
    v = *c + 1;
    *c = v;
    if ((v << 24) > (0xa0 << 23)) {
        unsigned short *c2 = (unsigned short *)(p + 0x66);
        *c2 = *c2 + 1;
    }
}

int OvlFunc_945_20080fc(struct Actor *a)
{
    if (a->__unk4C != 0) {
        a->__unk4C--;
    } else {
        return 1;
    }
    if (a->prevPos.x == (fx32)0x80000000 && a->prevPos.y == (fx32)0x80000000 && a->prevPos.z == (fx32)0x80000000)
        return 1;
    return 0;
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200812c.s");
void OvlFunc_945_2008284(struct Actor *actor)
{
    extern int __MapActor_GetActor(int);
    extern void __Actor_SetAnim(struct Actor *, int);
    struct Actor *other;

    other = (struct Actor *)__MapActor_GetActor(9);
    if (actor->stop != 0)
        return;

    if (other->__unk63 == 1) {
        actor->facing = 0xd000;
        actor->__unk62 = 1;
        other->__unk63 = 0;
    } else if (other->__unk63 == 2) {
        if (actor->__unk62 != 0)
            __Actor_SetAnim(actor, 3);
        actor->__unk62 = 0;
        other->__unk63 = 0;
    } else if (other->__unk63 == 3) {
        actor->facing = 0;
        other->__unk63 = 0;
    }
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_20082f4.s");
unsigned int *TolbiBoundShipHull_GetEntrances(void)
{
    unsigned int r3;
    unsigned int r1;

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r1 = 0;
    if (*(short *)((char *)r3 + r1) == (int)Lconst_6f) {
        return (unsigned int *)Lm945_6984;
    }
    return (unsigned int *)Lm945_696c;
}

int TolbiBoundShipHull_GetSpecialExits(void) {
    return 0;
}

void *TolbiBoundShipHull_GetExits(void) {
    extern unsigned char gOvl_0200eb94[];
    return (void *)gOvl_0200eb94;
}

#include "field.h"
struct CS945T_State { unsigned char pad[0x1c2]; short room; };
extern struct CS945T_State CS945T_State __asm__("gState");
extern struct MapActorInfo CS945T_6da8[] __asm__(".Lm945_6da8");
extern struct MapActorInfo CS945T_6eb0[] __asm__(".Lm945_6eb0");
extern struct MapActorInfo CS945T_6d78[] __asm__(".Lm945_6d78");
extern struct MapActorInfo CS945T_6fe8[] __asm__(".Lm945_6fe8");
extern struct MapActorInfo CS945T_6d48[] __asm__(".Lm945_6d48");
extern struct MapActorInfo CS945T_6c58[] __asm__(".Lm945_6c58");
extern struct MapActorInfo CS945T_6bf8[] __asm__(".Lm945_6bf8");
extern struct MapActorInfo CS945T_6be0[] __asm__(".Lm945_6be0");
struct MapActorInfo *TolbiBoundShipHull_GetActors(void)
{
    int flag;
    switch (CS945T_State.room) {
    case 1: case 2: case 11:
        if (API_GetFlag(0x93e)) return CS945T_6da8;
        if (API_GetFlag(0x928)) {
            if (API_GetFlag(0x8a0)) {
                CS945T_6eb0[0].__unk16 = 2;
                CS945T_6eb0[2].__unk16 = 2;
                CS945T_6eb0[4].__unk16 = 2;
                CS945T_6eb0[5].__unk16 = 2;
                CS945T_6eb0[8].__unk16 = 2;
                CS945T_6eb0[7].__unk16 = 2;
                CS945T_6eb0[6].__unk16 = 1;
                CS945T_6eb0[3].__unk16 = 2;
            }
            return CS945T_6eb0;
        }
        if (API_GetFlag(0x911)) {
            if (API_GetFlag(0x925)) {
                CS945T_6da8[0].__unk16 = 2;
                CS945T_6da8[4].__unk16 = 2;
                CS945T_6da8[1].__unk16 = 2;
                CS945T_6da8[3].__unk16 = 2;
            }
            return CS945T_6da8;
        }
        return CS945T_6d78;
    case 4: case 12: case 16: case 18: case 20: case 21: case 23: case 24:
        return CS945T_6fe8;
    case 15: case 17: case 19:
        CS945T_6fe8[0].__unk16 = 2;
        CS945T_6fe8[1].__unk16 = 2;
        CS945T_6fe8[3].__unk16 = 1;
        CS945T_6fe8[4].__unk16 = 2;
        CS945T_6fe8[5].__unk16 = 2;
        CS945T_6fe8[6].__unk16 = 2;
        CS945T_6fe8[7].__unk16 = 2;
        CS945T_6fe8[8].__unk16 = 1;
        CS945T_6fe8[9].__unk16 = 2;
        return CS945T_6fe8;
    case 5:
        if (API_GetFlag(0x93e)) return CS945T_6d48;
        if (API_GetFlag(0x911)) {
            if (!API_GetFlag(0x922)) return CS945T_6be0;
            if (API_GetFlag(0x8a0)) CS945T_6c58[1].__unk16 = 1;
            if (API_GetFlag(0x925)) {
                flag = API_GetFlag(0x8a0);
                if (flag == 0) CS945T_6c58[0].__unk16 = flag;
            }
            return CS945T_6c58;
        }
        /* Fall through to the common actor table. */
    case 10: case 13: case 14: case 22:
        return CS945T_6bf8;
    default:
        return CS945T_6be0;
    }
}
extern unsigned char Lm945_76fc[] __asm__(".Lm945_76fc");
extern unsigned char Lm945_7570[] __asm__(".Lm945_7570");
extern unsigned char Lm945_7444[] __asm__(".Lm945_7444");
extern unsigned char Lm945_7edc[] __asm__(".Lm945_7edc");
extern unsigned char Lm945_79c0[] __asm__(".Lm945_79c0");
extern unsigned char Lm945_7930[] __asm__(".Lm945_7930");
extern unsigned char Lm945_7984[] __asm__(".Lm945_7984");
extern unsigned char Lm945_781c[] __asm__(".Lm945_781c");
extern unsigned char Lm945_7b58[] __asm__(".Lm945_7b58");
extern unsigned char Lm945_7d44[] __asm__(".Lm945_7d44");
extern unsigned char Lm945_7420[] __asm__(".Lm945_7420");

int TolbiBoundShipHull_GetEvents(void)
{
    GlobalState *p = &gState;
    int f1 = *(short *)((char *)p + 0x1c2);
    switch (f1) {
    case 1: case 2:
        if (__GetFlag(0x8a0)) return (int)Lm945_76fc;
        if (__GetFlag(0x928)) { if (!__GetFlag(0x93e)) return (int)Lm945_7570; }
        return (int)Lm945_7444;
    case 4: case 0x17:
        if (__GetFlag(0x93e)) return (int)Lm945_7edc;
        return (int)Lm945_79c0;
    case 5:
        if (__GetFlag(0x8a0)) return (int)Lm945_7930;
        if (__GetFlag(0x93e)) return (int)Lm945_7984;
        return (int)Lm945_781c;
    case 0xf: case 0x11: case 0x13:
        return (int)Lm945_7b58;
    case 0x15:
        return (int)Lm945_7d44;
    default:
        return (int)Lm945_7420;
    }
}
extern void __Func_808e118(void);
extern int __Func_8091c7c(int, int);
extern void OvlFunc_945_2009f3c(void);
void OvlFunc_945_2008670(void) {
    extern void __CutsceneStart(void);
    extern void __Func_808e118(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern int __Func_8091c7c(int, int);
    extern void OvlFunc_945_2009f3c(void);
    extern void __Func_809259c(int, int);
    extern void __Func_8092adc(int, int, int);
    extern void __CutsceneEnd(void);

    __CutsceneStart();
    __Func_808e118();
    if (__GetFlag(0x921)) {
        __MessageID(0x1dd4);
        __ActorMessage(10, 0);
    } else if (__GetFlag(0x922)) {
        __MessageID(0x1d91);
        __ShowActorMessage_NoWait(10, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            OvlFunc_945_2009f3c();
        } else {
            __Func_809259c(10, 2);
            __ActorMessage(10, 0);
            API_Func_8092adc(10, 0xd000, 0);
        }
    } else {
        __MessageID(0x1d31);
        __ActorMessage(10, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_945_2008708(void) {
    __CutsceneStart();
    __MessageID(0x1dd1);
    __Func_8093054(0xc, 0);
    __CutsceneEnd();
}

extern void OvlFunc_945_200c86c(int a);
extern unsigned char *iwram_3001ebc;
void OvlFunc_945_2008728(void)
{
    extern void OvlFunc_945_200c86c(int);
    extern void __Func_8092adc(int, int, int);

    int flag_925 = 0x925;
    int c_d000 = 0xd000;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;



    __CutsceneStart();
    if (__GetFlag(0x928) != 0) {
        __MessageID(0x1eb2);
        OvlFunc_945_200c86c(8);
        __Func_8092adc(8, c_d000, 0x3c);
        __MapActor_DoAnim(8, 4);
        OvlFunc_945_200c86c(8);
        __MapActor_DoAnim(8, 3);
    } else if (__GetFlag(flag_925) != 0) {
        __MessageID(0x1e06);
        __ActorMessage(8, 0);
    } else if (__GetFlag(0x921) != 0) {
        __MessageID(0x1dcd);
        __ActorMessage(8, 0);
        if (__GetFlag(flag_925) == 0 && __GetFlag(0x924) != 0) {
            b = iwram_3001ebc;
            addr = (unsigned short *)(b + (0xb9 << 1));
            v = 1;
            *addr = v;
        }
    } else {
        __MessageID(0x1d30);
        __ActorMessage(8, 0);
    }
    __CutsceneEnd();
}
extern void OvlFunc_945_200c86c(int a);
extern void OvlFunc_945_200c880(int a, unsigned short b);
extern void __MapActor_Face(int, int, int);
extern unsigned int iwram_3001ebc__v __asm__("iwram_3001ebc");

void OvlFunc_945_20087f8(void)
{
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __Func_809259c(int, int);
    extern void __MessageID(int);
    extern void OvlFunc_945_200c86c(int);
    extern void __MapActor_Face(int, int, int);
    extern int __Func_8091c7c(int, int);
    extern void __CutsceneWait(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void __ActorMessage(int, int);
    extern void __Func_8092adc(int, int, int);
    extern void __CutsceneEnd(void);

    unsigned short *base;

    __CutsceneStart();
    if (__GetFlag(0x925) != 0) {
        __Func_809259c(8, 2);
        __MessageID(0x1e13);
        OvlFunc_945_200c86c(8);
        __MapActor_Face(8, 0, 10);
        __ShowActorMessage_NoWait(8, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(0x28);
            OvlFunc_945_200c86c(8);
            OvlFunc_945_200c880(8, 0xc0 << 6);
            __ActorMessage(8, 0);
        } else {
            base = (unsigned short *)iwram_3001ebc__v;
            base[0xec] += 2;
            __ActorMessage(8, 0);
            API_Func_8092adc(8, 0x3000, 0);
        }
    } else {
        __MessageID(0x1d4e);
        __ActorMessage(8, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_945_20088a8(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __Func_8093054(int, int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x925)) {
        __MessageID(0x1e19);
        __Func_8093054(0xa, 0);
    } else {
        __MessageID(0x1d50);
        __ActorMessage(0xa, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_945_20088ec(void)
{
    extern unsigned int OvlFunc_945_20092dc(void);
    extern void OvlFunc_945_2009190(int);
    extern void OvlFunc_945_2009804(int, int, int);
    extern int __MapActor_GetActor(int);
    int actor;
    int a;

    if (API_GetFlag(0xc0 << 2)) {
        actor = OvlFunc_945_20092dc();
        API_CutsceneStart();
        OvlFunc_945_2009190(actor);
        API_MessageID(0x1e9e);
        OvlFunc_945_200c86c(8);
        API_MapActor_SetAnim(actor, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_TravelTo(actor, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        API_MapActor_WaitMovement(actor);
        API_MapActor_SetPos(actor, 0, 0);
        API_CutsceneEnd();
    } else {
        if (API_GetFlag(0x92b)) {
            OvlFunc_945_2009804(8, 0x1e78, 0x99 << 4);
        } else if (API_GetFlag(0x92a)) {
            OvlFunc_945_2009804(8, 0x1e78, 0x917);
        } else if (API_GetFlag(0x929)) {
            OvlFunc_945_2009804(8, 0x1e78, 0x935);
        } else {
            OvlFunc_945_2009804(8, 0x1e78, 0x92c);
        }
    }
}

extern int __MapActor_GetActor(int);
extern void OvlFunc_945_2009190(int);
extern void OvlFunc_945_200c86c(int);
extern void OvlFunc_945_2009804(int, int, int);

void OvlFunc_945_20089b4(void)
{
    extern int OvlFunc_945_20092dc(void);
    int r5v;
    int a;

    if (API_GetFlag(0xc0 << 2)) {
        r5v = OvlFunc_945_20092dc();
        API_CutsceneStart();
        OvlFunc_945_2009190(r5v);
        API_MessageID(0x1e9f);
        OvlFunc_945_200c86c(0xa);
        API_MapActor_SetAnim(r5v, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_TravelTo(r5v, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        API_MapActor_WaitMovement(r5v);
        API_MapActor_SetPos(r5v, 0, 0);
        API_CutsceneEnd();
    } else if (API_GetFlag(0x92b)) {
        OvlFunc_945_2009804(0xa, 0x1e7b, 0x992);
    } else if (API_GetFlag(0x92a)) {
        OvlFunc_945_2009804(0xa, 0x1e7b, 0x919);
    } else if (API_GetFlag(0x929)) {
        OvlFunc_945_2009804(0xa, 0x1e7b, 0x937);
    } else {
        OvlFunc_945_2009804(0xa, 0x1e7b, 0x92e);
    }
}

void OvlFunc_945_2008a80(void) {
    extern int __GetFlag(int);
    extern int __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneStart(void);
    extern void __CutsceneEnd(void);
    extern void __CutsceneWait(int);
    extern void __MapActor_Surprise(int, int);
    extern void __MapActor_SetAnim(int, int);
    extern int __MapActor_GetActor(int);
    extern void __MapActor_TravelTo(int, int, int);
    extern void __MapActor_WaitMovement(int);
    extern void __MapActor_SetPos(int, int, int);
    extern int OvlFunc_945_20092dc(void);
    extern void OvlFunc_945_2009190(int);
    extern void OvlFunc_945_200c86c(int);
    extern void OvlFunc_945_2009804(int, int, int);
    extern int _MSG_1ea0;
    int r5v;
    int a;

    if (__GetFlag(0x8a << 4)) {
        __CutsceneStart();
        __MapActor_Surprise(0xb, 0x81 << 1);
        __CutsceneWait(0x28);
        __MessageID(0x1f47);
        __ActorMessage(0xb, 0);
        __CutsceneEnd();
    } else if (__GetFlag(0xc0 << 2)) {
        r5v = OvlFunc_945_20092dc();
        __CutsceneStart();
        OvlFunc_945_2009190(r5v);
        __MessageID((int) (&_MSG_1ea0));
        OvlFunc_945_200c86c(0xb);
        __MapActor_SetAnim(r5v, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            __MapActor_TravelTo(r5v, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        __MapActor_WaitMovement(r5v);
        __MapActor_SetPos(r5v, 0, 0);
        __CutsceneEnd();
    } else if (__GetFlag(0x92b)) {
        OvlFunc_945_2009804(0xb, 0x1e7e, 0x993);
    } else if (__GetFlag(0x92a)) {
        OvlFunc_945_2009804(0xb, 0x1e7e, 0x91a);
    } else if (__GetFlag(0x929)) {
        OvlFunc_945_2009804(0xb, 0x1e7e, 0x938);
    } else {
        OvlFunc_945_2009804(0xb, 0x1e7e, 0x92f);
    }
}

extern unsigned char iwram_3001ebc__a[] __asm__("iwram_3001ebc");
extern void __SetFlag(int);
extern unsigned int OvlFunc_945_20092dc(void);
extern void OvlFunc_945_200c86c(int a);
void OvlFunc_945_2008b84(void)
{
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern unsigned int OvlFunc_945_20092dc(void);
    extern void OvlFunc_945_2009190(int);
    extern int __MessageID(int);
    extern void OvlFunc_945_200c86c(int);
    extern void __MapActor_SetAnim(int, int);
    extern int __MapActor_GetActor(int);
    extern void __MapActor_TravelTo(int, int, int);
    extern void __MapActor_WaitMovement(int);
    extern void __MapActor_SetPos(int, int, int);
    extern void __CutsceneWait(int);
    extern void __SetFlag(int);
    extern void __CutsceneEnd(void);

    int r5;
    int a;
    unsigned short *r2;
    unsigned short r3;

    __CutsceneStart();
    if (API_GetFlag(0x300) != 0) {
        r5 = OvlFunc_945_20092dc();
        OvlFunc_945_2009190(r5);
        __MessageID(0x1ea1);
        OvlFunc_945_200c86c(12);
        API_MapActor_SetAnim(r5, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_TravelTo(r5, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        API_MapActor_WaitMovement(r5);
        API_MapActor_SetPos(r5, 0, 0);
    } else {
        API_Func_80925cc(12, 2);
        __CutsceneWait(0x14);
        __MessageID(0x1e81);
        __ShowActorMessage_NoWait(12, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            OvlFunc_945_200c86c(12);
            API_MapActor_SetAnim(12, 2);
            a = __MapActor_GetActor(0);
            if (a != 0) {
                API_MapActor_TravelTo(12, *(short *)(a + 0xa), *(short *)(a + 0x12));
            }
            API_MapActor_WaitMovement(12);
            API_MapActor_SetPos(12, 0, 0);
            API_SetFlag(0x300);
            if (API_GetFlag(0x92b) != 0) {
                API_SetFlag(0x994);
            } else if (API_GetFlag(0x92a) != 0) {
                API_SetFlag(0x91b);
            } else if (API_GetFlag(0x929) != 0) {
                API_SetFlag(0x939);
            } else {
                API_SetFlag(0x93 << 4);
            }
        } else {
            r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc__a + (0xec << 1));
            r3 = *r2;
            r3 += 1;
            *r2 = r3;
            OvlFunc_945_200c86c(12);
        }
    }
    __CutsceneEnd();
}
extern unsigned int OvlFunc_945_20092dc(void);
extern void OvlFunc_945_200c86c(int a);
void OvlFunc_945_2008cc8(void)
{
    extern void __CutsceneStart(void);
    extern void __CutsceneEnd(void);
    extern int __GetFlag(int);
    extern void __SetFlag(int);
    extern int __MessageID(int);
    extern void __ActorMessage_Wait(int, int, int);
    extern void __Func_80925cc(int, int);
    extern int __Func_8091c7c(int, int);
    extern void __MapActor_SetAnim(int, int);
    extern int __MapActor_GetActor(int);
    extern void __MapActor_TravelTo(int, int, int);
    extern void __MapActor_WaitMovement(int);
    extern void __MapActor_SetPos(int, int, int);
    extern unsigned int OvlFunc_945_20092dc(void);
    extern void OvlFunc_945_2009190(int);
    extern void OvlFunc_945_200c86c(int);

    int r5v;
    int a;
    unsigned short *base;

    __CutsceneStart();
    if (API_GetFlag(0x300) != 0) {
        r5v = OvlFunc_945_20092dc();
        OvlFunc_945_2009190(r5v);
        __MessageID(0x1ea2);
        OvlFunc_945_200c86c(9);
        API_MapActor_SetAnim(r5v, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_TravelTo(r5v, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        API_MapActor_WaitMovement(r5v);
        API_MapActor_SetPos(r5v, 0, 0);
    } else {
        __MessageID(0x1e84);
        API_ActorMessage_Wait(9, 0, 0x3c);
        API_Func_80925cc(9, 1);
        __ShowActorMessage_NoWait(9, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            OvlFunc_945_200c86c(9);
            API_MapActor_SetAnim(9, 2);
            a = __MapActor_GetActor(0);
            if (a != 0) {
                API_MapActor_TravelTo(9, *(short *)(a + 0xa), *(short *)(a + 0x12));
            }
            API_MapActor_WaitMovement(9);
            API_MapActor_SetPos(9, 0, 0);
            API_SetFlag(0x300);
            if (API_GetFlag(0x92b) != 0) {
                API_SetFlag(0x991);
            } else if (API_GetFlag(0x92a) != 0) {
                API_SetFlag(0x918);
            } else if (API_GetFlag(0x929) != 0) {
                API_SetFlag(0x936);
            } else {
                API_SetFlag(0x92d);
            }
        } else {
            base = (unsigned short *)iwram_3001ebc__v;
            base[0xec] += 1;
            OvlFunc_945_200c86c(9);
        }
    }
    __CutsceneEnd();
}

void OvlFunc_945_2008e14(void)
{
    extern unsigned int OvlFunc_945_20092dc(void);
    int r5v;
    int a;

    if (API_GetFlag(0xc0 << 2)) {
        r5v = OvlFunc_945_20092dc();
        API_CutsceneStart();
        OvlFunc_945_2009190(r5v);
        API_MessageID(0x1ea3);
        OvlFunc_945_200c86c(0xd);
        API_MapActor_SetAnim(r5v, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_TravelTo(r5v, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        API_MapActor_WaitMovement(r5v);
        API_MapActor_SetPos(r5v, 0, 0);
        API_CutsceneEnd();
    } else if (API_GetFlag(0x92b)) {
        OvlFunc_945_2009804(0xd, 0x1e88, 0x995);
    } else if (API_GetFlag(0x92a)) {
        OvlFunc_945_2009804(0xd, 0x1e88, 0x91c);
    } else if (API_GetFlag(0x929)) {
        OvlFunc_945_2009804(0xd, 0x1e88, 0x93a);
    } else {
        OvlFunc_945_2009804(0xd, 0x1e88, 0x931);
    }
}

void OvlFunc_945_2008ee0(void)
{
    extern unsigned int OvlFunc_945_20092dc(void);
    int r5v;
    int a;

    if (API_GetFlag(0xc0 << 2)) {
        r5v = OvlFunc_945_20092dc();
        API_CutsceneStart();
        OvlFunc_945_2009190(r5v);
        API_MessageID(0x1ea4);
        OvlFunc_945_200c86c(0xe);
        API_MapActor_SetAnim(r5v, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_TravelTo(r5v, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        API_MapActor_WaitMovement(r5v);
        API_MapActor_SetPos(r5v, 0, 0);
        API_CutsceneEnd();
    } else if (API_GetFlag(0x92b)) {
        OvlFunc_945_2009804(0xe, 0x1e8b, 0x996);
    } else if (API_GetFlag(0x92a)) {
        OvlFunc_945_2009804(0xe, 0x1e8b, 0x91d);
    } else if (API_GetFlag(0x929)) {
        OvlFunc_945_2009804(0xe, 0x1e8b, 0x93b);
    } else {
        OvlFunc_945_2009804(0xe, 0x1e8b, 0x932);
    }
}

void OvlFunc_945_2008fac(void)
{
    extern unsigned int OvlFunc_945_20092dc(void);
    int r5v;
    int a;

    if (API_GetFlag(0xc0 << 2)) {
        r5v = OvlFunc_945_20092dc();
        API_CutsceneStart();
        OvlFunc_945_2009190(r5v);
        API_MessageID(0x1ea5);
        OvlFunc_945_200c86c(0xf);
        API_MapActor_SetAnim(r5v, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_TravelTo(r5v, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        API_MapActor_WaitMovement(r5v);
        API_MapActor_SetPos(r5v, 0, 0);
        API_CutsceneEnd();
    } else if (API_GetFlag(0x92b)) {
        OvlFunc_945_2009804(0xf, 0x1e8e, 0x997);
    } else if (API_GetFlag(0x92a)) {
        OvlFunc_945_2009804(0xf, 0x1e8e, 0x91e);
    } else if (API_GetFlag(0x929)) {
        OvlFunc_945_2009804(0xf, 0x1e8e, 0x93c);
    } else {
        OvlFunc_945_2009804(0xf, 0x1e8e, 0x933);
    }
}

void OvlFunc_945_2009078(void)
{
    extern unsigned int OvlFunc_945_20092dc(void);
    int r5v;
    int a;

    if (API_GetFlag(0xc0 << 2)) {
        r5v = OvlFunc_945_20092dc();
        API_CutsceneStart();
        OvlFunc_945_2009190(r5v);
        API_MessageID(0x1ea6);
        OvlFunc_945_200c86c(0x10);
        API_MapActor_SetAnim(r5v, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_TravelTo(r5v, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        API_MapActor_WaitMovement(r5v);
        API_MapActor_SetPos(r5v, 0, 0);
        API_CutsceneEnd();
    } else if (API_GetFlag(0x92b)) {
        OvlFunc_945_2009804(0x10, 0x1e91, 0x998);
    } else if (API_GetFlag(0x92a)) {
        OvlFunc_945_2009804(0x10, 0x1e91, 0x91f);
    } else if (API_GetFlag(0x929)) {
        OvlFunc_945_2009804(0x10, 0x1e91, 0x93d);
    } else {
        OvlFunc_945_2009804(0x10, 0x1e91, 0x934);
    }
}

int OvlFunc_945_2009144(int x, int z)
{
    struct Actor **actors;
    struct Actor *actor;
    unsigned int i;
    int ax;
    int az;

    actors = (struct Actor **)(iwram_3001ebc + 0x14);
    for (i = 8; i <= 0x41; i++) {
        actor = actors[i];
        ax = ((s16 *)&actor->pos.x)[1];
        az = ((s16 *)&actor->pos.z)[1];
        if (x - 12 < ax && x + 12 > ax && z - 12 < az && z + 12 > az) {
            return (int)actor;
        }
    }
    return 0;
}
void OvlFunc_945_2009190(int actorId)
{
    extern int OvlFunc_945_2009280(int);

    extern int Lm945_6668[] __asm__(".Lm945_6668");
    struct Actor *actor0;
    struct Actor *actor;
    struct Actor *a0;
    int r8;
    int dir;
    int t;

    actor0 = (struct Actor *)__MapActor_GetActor(0);
    r8 = 1;
    API_Func_8092b08(actorId, 2);
    actor = (struct Actor *)__MapActor_GetActor(actorId);
    actor->flags |= 1;

    dir = (int)((actor0->facing + 0x4000) & 0xf000) >> 12;
    if (OvlFunc_945_2009280(dir) != 0) {
        r8 = 0;
    }
    if (r8 != 0) {
        dir = (int)((actor0->facing + 0xffffc000) & 0xf000) >> 12;
        if (OvlFunc_945_2009280(dir) != 0) {
            r8 = 0;
        }
    }
    if (r8 != 0) {
        dir = (int)((actor0->facing + 0x8000) & 0xf000) >> 12;
    }

    a0 = (struct Actor *)__MapActor_GetActor(0);
    if (a0 != 0) {
        API_MapActor_SetPos(actorId, a0->pos.x, a0->pos.z);
    }

    API_MapActor_SetSpeed(actorId, 0x19999, 0xcccc);
    API_MapActor_SetAnim(actorId, 2);
    t = Lm945_6668[dir];
    API_MapActor_TravelBy(actorId, (s16)(t >> 16), (s16)t);
    API_MapActor_WaitMovement(actorId);
    API_MapActor_SetAnim(actorId, 1);
    OvlFunc_945_200c880(actorId, actor0->facing);
}

int OvlFunc_945_2009280(int dir) {
    extern int OvlFunc_945_2009144(int, int);
    extern int __TestCollision(void *, int *);
    extern int Lm945_6668[] __asm__(".Lm945_6668");
    struct Actor *actor;
    int t;
    int x, z;
    int pos[3];

    actor = (struct Actor *)__MapActor_GetActor(0);
    t = Lm945_6668[dir];
    x = (s16)(actor->pos.x >> 16) + (s16)(t >> 16);
    z = (s16)(actor->pos.z >> 16) + (s16)t;
    if (OvlFunc_945_2009144(x, z) != 0) {
        return 0;
    }
    pos[0] = x << 16;
    pos[1] = actor->pos.y;
    pos[2] = z << 16;
    if (__TestCollision(actor, pos) != 0) {
        return 0;
    }
    return 1;
}

unsigned int OvlFunc_945_20092dc(void)
{
    extern unsigned int OvlFunc_945_200cfa8(unsigned int arg0, unsigned int arg1);
    unsigned int r5;

    r5 = 0;
    if (__GetFlag(0x92b)) {
        r5 = 3;
    } else if (__GetFlag(0x92a)) {
        r5 = 2;
    } else if (__GetFlag(0x929)) {
        r5 = 1;
    }
    return OvlFunc_945_200cfa8(r5, 1);
}

void OvlFunc_945_2009324(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x92c)) {
        __MessageID(0x1ece);
    } else if (__GetFlag(0x935)) {
        __MessageID(0x1ecf);
    } else {
        __MessageID(0x1ed0);
    }
    __ActorMessage(0x12, 0);
    __CutsceneEnd();
}
void OvlFunc_945_2009378(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x92d)) {
        __MessageID(0x1ece);
    } else if (__GetFlag(0x936)) {
        __MessageID(0x1ecf);
    } else {
        __MessageID(0x1ed0);
    }
    __ActorMessage(0x13, 0);
    __CutsceneEnd();
}
void OvlFunc_945_20093cc(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x92e)) {
        __MessageID(0x1ece);
    } else if (__GetFlag(0x937)) {
        __MessageID(0x1ecf);
    } else {
        __MessageID(0x1ed0);
    }
    __ActorMessage(0x14, 0);
    __CutsceneEnd();
}

void OvlFunc_945_2009420(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int id);
    extern void __MessageID(int id);
    extern void __ActorMessage(int a, int b);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x92f)) {
        __MessageID(0x1ed1);
    } else {
        __MessageID(0x1ed2);
    }
    __ActorMessage(0x15, 0);
    __CutsceneEnd();
}

void OvlFunc_945_200945c(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x93 << 4)) {
        __MessageID(0x1ece);
    } else if (__GetFlag(0x939)) {
        __MessageID(0x1ecf);
    } else {
        __MessageID(0x1ed0);
    }
    __ActorMessage(0x16, 0);
    __CutsceneEnd();
}
void OvlFunc_945_20094b0(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x931)) {
        __MessageID(0x1ece);
    } else if (__GetFlag(0x93a)) {
        __MessageID(0x1ecf);
    } else {
        __MessageID(0x1ed0);
    }
    __ActorMessage(0x17, 0);
    __CutsceneEnd();
}
void OvlFunc_945_2009504(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x932)) {
        __MessageID(0x1ece);
    } else if (__GetFlag(0x93b)) {
        __MessageID(0x1ecf);
    } else {
        __MessageID(0x1ed0);
    }
    __ActorMessage(0x18, 0);
    __CutsceneEnd();
}

void OvlFunc_945_2009558(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x933)) {
        __MessageID(0x1ed1);
    } else {
        __MessageID(0x1ed2);
    }
    __ActorMessage(0x19, 0);
    __CutsceneEnd();
}

void OvlFunc_945_2009594(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x92c)) {
        __MessageID(0x1edb);
    } else if (__GetFlag(0x935)) {
        __MessageID(0x1edc);
    } else {
        __MessageID(0x1edd);
    }
    __ActorMessage(0x12, 0);
    __CutsceneEnd();
}
void OvlFunc_945_20095e8(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x92d)) {
        __MessageID(0x1edb);
    } else if (__GetFlag(0x936)) {
        __MessageID(0x1edc);
    } else {
        __MessageID(0x1edd);
    }
    __ActorMessage(0x13, 0);
    __CutsceneEnd();
}
void OvlFunc_945_200963c(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x92e)) {
        __MessageID(0x1edb);
    } else if (__GetFlag(0x937)) {
        __MessageID(0x1edc);
    } else {
        __MessageID(0x1edd);
    }
    __ActorMessage(0x14, 0);
    __CutsceneEnd();
}

void OvlFunc_945_2009690(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int id);
    extern void __MessageID(int id);
    extern void __ActorMessage(int a, int b);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x92f)) {
        __MessageID(0x1ede);
    } else {
        __MessageID(0x1edf);
    }
    __ActorMessage(0x15, 0);
    __CutsceneEnd();
}

void OvlFunc_945_20096cc(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x93 << 4)) {
        __MessageID(0x1edb);
    } else if (__GetFlag(0x939)) {
        __MessageID(0x1edc);
    } else {
        __MessageID(0x1edd);
    }
    __ActorMessage(0x16, 0);
    __CutsceneEnd();
}
void OvlFunc_945_2009720(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x931)) {
        __MessageID(0x1edb);
    } else if (__GetFlag(0x93a)) {
        __MessageID(0x1edc);
    } else {
        __MessageID(0x1edd);
    }
    __ActorMessage(0x17, 0);
    __CutsceneEnd();
}
void OvlFunc_945_2009774(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x932)) {
        __MessageID(0x1edb);
    } else if (__GetFlag(0x93b)) {
        __MessageID(0x1edc);
    } else {
        __MessageID(0x1edd);
    }
    __ActorMessage(0x18, 0);
    __CutsceneEnd();
}

void OvlFunc_945_20097c8(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    __CutsceneStart();
    if (__GetFlag(0x933)) {
        __MessageID(0x1ede);
    } else {
        __MessageID(0x1edf);
    }
    __ActorMessage(0x19, 0);
    __CutsceneEnd();
}

void OvlFunc_945_2009804(int param_1, int param_2, int param_3)
{
    extern void OvlFunc_945_200c86c(int);
    extern void __CutsceneStart(void);
    extern void __MessageID(int);
    extern int __Func_8091c7c(int, int);
    extern void __MapActor_SetAnim(int, int);
    extern int __MapActor_GetActor(int);
    extern void __MapActor_TravelTo(int, int, int);
    extern void __MapActor_WaitMovement(int);
    extern void __MapActor_SetPos(int, int, int);
    extern void __SetFlag(int);
    extern void __CutsceneEnd(void);

    int a;
    unsigned short *r2;
    unsigned short r3;

    __CutsceneStart();
    __MessageID(param_2);
    __ShowActorMessage_NoWait(param_1, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        OvlFunc_945_200c86c(param_1);
        __MapActor_SetAnim(param_1, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            __MapActor_TravelTo(param_1, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        __MapActor_WaitMovement(param_1);
        __MapActor_SetPos(param_1, 0, 0);
        __SetFlag(0xc0 << 2);
        __SetFlag(param_3);
    } else {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc__a + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        OvlFunc_945_200c86c(param_1);
    }
    __CutsceneEnd();
}

void OvlFunc_945_2009894(void) {
    extern int __MapActor_GetActor(int);
    extern void __UI_Sanctum(int);
    unsigned char *p;
    unsigned int v;

    p = (unsigned char *)__MapActor_GetActor(0);
    v = (*(unsigned short *)(p + 6) + 0xffffe000) << 16;
    if (v > (0xc0 << 24)) {
        if (API_GetFlag(0x928) != 0 && API_GetFlag(0x93e) == 0) {
            __UI_Sanctum(0x11);
        } else {
            __UI_Sanctum(0xf);
        }
    } else {
        API_CutsceneStart();
        if (API_GetFlag(0x93e)) {
            API_MessageID(0x1f81);
        } else if (API_GetFlag(0x8a << 4)) {
            API_MessageID(0x1f48);
        } else if (API_GetFlag(0x928)) {
            API_MessageID(0x1f7f);
        } else if (API_GetFlag(0x925)) {
            API_MessageID(0x1f7d);
        } else {
            API_MessageID(0x1f7b);
        }
        if (API_GetFlag(0x928) != 0 && API_GetFlag(0x93e) == 0) {
            API_ActorMessage(0x11, 0);
        } else {
            API_ActorMessage(0xf, 0);
        }
        API_CutsceneEnd();
    }
}

void OvlFunc_945_2009978(void) {
    extern void __Func_808e118(void);
    extern void __Func_8091f90(int, int);
    extern void __StartMapBattle(int, int);
    unsigned int r3;
    unsigned int r2;

    API_CutsceneStart();
    do {
        __Func_808e118();
        r3 = (unsigned int)&gState;
        r2 = 0x22b;
        r3 += r2;
        *(unsigned char *)r3 = 3;
    } while (0);
    API_ClearFlag(0x8f << 4);
    if (API_GetFlag(0x928) == 0) {
        r2 = 0x10;
        __Func_8091f90((int)Lconst_6f, r2);
        __StartMapBattle(0x3e, 0);
    } else if (API_GetFlag(0x929) == 0) {
        __Func_8091f90((int)Lconst_6f, 0x12);
        __StartMapBattle(0x3e, 1);
    } else if (API_GetFlag(0x92a) == 0) {
        __Func_8091f90((int)Lconst_6f, 0x14);
        __StartMapBattle(0x3e, 2);
    }
    API_CutsceneEnd();
}

extern void __Func_8093304(int);
extern void __Func_8019aa0(int, int, int);

void OvlFunc_945_2009a08(void) {
    if (API_GetFlag(0x301) == 0) {
        return;
    }
    __CutsceneStart();
    __Func_8093304(8);
	__Func_8019aa0(0x1e48, 1, 8);
    API_MapActor_SetSpeed(0, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(0, 0xcc << 1, 0x86);
    OvlFunc_945_200c880(0, 0x80 << 7);
	__CutsceneEnd();
}

void OvlFunc_945_2009a60(void)
{
    if (API_GetFlag(0x922)) {
        API_CutsceneStart();
        __Func_808e118();
        API_Func_80933d4(0x19999, 0x3333);
        OvlFunc_945_200c8ac(0xe0 << 17, -1, 0x27e0000, 0x10000028);
        API_MessageID(0x1d26);
        OvlFunc_945_200c86c(8);
        OvlFunc_945_200c86c(10);
        OvlFunc_945_200c880(8, 0x3000);
        OvlFunc_945_200c86c(8);
        OvlFunc_945_200c880(10, 0xd000);
        OvlFunc_945_200c86c(10);
        OvlFunc_945_200c880(9, 0x5000);
        OvlFunc_945_200c86c(9);
        API_Func_8092adc(8, 0, 20);
        OvlFunc_945_200c86c(8);
        OvlFunc_945_200c880(9, 0x8000);
        OvlFunc_945_200c86c(9);
        OvlFunc_945_200c86c(10);
        OvlFunc_945_200c86c(8);
        OvlFunc_945_200c880(10, 0xb000);
        OvlFunc_945_200c86c(8);
        API_SetFlag(0x920);
        API_CutsceneEnd();
    }
}

static inline void Ship945_Byte(unsigned char *field, int value) { *field = value; }

void OvlFunc_945_2009b34(void)
{
    extern unsigned char gScript_945__0200e6a8[];
    extern void __Func_808e118(void);
    extern int __MapActor_GetActor(int);
    extern void OvlFunc_945_200c86c(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void OvlFunc_945_200c8ac(unsigned int, unsigned int, unsigned int, unsigned int);
    int flagValue1;
    unsigned char *actor;

    flagValue1 = API_GetFlag(0x911);
    if (flagValue1 == 0) return;
    API_CutsceneStart();
    __Func_808e118();
    API_Func_80933d4(0x26666, 0x4ccc);
    OvlFunc_945_200c8ac(0x5b70000, -1, 0x1d00000, 0x10000014);
    API_Func_80925cc(13, 1);
    API_MessageID(0x1d56);
    OvlFunc_945_200c86c(0x200d);
    OvlFunc_945_200c880(12, 0xd000);
    API_MapActor_Emote(12, 0x102, 20);
    API_Func_809259c(12, 2);
    OvlFunc_945_200c86c(0x800c);
    API_Func_80925cc(14, 1);
    API_ActorMessage_Wait(0xa00e, 0, 20);
    OvlFunc_945_200c880(12, 0);
    API_MapActor_Emote(12, 0x101, 0x28);
    API_MapActor_Emote(14, 0x103, 0x28);
    API_Func_809259c(14, 3);
    OvlFunc_945_200c86c(0xa00e);
    API_MapActor_Surprise(12, 0x102);
    API_CutsceneWait(0x28);
    API_Func_809259c(12, 3);
    OvlFunc_945_200c86c(0x800c);
    API_Func_80925cc(14, 1);
    OvlFunc_945_200c86c(0xa00e);
    OvlFunc_945_200c880(14, 0xb000);
    OvlFunc_945_200c86c(0xa00e);
    OvlFunc_945_200c880(12, 0xd000);
    API_MapActor_Emote(12, 0x100, 30);
    API_Func_809259c(12, 1);
    OvlFunc_945_200c86c(0x800c);
    API_MapActor_DoAnim(13, 4);
    OvlFunc_945_200c86c(0x200d);
    API_Func_809259c(13, 2);
    OvlFunc_945_200c86c(0x200d);
    API_MapActor_SetAnim(12, 4);
    OvlFunc_945_200c86c(0x800c);
    API_MapActor_DoAnim(14, 4);
    OvlFunc_945_200c86c(0xa00e);
    OvlFunc_945_200c880(14, 0x8000);
    API_Func_809259c(14, 2);
    API_ActorMessage_Wait(0xa00e, 0, 20);
    API_Func_8092adc(12, 0, 0);
    API_MapActor_Emote(12, 0x102, 0x50);
    API_ActorMessage_Wait(0x800c, 0, 20);
    API_MapActor_Emote(14, 0x103, 0);
    API_MapActor_Emote(13, 0x103, 0x3c);
    API_Func_809259c(14, 2);
    OvlFunc_945_200c86c(0xa00e);
    OvlFunc_945_200c880(14, 0xb000);
    API_Func_80925cc(14, 1);
    OvlFunc_945_200c86c(0xa00e);
    OvlFunc_945_200c880(13, 0x3000);
    API_MapActor_Emote(13, 0x101, 0);
    API_MapActor_Emote(12, 0x101, 0x3c);
    API_Func_80925cc(13, 1);
    OvlFunc_945_200c86c(13);
    API_MapActor_Emote(14, 0x103, 0x28);
    API_Func_80925cc(14, 1);
    OvlFunc_945_200c86c(0xa00e);
    API_Func_8092adc(12, 0xd000, 0);
    API_Func_8092adc(13, 0x5000, 0x28);
    API_Func_8092adc(12, 0, 0);
    OvlFunc_945_200c880(13, 0x3000);
    API_Func_80925cc(12, 2);
    API_ActorMessage_Wait(0x800c, 0, 20);
    API_Func_8092adc(14, 0x4000, 0x28);
    OvlFunc_945_200c86c(0xa00e);
    API_Func_809259c(12, 2);
    API_Func_80925cc(13, 2);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(13, 1);
    OvlFunc_945_200c86c(13);
    API_MapActor_DoAnim(14, 3);
    OvlFunc_945_200c86c(0xa00e);
    API_MapActor_Emote(12, 0x102, 0x28);
    API_Func_80925cc(12, 2);
    OvlFunc_945_200c86c(0x800c);
    API_MapActor_DoAnim(13, 3);
    OvlFunc_945_200c86c(13);
    API_Func_8092adc(14, 0xb000, 0x28);
    API_MapActor_SetAnim(14, 3);
    API_MapActor_DoAnim(13, 3);
    API_MapActor_SetSpeed(14, 0x19999, 0xcccc);
    API_MapActor_SetSpeed(13, 0x19999, 0xcccc);
    API_MapActor_SetBehavior(14, (int)gScript_945__0200e6a8);
    API_MapActor_SetBehavior(13, (int)gScript_945__0200e6a8);
    API_CutsceneWait(20);
    API_Func_8092adc(12, 0x4000, 0);
    API_MapActor_SetSpeed(0, 0x26666, 0x13333);
    actor = (unsigned char *)__MapActor_GetActor(0);
    actor += 0x5a;
    Ship945_Byte(actor, 0xfe & *actor);
    API_MapActor_TravelToAnimWait(0, 0xb8, 0x208);
    API_CutsceneWait(1);
    actor = (unsigned char *)__MapActor_GetActor(0);
    actor += 0x5a;
    Ship945_Byte(actor, 1 | *actor);
    API_Func_8092adc(0, 0x8000, 20);
    API_Func_8092adc(0, 0x4000, 0);
    API_MapActor_Jump(12, 4, 20);
    API_Func_8092adc(0, 0xa000, 20);
    API_Func_809259c(12, 2);
    OvlFunc_945_200c86c(12);
    API_MapActor_SetSpeed(12, 0x19999, 0xcccc);
    API_MapActor_SetBehavior(12, (int)gScript_945__0200e6a8);
    API_CutsceneWait(0x28);
    API_Func_8092adc(0, 0x4000, 0);
    API_MapActor_WaitScript(12);
    API_SetFlag(0x922);
    API_CutsceneEnd();
}

void OvlFunc_945_2009f3c(void)
{
    extern void OvlFunc_945_200c86c(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void OvlFunc_945_200c8ac(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void __PlayMapMusic(void);
    unsigned char *actor;

    API_PlaySound(28);
    API_Func_80933d4(0x26666, 0x4ccc);
    OvlFunc_945_200c8ac(0x1c80000, -1, 0x2880000, 0x10000014);
    API_Func_80925cc(9, 1);
    API_MessageID(0x1d93);
    OvlFunc_945_200c86c(9);
    API_Func_8092adc(0, 0xd000, 0);
    API_Func_8092adc(10, 0xd000, 0);
    API_Func_8092adc(11, 0, 0);
    API_Func_8092adc(12, 0x3000, 0);
    API_Func_8092adc(13, 0x8000, 0x28);
    API_MapActor_Emote(9, 0x103, 0x28);
    API_Func_809259c(9, 2);
    OvlFunc_945_200c86c(9);
    API_Func_8092adc(12, 0, 0);
    API_Func_8092adc(11, 0xd000, 0);
    API_Func_8092adc(13, 0xd000, 20);
    API_Func_80925cc(11, 1);
    OvlFunc_945_200c86c(0x100b);
    API_MapActor_Emote(13, 0x102, 20);
    API_Func_809259c(13, 2);
    OvlFunc_945_200c86c(13);
    API_MapActor_Emote(9, 0x105, 0x3c);
    OvlFunc_945_200c86c(9);
    API_MapActor_Emote(12, 0x104, 20);
    OvlFunc_945_200c86c(0x900c);
    API_Func_80925cc(8, 1);
    API_MapActor_SetAnim(8, 3);
    OvlFunc_945_200c86c(8);
    OvlFunc_945_200c880(12, 0x3000);
    OvlFunc_945_200c86c(0x900c);
    OvlFunc_945_200c880(11, 0xb000);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(10);
    API_Func_80925cc(13, 1);
    API_MapActor_DoAnim(13, 3);
    OvlFunc_945_200c86c(13);
    API_Func_8092adc(13, 0x8000, 0);
    API_Func_8092adc(12, 0x5000, 0);
    OvlFunc_945_200c880(11, 0x5000);
    API_MapActor_SetSpeed(13, 0x6666, 0x3333);
    API_MapActor_SetSpeed(12, 0xcccc, 0x6666);
    API_MapActor_TravelToAnim(12, 0x1bc, 0x29c);
    API_MapActor_TravelToAnimWait(13, 0x1d8, 0x29c);
    API_MapActor_WaitMovement(12);
    API_MapActor_SetAnim(12, 1);
    API_CutsceneWait(0x50);
    OvlFunc_945_200c880(12, 0xd000);
    API_MapActor_Emote(12, 0x101, 0x3c);
    API_Func_80925cc(11, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x400b, 0, 0x28);
    API_Func_80925cc(11, 2);
    API_Func_8092adc(11, 0xd000, 0);
    OvlFunc_945_200c86c(0x100b);
    API_Func_8092adc(12, 0xd000, 0);
    API_MapActor_Emote(9, 0x101, 0x3c);
    API_MapActor_SetAnim(11, 4);
    API_CutsceneWait(20);
    OvlFunc_945_200c86c(0x100b);
    API_MapActor_SetAnim(9, 3);
    OvlFunc_945_200c86c(9);
    API_Func_8092adc(13, 0xd000, 0);
    API_MapActor_Surprise(13, 0x102);
    API_MapActor_Jump(13, 2, 20);
    OvlFunc_945_200c86c(13);
    API_MapActor_DoAnim(9, 3);
    OvlFunc_945_200c86c(9);
    OvlFunc_945_200c880(11, 0xd000);
    API_Func_80925cc(12, 1);
    OvlFunc_945_200c86c(0x100c);
    API_MapActor_Emote(8, 0x105, 0x28);
    API_MapActor_SetAnim(8, 3);
    OvlFunc_945_200c86c(8);
    API_MapActor_Emote(13, 0x102, 0x28);
    API_MapActor_Jump(13, 4, 0);
    OvlFunc_945_200c86c(13);
    API_MapActor_SetAnim(9, 3);
    OvlFunc_945_200c86c(9);
    API_Func_80925cc(11, 1);
    OvlFunc_945_200c86c(0x100b);
    API_MapActor_Emote(8, 0x102, 0x28);
    API_ActorMessage(8, 0);
    API_Func_809259c(11, 2);
    API_ActorMessage_Wait(0x100b, 0, 0x28);
    API_MapActor_Emote(9, 0x100, 0);
    API_Func_8092adc(9, 0x5000, 20);
    API_Func_809259c(9, 2);
    API_ActorMessage_Wait(9, 0, 20);
    API_MapActor_SetAnim(11, 3);
    API_CutsceneWait(20);
    API_MapActor_Emote(12, 0x100, 0x28);
    API_Func_809259c(12, 2);
    OvlFunc_945_200c86c(0x100c);
    API_Func_8092adc(11, 0x5000, 20);
    OvlFunc_945_200c86c(0x400b);
    API_Func_809259c(12, 2);
    OvlFunc_945_200c86c(0x100c);
    API_MapActor_DoAnim(11, 3);
    API_Func_80925cc(11, 1);
    OvlFunc_945_200c86c(0x400b);
    API_MapActor_Emote(12, 0x102, 0x3c);
    API_Func_80925cc(9, 1);
    OvlFunc_945_200c86c(9);
    API_MapActor_Emote(11, 0x101, 0x28);
    API_Func_8092adc(11, 0xd000, 20);
    API_MapActor_SetAnim(9, 3);
    OvlFunc_945_200c86c(9);
    API_MapActor_Emote(11, 0x103, 20);
    API_Func_809259c(11, 2);
    OvlFunc_945_200c86c(0x100b);
    API_MapActor_Emote(9, 0x108, 0x28);
    OvlFunc_945_200c86c(9);
    API_Func_80925cc(8, 1);
    API_MapActor_SetAnim(8, 3);
    OvlFunc_945_200c86c(8);
    API_Func_8092adc(9, 0xd000, 0x28);
    OvlFunc_945_200c86c(9);
    API_Func_80925cc(12, 1);
    API_CutsceneWait(20);
    OvlFunc_945_200c86c(0x100c);
    API_Func_8092adc(11, 0x5000, 0);
    API_Func_8092adc(9, 0x5000, 0);
    API_Func_8092adc(13, 0x8000, 0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(10, 0xb000, 0x28);
    API_Func_80925cc(11, 1);
    OvlFunc_945_200c86c(0x400b);
    API_MapActor_SetAnim(12, 3);
    API_ActorMessage_Wait(0x100c, 0, 20);
    API_Func_80925cc(9, 2);
    OvlFunc_945_200c86c(9);
    API_MapActor_Emote(12, 0x108, 0x28);
    API_MapActor_SetAnim(12, 3);
    OvlFunc_945_200c86c(0x100c);
    API_MapActor_DoAnim(8, 3);
    OvlFunc_945_200c86c(8);
    API_Func_8092adc(8, 0x8000, 20);
    API_PlaySound(19);
    API_Func_809259c(8, 2);
    API_MapActor_Emote(8, 0x100, 0x50);
    OvlFunc_945_200c86c(0x8008);
    API_MapActor_Emote(12, 0x101, 0);
    API_MapActor_Emote(11, 0x101, 0);
    API_MapActor_Emote(13, 0x101, 0);
    API_MapActor_Emote(10, 0x101, 0);
    API_MapActor_Emote(0, 0x101, 0x28);
    API_Func_8092adc(12, 0xd000, 0);
    API_Func_8092adc(11, 0xd000, 0);
    API_Func_8092adc(13, 0xb000, 0);
    API_Func_8092adc(10, 0xb000, 0);
    API_Func_8092adc(0, 0xc000, 0x28);
    API_MapActor_Surprise(8, 0x102);
    API_MapActor_Jump(8, 4, 0x28);
    API_Func_809259c(8, 2);
    API_ActorMessage(0x8008, 0);
    API_MapActor_SetSpeed(8, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(8, 0x1db, 0x256);
    API_Func_8092adc(8, 0x8000, 0);
    API_MapActor_SetSpeed(9, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(9, 0x1ce, 0x26a);
    OvlFunc_945_200c880(9, 0xb000);
    API_MapActor_Emote(9, 0x100, 0x28);
    API_Func_809259c(9, 2);
    OvlFunc_945_200c86c(0x8009);
    API_MapActor_Emote(11, 0x101, 0x3c);
    OvlFunc_945_200c86c(11);
    API_MapActor_Emote(12, 0x102, 20);
    OvlFunc_945_200c86c(0x100c);
    API_MapActor_Emote(8, 0x103, 20);
    API_MapActor_Jump(8, 4, 0);
    API_Func_8092adc(8, 0x5000, 20);
    OvlFunc_945_200c86c(8);
    API_PlaySound(28);
    API_Func_809259c(8, 3);
    OvlFunc_945_200c86c(8);
    API_MapActor_Emote(13, 0x101, 0x3c);
    OvlFunc_945_200c86c(13);
    OvlFunc_945_200c880(8, 0x3000);
    API_MapActor_DoAnim(8, 4);
    OvlFunc_945_200c86c(8);
    API_MapActor_TravelToAnimWait(12, 0x1bc, 0x274);
    OvlFunc_945_200c880(12, 0xd000);
    OvlFunc_945_200c86c(0x900c);
    API_Func_8092adc(8, 0x5000, 20);
    API_MapActor_DoAnim(8, 3);
    OvlFunc_945_200c86c(8);
    API_MapActor_Emote(11, 0x102, 0x3c);
    OvlFunc_945_200c86c(0x100b);
    API_MapActor_Emote(13, 0x107, 0x28);
    API_Func_809259c(13, 2);
    OvlFunc_945_200c86c(13);
    OvlFunc_945_200c880(9, 0x3000);
    API_MapActor_DoAnim(9, 4);
    OvlFunc_945_200c86c(0x1009);
    OvlFunc_945_200c880(12, 0);
    API_Func_80925cc(8, 1);
    OvlFunc_945_200c86c(8);
    API_Func_8092adc(11, 0, 0);
    API_MapActor_Emote(12, 0x105, 0);
    API_MapActor_Emote(9, 0x105, 0x3c);
    API_Func_80933d4(0x13333, 0x2666);
    OvlFunc_945_200c8ac(0x1d00000, -1, 0x2a80000, 0x10000000);
    API_Func_80925cc(10, 1);
    OvlFunc_945_200c880(10, 0);
    OvlFunc_945_200c86c(10);
    API_Func_8092adc(0, 0, 0);
    API_MapActor_Emote(10, 0x102, 0x28);
    OvlFunc_945_200c86c(10);
    API_Func_8092adc(10, 0x8000, 20);
    API_MapActor_Emote(10, 0x100, 0);
    API_MapActor_Jump(10, 4, 0x28);
    OvlFunc_945_200c86c(10);
    API_Func_80925cc(10, 1);
    OvlFunc_945_200c86c(10);
    API_MapActor_SetSpeed(13, 0x10000, 0x8000);
    API_MapActor_TravelToAnim(13, 0x1b6, 0x293);
    API_Func_8092adc(8, 0x8000, 0);
    API_Func_8092adc(9, 0xb000, 0);
    API_Func_8092adc(12, 0x3000, 0);
    API_Func_8092adc(11, 0xb000, 0);
    API_PlaySound(17);
    API_MapActor_SetSpeed(10, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(10, 0x1e8, 0x2ae);
    API_Func_8092adc(10, 0xb000, 0);
    API_MapActor_WaitMovement(13);
    API_MapActor_SetAnim(13, 1);
    API_Func_8092adc(13, 0xd000, 0);
    __PlayMapMusic();
    API_SetFlag(0x921);
}

static inline void ShipShowMessage(int actor, int flags) {
    extern int __ShowActorMessage_NoWait(int, int);
    __ShowActorMessage_NoWait(actor, flags);
}

void OvlFunc_945_200a7d8(void)
{
    extern unsigned char gScript_883__0200e6e4[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern unsigned int __Func_8078a08(int);
    extern void __Func_808e118(void);
    extern int __Func_8091c7c(int, int);
    extern void OvlFunc_945_200c86c(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    int choice2;
    int choice3;
    struct Actor *actor;

    API_CutsceneStart();
    __Func_808e118();
    API_MapActor_Face(8, 0, 0);
    API_MapActor_Emote(8, 0x100, 0x28);
    API_Func_809259c(8, 3);
    API_MessageID(0x1ddb);
    OvlFunc_945_200c86c(0x1008);
    API_Func_809259c(9, 1);
    API_Func_809259c(12, 1);
    API_Func_809259c(11, 1);
    API_Func_809259c(13, 1);
    API_Func_80925cc(10, 1);
    API_Func_8092adc(9, 0xd000, 0);
    API_Func_8092adc(12, 0xd000, 0);
    API_Func_8092adc(11, 0xd000, 0);
    API_Func_8092adc(13, 0xd000, 0);
    API_Func_8092adc(10, 0xb000, 20);
    API_Func_80925cc(8, 1);
    ShipShowMessage(0x1008, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_Func_80925cc(9, 2);
        OvlFunc_945_200c86c(0x9009);
        API_MapActor_Emote(8, 0x108, 0x28);
        OvlFunc_945_200c86c(0x1008);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 2);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 2);
        API_Func_80925cc(9, 1);
        OvlFunc_945_200c86c(0x9009);
        API_Func_809259c(8, 2);
        OvlFunc_945_200c86c(0x9008);
    }
    API_MapActor_Emote(13, 0x105, 0x28);
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0x1d80000, -1, 0x27c0000, 1);
    API_MapActor_SetSpeed(13, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(13, 0x1d8, 0x296);
    OvlFunc_945_200c880(13, 0xb000);
    OvlFunc_945_200c86c(13);
    OvlFunc_945_200c880(8, 0x5000);
    API_MapActor_DoAnim(8, 3);
    API_MapActor_DoAnim(9, 3);
    API_Func_8092adc(11, 0, 0);
    API_Func_8092adc(13, 0x8000, 20);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_DoAnim(13, 3);
    API_CutsceneWait(20);
    API_Func_80925cc(12, 1);
    OvlFunc_945_200c880(12, 0x3000);
    API_ActorMessage_Wait(0x100c, 0, 20);
    API_Func_8092adc(11, 0xb000, 20);
    API_MapActor_Emote(11, 0x101, 0x28);
    OvlFunc_945_200c86c(11);
    OvlFunc_945_200c880(12, 0xd000);
    API_MapActor_SetAnim(12, 4);
    OvlFunc_945_200c86c(0x900c);
    OvlFunc_945_200c880(13, 0xb000);
    API_Func_80925cc(13, 1);
    OvlFunc_945_200c86c(13);
    API_MapActor_Emote(9, 0x100, 20);
    OvlFunc_945_200c880(9, 0x3000);
    API_Func_80925cc(9, 1);
    OvlFunc_945_200c86c(9);
    API_MapActor_DoAnim(12, 3);
    OvlFunc_945_200c86c(0x900c);
    API_Func_80925cc(8, 2);
    OvlFunc_945_200c86c(8);
    OvlFunc_945_200c880(12, 0xd000);
    API_MapActor_DoAnim(12, 3);
    OvlFunc_945_200c86c(0x900c);
    API_Func_80925cc(11, 2);
    OvlFunc_945_200c880(11, 0xb000);
    OvlFunc_945_200c86c(11);
    OvlFunc_945_200c880(12, 0);
    OvlFunc_945_200c86c(0x900c);
    API_Func_8092adc(8, 0x3000, 0);
    API_Func_8092adc(9, 0, 0);
    API_Func_8092adc(11, 0xd000, 0);
    API_Func_8092adc(13, 0xd000, 0);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0x1e6, 0x260);
    API_Func_8092adc(0, 0x8000, 0);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, actor->pos.x, actor->pos.z);
    }
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(1, 0x1e6, 0x270);
    API_Func_8092adc(1, 0x8000, 0);
    actor = (struct Actor *)__MapActor_GetActor(1);
    if (actor != 0) {
        API_MapActor_SetPos(2, actor->pos.x, actor->pos.z);
    }
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(2, 0x1e6, 0x280);
    API_Func_8092adc(2, 0x8000, 0);
    actor = (struct Actor *)__MapActor_GetActor(2);
    if (actor != 0) {
        API_MapActor_SetPos(3, actor->pos.x, actor->pos.z);
    }
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(3, 0x1e6, 0x290);
    API_Func_8092adc(3, 0x8000, 20);
    API_MapActor_Emote(12, 0x108, 0x28);
    OvlFunc_945_200c86c(0x900c);
    API_Func_80925cc(9, 1);
    OvlFunc_945_200c86c(0x1009);
    API_MapActor_DoAnim(8, 3);
    OvlFunc_945_200c880(8, 0x5000);
    OvlFunc_945_200c86c(8);
    OvlFunc_945_200c880(8, 0x3000);
    ShipShowMessage(8, 0);
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 1) {
        API_Func_809259c(8, 2);
        OvlFunc_945_200c86c(8);
        API_MapActor_DoAnim(12, 3);
        OvlFunc_945_200c86c(0x900c);
        API_Func_809259c(9, 1);
        API_ActorMessage_Wait(0x9009, 0, 0x28);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 3);
        API_Func_809259c(8, 3);
        API_ActorMessage_Wait(8, 0, 0x28);
    }
    API_Func_80925cc(13, 1);
    OvlFunc_945_200c86c(13);
    API_Func_80925cc(8, 1);
    OvlFunc_945_200c880(8, 0x5000);
    OvlFunc_945_200c86c(8);
    API_Func_80925cc(13, 1);
    OvlFunc_945_200c880(13, 0xb000);
    API_ActorMessage_Wait(13, 0, 20);
    API_MapActor_DoAnim(8, 3);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(8, 0x1d8, 0x278);
    OvlFunc_945_200c86c(0x4008);
    API_MapActor_Emote(13, 0x103, 0x28);
    API_Func_809259c(13, 2);
    OvlFunc_945_200c86c(13);
    API_MapActor_SetAnim(8, 4);
    API_ActorMessage_Wait(0x4008, 0, 0x28);
    API_Func_80925cc(11, 1);
    OvlFunc_945_200c880(11, 0xb000);
    OvlFunc_945_200c86c(0x100b);
    API_MapActor_Emote(10, 0x102, 20);
    API_MapActor_SetSpeed(10, 0x26666, 0x13333);
    API_MapActor_Jump(10, 2, 0);
    API_MapActor_TravelToAnimWait(10, 0x1ce, 0x2a2);
    OvlFunc_945_200c880(10, 0xb000);
    API_Func_809259c(10, 2);
    OvlFunc_945_200c86c(10);
    OvlFunc_945_200c880(9, 0x5000);
    API_MapActor_DoAnim(9, 4);
    OvlFunc_945_200c86c(9);
    API_MapActor_DoAnim(8, 3);
    OvlFunc_945_200c86c(0x4008);
    API_MapActor_Emote(13, 0x102, 0x28);
    API_ActorMessage_Wait(13, 0, 0x28);
    OvlFunc_945_200c880(9, 0x3000);
    API_Func_809259c(9, 2);
    OvlFunc_945_200c86c(0x1009);
    OvlFunc_945_200c880(12, 0);
    API_Func_8092adc(8, 0x8000, 0);
    API_Func_8092adc(9, 0x5000, 0);
    API_Func_8092adc(11, 0xb000, 0);
    API_Func_8092adc(13, 0xb000, 0);
    API_Func_8092adc(10, 0xb000, 20);
    API_Func_80925cc(12, 1);
    API_ActorMessage_Wait(0x100c, 0, 20);
    API_MapActor_Emote(8, 0x101, 0x28);
    OvlFunc_945_200c880(8, 0xd000);
    ShipShowMessage(0x1008, 0);
    choice3 = __Func_8091c7c(0, 0);
    if (choice3 == 0) {
        API_MapActor_DoAnim(8, 3);
        OvlFunc_945_200c86c(0x1008);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        OvlFunc_945_200c86c(0x1008);
    }
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(8, 3);
    OvlFunc_945_200c86c(0x1008);
    OvlFunc_945_200c880(8, 0x8000);
    OvlFunc_945_200c86c(0x4008);
    OvlFunc_945_200c8e8(2, 0, 0);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_SetAnim(9, 3);
    API_Func_809259c(10, 2);
    API_Func_80925cc(13, 2);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(10, (int)gScript_883__0200e6e4);
    API_CutsceneWait(4);
    API_MapActor_SetBehavior(11, (int)gScript_883__0200e6e4);
    API_CutsceneWait(4);
    API_MapActor_SetBehavior(12, (int)gScript_883__0200e6e4);
    API_CutsceneWait(4);
    API_MapActor_SetBehavior(9, (int)gScript_883__0200e6e4);
    API_MapActor_SetAnim(3, 2);
    actor = (struct Actor *)__MapActor_GetActor(2);
    if (actor != 0) {
        API_MapActor_TravelTo(3, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_SetAnim(2, 2);
    actor = (struct Actor *)__MapActor_GetActor(1);
    if (actor != 0) {
        API_MapActor_TravelTo(2, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetAnim(1, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetBehavior(13, (int)gScript_883__0200e6e4);
    API_MapActor_TravelToAnimWait(8, 0x1c8, 0x288);
    OvlFunc_945_200c880(8, 0);
    __Func_8078a08(0xe8);
    API_SetFlag(0x925);
    API_CutsceneEnd();
}
struct ShipInitState945 { unsigned char pad[0x1c2]; short room; };
extern struct ShipInitState945 ShipInitState945 __asm__("gState");
extern unsigned char *ShipInitScene945 __asm__("iwram_3001ebc");
extern int ShipRockTimer945 __asm__(".Lm945_7f84");
extern void OvlFunc_945_200dc48(void);
extern unsigned char gScript_945__0200e8e4[];
extern void OvlFunc_945_200b364(void);
extern void OvlFunc_945_200b51c(void);
extern void OvlFunc_945_200b66c(void);
extern void OvlFunc_945_200bd10(void);
extern void OvlFunc_945_200bdec(void);
extern void OvlFunc_945_200be34(void);
extern void OvlFunc_945_200beec(void);
extern void OvlFunc_945_200bf94(void);
extern void OvlFunc_945_200c0e8(void);
extern void OvlFunc_945_200c13c(void);
extern void OvlFunc_945_200c198(void);
extern void OvlFunc_945_200c218(void);
extern void OvlFunc_945_200d068(void);
extern void OvlFunc_945_200d684(void);
extern void OvlFunc_945_200d6dc(void);
extern void OvlFunc_945_200d780(void);
extern void OvlFunc_945_200d7ec(void);
extern void OvlFunc_945_200dca4(void);
extern void OvlFunc_945_200dd10(void);
extern void OvlFunc_945_200e110(void);
extern void CS945_Dispatch(int, int, int) __asm__("OvlFunc_945_200c8e8");
extern void CS945_ActorState(unsigned int, unsigned int) __asm__("__Func_8092950");

int TolbiBoundShipHull_MapInit(void)
{
    API_WaitFrames(1);
    API_SetFlag(0x144);
    *(int *)(ShipInitScene945 + 0x1c0) = 0x209;
    switch (ShipInitState945.room) {
    case 1: case 2: case 11:
        if (!API_GetFlag(0x93e) && API_GetFlag(0x928))
            CS945_ActorState(9, 2);
        else if (API_GetFlag(0x911))
            CS945_ActorState(12, 2);
        break;
    case 4: case 12: case 15: case 16: case 17: case 18: case 19:
    case 20: case 21: case 23: case 24:
        CS945_ActorState(19, 2);
        break;
    case 5:
        if (!API_GetFlag(0x93e) && API_GetFlag(0x911))
            CS945_ActorState(13, 2);
        break;
    }
    switch (ShipInitState945.room) {
    case 1: case 2: OvlFunc_945_200b51c(); break;
    case 4: OvlFunc_945_200b66c(); break;
    case 5: OvlFunc_945_200b364(); break;
    case 10:
        if (API_GetFlag(0x928)) OvlFunc_945_200bdec();
        else OvlFunc_945_200bd10();
        break;
    case 11:
        if (API_GetFlag(0x928)) OvlFunc_945_200beec();
        else OvlFunc_945_200be34();
        break;
    case 12: OvlFunc_945_200bf94(); break;
    case 13: OvlFunc_945_200c0e8(); break;
    case 14: OvlFunc_945_200c13c(); break;
    case 15:
        if (API_GetFlag(0x109)) {
            API_CutsceneStart();
            CS945_Dispatch(25, 1, 0);
            CS945_Dispatch(22, 0, 0);
            API_MapActor_SetBehavior(36, (int)gScript_945__0200e8e4);
            API_MapActor_SetBehavior(37, (int)gScript_945__0200e8e4);
            API_MapActor_SetBehavior(38, (int)gScript_945__0200e8e4);
            CS945_ActorState(36, 3);
            CS945_ActorState(37, 3);
            CS945_ActorState(38, 3);
            API_CutsceneEnd();
        } else OvlFunc_945_200c198();
        break;
    case 16: OvlFunc_945_200c218(); break;
    case 17:
        if (API_GetFlag(0x109)) {
            API_CutsceneStart();
            CS945_Dispatch(25, 2, 0);
            CS945_Dispatch(22, 0, 0);
            API_MapActor_SetBehavior(36, (int)gScript_945__0200e8e4);
            API_MapActor_SetBehavior(37, (int)gScript_945__0200e8e4);
            API_CutsceneEnd();
        } else OvlFunc_945_200d068();
        break;
    case 18: OvlFunc_945_200d684(); break;
    case 19:
        if (API_GetFlag(0x109)) {
            API_CutsceneStart();
            CS945_Dispatch(25, 3, 0);
            CS945_Dispatch(22, 0, 0);
            API_MapActor_SetBehavior(36, (int)gScript_945__0200e8e4);
            API_MapActor_SetBehavior(37, (int)gScript_945__0200e8e4);
            CS945_ActorState(36, 3);
            CS945_ActorState(37, 3);
            API_CutsceneEnd();
        } else OvlFunc_945_200d6dc();
        break;
    case 20: OvlFunc_945_200d780(); break;
    case 21:
        if (API_GetFlag(0x109)) {
            if (API_GetFlag(0x302)) {
                ShipRockTimer945 = 0;
                API_StartTask(OvlFunc_945_200dc48, 0xc80);
                API_MapActor_SetAnim(9, 5);
            }
        } else OvlFunc_945_200d7ec();
        break;
    case 22: OvlFunc_945_200dca4(); break;
    case 23: if (!API_GetFlag(0x109)) OvlFunc_945_200dd10(); break;
    case 24: OvlFunc_945_200e110(); break;
    case 30:
        CS945_Dispatch(20, 0x926, 0x92b);
        CS945_Dispatch(21, 0, 0);
        API_SetFlag(0x902);
        API_Func_8091e9c(1);
        break;
    }
    return 0;
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200b364.s");
void OvlFunc_945_200b51c(void)
{
    extern int __GetFlag();
    extern void __MapActor_SetPos();
    extern void OvlFunc_945_200c890(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void __MapActor_SetBehavior();
    extern void OvlFunc_945_200d004(void);
    extern void OvlFunc_945_200c8e8();
    extern unsigned char gScript_945__0200e958[];
    extern unsigned char gScript_945__0200e840[];

    if (__GetFlag(0x93e)) {
        __MapActor_SetPos(8, 0, 0);
        __MapActor_SetPos(9, 0, 0);
        __MapActor_SetPos(10, 0, 0);
        __MapActor_SetPos(11, 0, 0);
        __MapActor_SetPos(12, 0, 0);
        OvlFunc_945_200c8e8(14, 0, 0);
    } else if (__GetFlag(0x8a << 4)) {
        OvlFunc_945_200c890(8, 0x98, 0x1bc, 0x3000);
        __MapActor_SetBehavior(8, (int)gScript_945__0200e958);
        OvlFunc_945_200c890(10, 0xb8, 0x1e0, 0xb000);
        OvlFunc_945_200c890(12, 0xaa, 0x1e8, 0xb000);
        OvlFunc_945_200c890(13, 0x88, 0x1e8, 0xd000);
        OvlFunc_945_200c890(15, 0x78, 0x1e0, 0xd000);
        OvlFunc_945_200c890(14, 0xb8, 0x20e, 0xb000);
        OvlFunc_945_200c890(11, 0x88, 0x248, 0x8000);
        __MapActor_SetBehavior(11, (int)gScript_945__0200e840);
    } else if (__GetFlag(0x928)) {
        OvlFunc_945_200d004();
    } else if (__GetFlag(0x925)) {
        OvlFunc_945_200c8e8(18, 0, 0);
    } else if (__GetFlag(0x911) && __GetFlag(0x922)) {
        OvlFunc_945_200c8e8(14, 0, 0);
        __MapActor_SetPos(12, 0, 0);
    }
}
extern void OvlFunc_945_200c890(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3);
extern void __WaitFrames(int);
extern void OvlFunc_945_200b7b4(void);
extern void OvlFunc_945_200c254(int);
extern void OvlFunc_945_200b8ac(void);

void OvlFunc_945_200b66c(void) {
    extern void __WaitFrames(int);
    extern int __GetFlag(int);
    extern void __MapActor_SetPos(int, int, int);
    extern void __MapActor_SetAnim(int, int);
    extern void OvlFunc_945_200b7b4(void);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern void OvlFunc_945_200c890(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_945_200c254(int);
    extern void OvlFunc_945_200b8ac(void);

    __WaitFrames(1);
    OvlFunc_945_200b7b4();
    if (__GetFlag(0x93e)) {
        OvlFunc_945_200c8e8(4, 4, 0);
        OvlFunc_945_200c890(8, 0x19c, 0xde, 0x3000);
        OvlFunc_945_200c890(9, 0x1ca, 0xa1, 0x8000);
    } else if (__GetFlag(0x8a0)) {
        API_MapActor_SetPos(8, 0x1d80000, 0x980000);
        __MapActor_SetAnim(9, 5);
        OvlFunc_945_200c8e8(4, 4, 0);
    } else if (__GetFlag(0x92b)) {
        OvlFunc_945_200c8e8(0x10, 0, 0);
        OvlFunc_945_200c8e8(4, 4, 0);
        OvlFunc_945_200c254(3);
    } else if (__GetFlag(0x92a)) {
        OvlFunc_945_200c8e8(0x10, 0, 0);
        OvlFunc_945_200c8e8(4, 3, 0);
        OvlFunc_945_200c254(2);
    } else if (__GetFlag(0x929)) {
        OvlFunc_945_200c8e8(0x10, 0, 0);
        OvlFunc_945_200c8e8(4, 2, 0);
        OvlFunc_945_200c254(1);
    } else if (__GetFlag(0x928)) {
        OvlFunc_945_200c8e8(0x10, 0, 0);
        API_MapActor_SetPos(0xa, 0, 0);
        OvlFunc_945_200c254(0);
    } else {
        __MapActor_SetAnim(9, 5);
        if (__GetFlag(0x925) && !__GetFlag(0x926)) {
            OvlFunc_945_200b8ac();
        }
    }
}

void OvlFunc_945_200b7b4(void) {
    unsigned int i;

    for (i = 0x1c; i <= 0x23; i++) {
        ((struct Actor *)__MapActor_GetActor(i))->collision |= 8;
    }
}

void OvlFunc_945_200b7d8(int arg0)
{
    extern unsigned int OvlFunc_945_200cfa8(unsigned int arg0, unsigned int arg1);
    unsigned int actor;

    if (arg0 != 0 && !API_GetFlag(0x929))
        return;
    actor = OvlFunc_945_200cfa8(0, 0);
    if (actor != 0) {
        OvlFunc_945_200c890(actor, 0x19a, 0xac, 0xd000);
        API_MapActor_SetPos(10, 0, 0);
    }

    if (arg0 != 0 && !API_GetFlag(0x92a))
        return;
    actor = OvlFunc_945_200cfa8(1, 0);
    if (actor != 0) {
        OvlFunc_945_200c890(actor, 0x1d6, 0xac, 0xb000);
        API_MapActor_SetPos(11, 0, 0);
    }

    if (arg0 != 0 && !API_GetFlag(0x92b))
        return;
    actor = OvlFunc_945_200cfa8(2, 0);
    if (actor != 0) {
        OvlFunc_945_200c890(actor, 0x19a, 0xcc, 0xd000);
        API_MapActor_SetPos(12, 0, 0);
    }

    if (arg0 != 0)
        return;
    actor = OvlFunc_945_200cfa8(3, 0);
    if (actor != 0) {
        OvlFunc_945_200c890(actor, 0x1d6, 0xcc, 0xb000);
        API_MapActor_SetPos(13, 0, 0);
    }
}

void OvlFunc_945_200b8ac(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __MapActor_GetActor(int);
    extern void OvlFunc_945_200c86c(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void OvlFunc_945_200c890(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_945_200c8ac(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    struct Actor *actor;

    API_CutsceneStart();
    OvlFunc_945_200c8e8(25, 0, 0);
    OvlFunc_945_200c8e8(24, 1, 0);
    OvlFunc_945_200c8ac(0x1b80000, -1, 0xa80000, 0x1000001);
    OvlFunc_945_200c890(27, 0x1b8, 0xa4, 0x5000);
    OvlFunc_945_200c890(8, 0x1ac, 0xbe, 0xd000);
    OvlFunc_945_200c890(9, 0x1c4, 0xbe, 0xb000);
    API_MapActor_SetAnim(9, 1);
    OvlFunc_945_200c890(0, 0x1b8, 0x86, 0x8000);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x100;
    API_MapTransitionIn();
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0x198, 0x86);
    API_MapActor_TravelToAnimWait(0, 0x198, 0x94);
    API_MapActor_TravelToAnimWait(0, 0x1a8, 0x94);
    API_Func_8092adc(0, 0x4000, 20);
    API_Func_80925cc(27, 1);
    API_MessageID(0x1e27);
    OvlFunc_945_200c86c(27);
    API_Func_80925cc(8, 1);
    OvlFunc_945_200c86c(8);
    API_MapActor_DoAnim(27, 3);
    OvlFunc_945_200c86c(27);
    OvlFunc_945_200c880(27, 0xd000);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, actor->pos.x, actor->pos.z);
    }
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(1, 0x1b8, 0x94);
    API_Func_8092adc(1, 0x4000, 0);
    actor = (struct Actor *)__MapActor_GetActor(1);
    if (actor != 0) {
        API_MapActor_SetPos(2, actor->pos.x, actor->pos.z);
    }
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(2, 0x1c8, 0x94);
    API_Func_8092adc(2, 0x4000, 0);
    actor = (struct Actor *)__MapActor_GetActor(2);
    if (actor != 0) {
        API_MapActor_SetPos(3, actor->pos.x, actor->pos.z);
    }
    API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(3, 0x1d8, 0x94);
    API_Func_8092adc(3, 0x4000, 20);
    OvlFunc_945_200c8e8(0, 0, 0x3c);
    OvlFunc_945_200c8e8(1, 0x4000, 20);
    OvlFunc_945_200c8e8(2, 1, 20);
    API_Func_8092adc(27, 0x5000, 20);
    OvlFunc_945_200c86c(27);
    API_Func_809259c(9, 1);
    API_MapActor_Emote(9, 0x100, 0x28);
    OvlFunc_945_200c86c(9);
    API_Func_809259c(1, 3);
    API_MapActor_Emote(1, 0x103, 0x3c);
    API_MapActor_DoAnim(27, 3);
    OvlFunc_945_200c86c(27);
    API_Func_80925cc(10, 1);
    API_MapActor_SetAnim(10, 3);
    OvlFunc_945_200c86c(10);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_DoAnim(13, 3);
    OvlFunc_945_200c8e8(0, 0, 0x28);
    OvlFunc_945_200c8e8(2, 1, 0);
    OvlFunc_945_200c8e8(1, 0x4000, 20);
    API_MapActor_DoAnim(27, 4);
    OvlFunc_945_200c86c(27);
    API_MapActor_Emote(8, 0x102, 0x3c);
    API_Func_809259c(8, 1);
    OvlFunc_945_200c86c(8);
    API_MapActor_DoAnim(27, 3);
    OvlFunc_945_200c86c(27);
    API_Func_8092adc(8, 0, 0);
    API_Func_8092adc(9, 0x8000, 0x28);
    API_MapActor_Emote(8, 0x102, 0);
    API_MapActor_Emote(8, 0x102, 0x28);
    API_Func_80925cc(27, 1);
    API_MapActor_SetAnim(27, 3);
    API_ActorMessage_Wait(27, 0, 20);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(0x28);
    API_MapActor_Emote(9, 0x100, 20);
    OvlFunc_945_200c880(9, 0xb000);
    OvlFunc_945_200c86c(9);
    OvlFunc_945_200c880(27, 0x3000);
    API_MapActor_Emote(27, 0x101, 0x3c);
    API_ActorMessage_Wait(27, 0, 0x3c);
    API_MapActor_Emote(27, 0x106, 20);
    OvlFunc_945_200c880(27, 0xb000);
    API_MapActor_DoAnim(27, 3);
    OvlFunc_945_200c86c(27);
    OvlFunc_945_200c8e8(3, 2, 0x50);
    OvlFunc_945_200c880(8, 0xd000);
    API_Func_809259c(8, 2);
    OvlFunc_945_200c86c(8);
    API_MapActor_DoAnim(9, 3);
    API_Func_809259c(9, 2);
    OvlFunc_945_200c86c(9);
    OvlFunc_945_200c880(27, 0x5000);
    API_MapActor_DoAnim(27, 3);
    API_Func_80925cc(27, 1);
    OvlFunc_945_200c86c(27);
    API_MapActor_SetSpeed(27, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(27, 0x198, 0x9e);
    API_MapActor_TravelToAnimWait(27, 0x198, 0x94);
    API_Func_8092adc(27, 0, 20);
    API_Func_80925cc(27, 1);
    OvlFunc_945_200c86c(27);
    OvlFunc_945_200c8e8(1, 0x8000, 20);
    OvlFunc_945_200c8e8(2, 1, 0);
    API_MapActor_TravelToAnimWait(27, 0x198, 0x86);
    API_MapActor_TravelToAnim(27, 0x1b8, 0x86);
    API_CutsceneWait(0x28);
    OvlFunc_945_200c8e8(9, 10, 0);
    API_SetFlag(0x926);
}
void OvlFunc_945_200bd10(void)
{
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern void __Actor_SetScript(void *, void *);
    extern unsigned char gScript_945__0200e738[];
    void *actor;

    API_CutsceneStart();
    OvlFunc_945_200c8e8(0xf, 0, 1);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(8, 0x1d4, 0x266);
    API_MapActor_TravelToAnimWait(8, 0x1d8, 0x254);
    API_Func_8092adc(8, 0x8000, 20);
    API_MapActor_Jump(8, 4, 20);
    actor = OvlFunc_945_200c5d0();
    API_CutsceneWait(20);
    API_PlaySound(0xd6);
    __Actor_SetScript(actor, gScript_945__0200e738);
    API_CutsceneWait(40);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnimWait(8, 0x1d2, 0x270);
    OvlFunc_945_200c880(8, 0x5000);
    API_Func_809259c(8, 2);
    API_MessageID(0x1e3b);
    API_ActorMessage_Wait(8, 0, 20);
    OvlFunc_945_200c8e8(9, 0xb, 0);
}
void OvlFunc_945_200bdec(void) {
    extern void __CutsceneStart(void);
    extern void __Func_8092adc(int, int, int);
    extern void __Func_809259c(int, int);
    extern void __MessageID(int);
    extern void __ActorMessage_Wait(int, int, int);
    extern void OvlFunc_945_200c8e8(int, int, int);

    __CutsceneStart();
    OvlFunc_945_200c8e8(0xf, 1, 1);
    API_Func_8092adc(8, 0x5000, 0x28);
    __Func_809259c(8, 2);
    __MessageID(0x1e3d);
    __ActorMessage_Wait(8, 0, 0x14);
    OvlFunc_945_200c8e8(9, 0xb, 0);
}

void OvlFunc_945_200be34(void) {
    extern void OvlFunc_945_200c8e8(int, int, int);

    API_CutsceneStart();
    OvlFunc_945_200c8e8(0x18, 0, 0);
    OvlFunc_945_200c8e8(0x12, 0, 0);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(0x10, 0x96 << 16, 0x24a0000);
    OvlFunc_945_200c8ac(0x9c << 16, -1, 0x86 << 18, 0x1000001);
    OvlFunc_945_200c8e8(8, 0, 0);
    API_MapActor_SetSpeed(0x10, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0x10, 0xa8, 0x242);
    API_MapActor_TravelToAnimWait(0x10, 0xa8, 0x22a);
    API_Func_8092adc(0x10, 0x80 << 8, 0x14);
    API_Func_809259c(0x10, 2);
    API_MessageID(0x1e3c);
    API_ActorMessage_Wait(0x10, 0, 0x14);
    OvlFunc_945_200c8e8(9, 0xc, 0);
}

void OvlFunc_945_200beec(void)
{
    extern void OvlFunc_945_200d004(void);
    extern void OvlFunc_945_200c8e8(int, int, int);

    API_CutsceneStart();
    API_MapActor_SetPos(0, 0, 0);
    OvlFunc_945_200d004();
    API_MapActor_SetPos(0x12, 0x96 << 16, 0x24a0000);
    OvlFunc_945_200c8ac(0x9c << 16, -1, 0x86 << 18, 0x1000001);
    OvlFunc_945_200c8e8(8, 0, 0);
    API_MapActor_SetSpeed(0x12, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0x12, 0xa8, 0x242);
    API_MapActor_TravelToAnimWait(0x12, 0xa8, 0x22a);
    API_Func_8092adc(0x12, 0x80 << 8, 0x14);
    API_Func_809259c(0x12, 2);
    API_MessageID(0x1e3c);
    API_ActorMessage_Wait(0x12, 0, 0x14);
    OvlFunc_945_200c8e8(9, 0xc, 0);
}
extern void OvlFunc_945_200c670(int);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_945_200bf94(void)
{
    extern void __CutsceneStart(void);
    extern void __MapActor_SetAnim(int, int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern void __MapActor_SetPos(int, int, int);
    extern void OvlFunc_945_200c670(int);
    extern void __Func_80933d4(int, int);
    extern void __Func_80933f8(int, int, int, int);
    extern void __CutsceneWait(int);
    extern void __PlaySound(int);
    extern int __GetFlag(int);
    extern void __Func_8091e9c(int);

    __CutsceneStart();
    __MapActor_SetAnim(9, 5);
    OvlFunc_945_200c8e8(0x18, 1, 0);
    __MapActor_SetPos(0, 0, 0);
    OvlFunc_945_200c8e8(0x11, 0, 0);
    OvlFunc_945_200c670(0);
    OvlFunc_945_200c8e8(8, 1, 0x14);
    __Func_80933d4(0x6666, 0xccc);
    __Func_80933f8(0xdc << 17, -1, 0xb0 << 16, 1);
    __CutsceneWait(0x14);
    __MapActor_SetAnim(9, 7);
    __CutsceneWait(0x1e);
    __PlaySound(0xbc);
    __CutsceneWait(0x1e);
    OvlFunc_945_200c670(0x10);
    __CutsceneWait(0x50);
    OvlFunc_945_200c670(0);
    __CutsceneWait(0x3c);
    __MapActor_SetAnim(9, 7);
    __CutsceneWait(0x1e);
    __PlaySound(0xbc);
    __CutsceneWait(0x1e);
    OvlFunc_945_200c670(0x10);
    __CutsceneWait(0x50);
    OvlFunc_945_200c670(0);
    __CutsceneWait(0x5a);
    __PlaySound(0xbc);
    __CutsceneWait(0x1e);
    *(int *)((char *)iwram_3001ebc + 0x1c0) = 0x203;
    OvlFunc_945_200c8e8(9, 0, 0);
    if (__GetFlag(0x92b) != 0) {
        __Func_8091e9c(0x14);
    } else if (__GetFlag(0x92a) != 0) {
        __Func_8091e9c(0x12);
    } else if (__GetFlag(0x929) != 0) {
        __Func_8091e9c(0x11);
    } else if (__GetFlag(0x928) != 0) {
        __Func_8091e9c(0x10);
    } else {
        __Func_8091e9c(0xd);
    }
}

void OvlFunc_945_200c0e8(void) {
    extern void __MessageID(int);
    extern void __CutsceneStart(void);
    extern void __CutsceneWait(int);
    extern void __Func_8092adc(int, int, int);
    extern void __Func_80925cc(int, int);
    extern void __Func_809259c(int, int);
    extern void __ActorMessage_Wait(int, int, int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern int _MSG_1e40;

    __CutsceneStart();
    OvlFunc_945_200c8e8(0xf, 1, 1);
    __Func_80925cc(8, 1);
    __CutsceneWait(0xa);
    API_Func_8092adc(8, 0x3000, 0x14);
    __Func_809259c(8, 2);
    __MessageID((int) (&_MSG_1e40));
    __ActorMessage_Wait(8, 0, 0x14);
    OvlFunc_945_200c8e8(9, 0xe, 0);
}

void OvlFunc_945_200c13c(void)
{
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern void OvlFunc_945_200c86c(int);
    extern void __Func_8092adc(int, int, int);

    __CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    __WaitFrames(1);
    OvlFunc_945_200c8e8(0xf, 1, 1);
    __Func_80925cc(8, 1);
    __MessageID(0x1e43);
    OvlFunc_945_200c86c(8);
    API_Func_8092adc(8, 0xd000, 0x28);
    OvlFunc_945_200c8e8(9, 0xf, 0);
}

void OvlFunc_945_200c198(void) {
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern void OvlFunc_945_200d0e4(void);
    extern void __Func_8092950(int, int);
    extern unsigned char gScript_945__0200e840[];
    extern unsigned char gScript_945__0200e8e4[];

    API_CutsceneStart();
    OvlFunc_945_200c8e8(0x18, 1, 0);
    OvlFunc_945_200c8e8(0x19, 1, 0);
    OvlFunc_945_200b7b4();
    OvlFunc_945_200c8e8(0x13, 0xb, 0xc);
    API_MapActor_SetAnim(0xa, 6);
    API_MapActor_SetBehavior(0xc, (int)gScript_945__0200e840);
    API_MapActor_SetBehavior(0x24, (int)gScript_945__0200e8e4);
    API_MapActor_SetBehavior(0x25, (int)gScript_945__0200e8e4);
    API_MapActor_SetBehavior(0x26, (int)gScript_945__0200e8e4);
    __Func_8092950(0x24, 3);
    __Func_8092950(0x25, 3);
    __Func_8092950(0x26, 3);
    OvlFunc_945_200d0e4();
    API_CutsceneEnd();
}

void OvlFunc_945_200c218(void) {
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern void OvlFunc_945_200d2f4(void);
    __CutsceneStart();
    OvlFunc_945_200c8e8(0x18, 1, 0);
    OvlFunc_945_200c8e8(0x19, 0, 0);
    OvlFunc_945_200c8e8(0x13, 0xb, 0xc);
    OvlFunc_945_200d2f4();
    __SetFlag(0x928);
    __CutsceneEnd();
}


void OvlFunc_945_200c254(int passengerKind)
{
    extern int __MapActor_GetActor(int);
    extern void OvlFunc_945_200b7d8(int);
    extern void OvlFunc_945_200c86c(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void OvlFunc_945_200c890(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern unsigned int OvlFunc_945_200cfa8(unsigned int, unsigned int);
    int detour;
    int flagValue1;
    unsigned int passenger;
    int flagValue3;
    int flagValue4;
    int flagValue5;
    struct Actor *actor;

    API_CutsceneStart();
    OvlFunc_945_200c8e8(24, 0, 0);
    OvlFunc_945_200c890(0, 0x1b0, 0x86, 0x8000);
    OvlFunc_945_200b7d8(1);
    API_WaitFrames(1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0x196, 0x86);
    API_MapActor_TravelToAnimWait(0, 0x196, 0x98);
    API_MapActor_TravelToAnimWait(0, 0x1a5, 0x98);
    API_Func_80925cc(27, 1);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(27, 0, 10);
    flagValue1 = API_GetFlag(0x300);
    if (flagValue1 != 0) {
        detour = 0;
        passenger = OvlFunc_945_200cfa8(passengerKind, 0);
        API_Func_80925cc(27, 1);
        API_CutsceneWait(20);
        API_MapActor_TurnToFaceActor(27, 0, 10);
        API_MessageID(0x1ebc);
        OvlFunc_945_200c86c(0xa01b);
        API_MapActor_DoAnim(0, 3);
        API_MapActor_SetSpeed(0, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(0, 0x1b0, 0xa8);
        API_Func_8092adc(0, 0xc000, 0);
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(passenger, actor->pos.x, actor->pos.z);
        }
        API_MapActor_SetSpeed(passenger, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(passenger, 0x1c0, 0xa8);
        API_Func_8092adc(passenger, 0xb000, 20);
        API_Func_8092adc(27, 0x3000, 20);
        API_MapActor_SetAnim(27, 3);
        OvlFunc_945_200c86c(27);
        API_MapActor_Emote(passenger, 0x102, 0x3c);
        API_Func_80925cc(27, 1);
        API_MapActor_SetAnim(27, 3);
        OvlFunc_945_200c86c(27);
        API_MapActor_DoAnim(passenger, 3);
        flagValue3 = API_GetFlag(0x92b);
        if (flagValue3 != 0) {
            API_Func_8092adc(0, 0x2000, 0);
            API_Func_8092adc(27, 0x3000, 0);
            API_MapActor_TravelToAnimWait(passenger, 0x1d6, 0xcc);
            OvlFunc_945_200c880(passenger, 0xb000);
        } else {
            flagValue4 = API_GetFlag(0x92a);
            if (flagValue4 != 0) {
                API_MapActor_TravelToAnimWait(0, 0x1a6, 0x9a);
                API_Func_8092adc(0, 0x6000, 0);
                API_Func_8092adc(27, 0x5000, 0);
                API_MapActor_TravelToAnimWait(passenger, 0x19a, 0xcc);
                detour = 1;
                OvlFunc_945_200c880(passenger, 0xd000);
            } else {
                flagValue5 = API_GetFlag(0x929);
                if (flagValue5 != 0) {
                    API_Func_8092adc(0, 0x2000, 0);
                    API_Func_8092adc(27, 0x3000, 0);
                    API_MapActor_TravelToAnimWait(passenger, 0x1d6, 0xac);
                    OvlFunc_945_200c880(passenger, 0xb000);
                } else {
                    API_MapActor_TravelToAnimWait(0, 0x1a6, 0x9a);
                    API_Func_8092adc(0, 0x6000, 0);
                    API_Func_8092adc(27, 0x5000, 0);
                    API_MapActor_TravelToAnimWait(passenger, 0x19a, 0xac);
                    detour = 1;
                    OvlFunc_945_200c880(passenger, 0xd000);
                }
            }
        }
        API_MapActor_TurnToFaceActor(27, 0, 20);
        OvlFunc_945_200c86c(0x201b);
        API_MapActor_DoAnim(0, 3);
        API_MapActor_DoAnim(27, 3);
        API_MapActor_SetSpeed(27, 0x10000, 0x8000);
        if (detour != 0) {
            API_MapActor_TravelToAnimWait(27, 0x1ac, 0xa4);
            API_MapActor_TravelToAnimWait(27, 0x198, 0xa4);
        }
        API_MapActor_TravelToAnimWait(27, 0x198, 0x86);
        API_MapActor_TravelToAnim(27, 0x1b8, 0x86);
        API_CutsceneWait(0x28);
        OvlFunc_945_200c8e8(9, 10, 0);
    } else {
        API_MessageID(0x1eb7);
        API_ActorMessage_Wait(0xa01b, 0, 0x28);
        API_MapActor_Emote(27, 0x101, 0x3c);
        OvlFunc_945_200c86c(0xa01b);
        API_MapActor_Surprise(0, 0x102);
        API_CutsceneWait(0x3c);
        API_MapActor_Emote(27, 0x103, 0x28);
        API_Func_809259c(27, 2);
        OvlFunc_945_200c86c(0xa01b);
        API_MapActor_Emote(27, 0x105, 0x28);
        OvlFunc_945_200c86c(0xa01b);
        API_MapActor_DoAnim(27, 4);
        OvlFunc_945_200c86c(0xa01b);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(20);
        API_Func_8091e9c(4);
    }
}
extern void *Lm945_6968 __asm__(".Lm945_6968");

void *OvlFunc_945_200c5d0(void)
{
    int flag;
    int mask;
    unsigned char *actor;
    unsigned char *sprite;
    unsigned char *buf;

    flag = API_GetFlag(0x200);
    if (flag != 0) {
        return Lm945_6968;
    }

    actor = (unsigned char *)__CreateActor(0x16, 0x1c70000, 0x40000, 0x2200000);
    actor[0x55] = flag;
    actor[0x5c] = 1;
    sprite = *(unsigned char **)(actor + 0x50);
    sprite[0x27] = flag;
    mask = ~0x20;
    sprite[5] = sprite[5] & mask;
    sprite[9] = sprite[9] & 0xf;
    buf = (unsigned char *)__galloc_iwram(0x11, 0x608);
    __LoadItemIcon(0xe8);
    buf += 0x400;
    __UploadSpriteGFX(sprite[0x1c], 0x80, buf);
    __gfree(0x11);
    API_SetFlag(0x200);
    Lm945_6968 = actor;
    return actor;
}
void OvlFunc_945_200c670(int arg0)
{
    extern int __GetFlag(int);
    extern unsigned int OvlFunc_945_200cfa8(unsigned int, unsigned int);
    extern void __MapActor_SetPos(int, int, int);
    extern int __MapActor_GetActor(int);
    extern void OvlFunc_945_200c8e8(int, int, int);

    unsigned int actor;

    if (__GetFlag(0x928)) {
        actor = OvlFunc_945_200cfa8(0, 0);
        __MapActor_SetPos(actor, 0xcd << 17, 0xac << 16);
        OvlFunc_945_200c8e8(7, actor, arg0);
        __MapActor_SetPos(0xa, 0, 0);
    } else {
        OvlFunc_945_200c8e8(5, 0xa, arg0);
    }

    if (__GetFlag(0x929)) {
        actor = OvlFunc_945_200cfa8(1, 0);
        __MapActor_SetPos(actor, 0xeb << 17, 0xac << 16);
        ((struct Actor *)__MapActor_GetActor(actor))->scale.x = 0xffff0000;
        OvlFunc_945_200c8e8(7, actor, arg0);
        __MapActor_SetPos(0xb, 0, 0);
    } else {
        OvlFunc_945_200c8e8(6, 0xb, arg0);
    }

    if (__GetFlag(0x92a)) {
        actor = OvlFunc_945_200cfa8(2, 0);
        __MapActor_SetPos(actor, 0xcd << 17, 0xcc << 16);
        OvlFunc_945_200c8e8(7, actor, arg0);
        __MapActor_SetPos(0xc, 0, 0);
    } else {
        OvlFunc_945_200c8e8(5, 0xc, arg0);
    }

    if (__GetFlag(0x92b)) {
        actor = OvlFunc_945_200cfa8(3, 0);
        __MapActor_SetPos(actor, 0xeb << 17, 0xcc << 16);
        ((struct Actor *)__MapActor_GetActor(actor))->scale.x = 0xffff0000;
        OvlFunc_945_200c8e8(7, actor, arg0);
        __MapActor_SetPos(0xd, 0, 0);
    } else {
        OvlFunc_945_200c8e8(6, 0xd, arg0);
    }

    OvlFunc_945_200c8e8(5, 0xe, arg0);
    OvlFunc_945_200c8e8(6, 0xf, arg0);
    OvlFunc_945_200c8e8(5, 0x10, arg0);
    OvlFunc_945_200c8e8(6, 0x11, arg0);
}
void OvlFunc_945_200c7cc(int actor)
{
    extern void __MapActor_SetAnimSpeed(int, int);

    switch (actor) {
    case 0x13:
        API_MapActor_SetAnim(actor, 6);
        __MapActor_SetAnimSpeed(actor, 8);
        break;
    case 0x12:
    case 0x14:
        API_MapActor_SetAnim(actor, 5);
        __MapActor_SetAnimSpeed(actor, 0x10);
        break;
    case 0x16:
    case 0x17:
        API_MapActor_SetAnim(actor, 5);
        __MapActor_SetAnimSpeed(actor, 0x14);
        break;
    case 0x18:
        API_MapActor_SetAnim(actor, 10);
        __MapActor_SetAnimSpeed(actor, 8);
        break;
    case 0x15:
    case 0x19:
        API_MapActor_SetAnim(actor, 5);
        __MapActor_SetAnimSpeed(actor, 4);
        break;
    case 0x1a:
        API_MapActor_SetAnim(actor, 9);
        __MapActor_SetAnimSpeed(actor, 4);
        break;
    }
}

void OvlFunc_945_200c86c(int a) {
    extern void __ActorMessage(int a, int b);
    extern void __CutsceneWait(int a);
    __ActorMessage(a, 0);
    __CutsceneWait(10);
}

void OvlFunc_945_200c880(int a, unsigned short b) {
    extern void __Func_8092adc(int a, unsigned short b, int c);
    __Func_8092adc(a, b, 10);
}

void OvlFunc_945_200c890(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    __MapActor_SetPos(arg0, (arg1 << 16), (arg2 << 16), arg3);
    r6 = arg3;
    *(unsigned short *)((char *)__MapActor_GetActor(r5) + 6) = r6;
}

void OvlFunc_945_200c8ac(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    unsigned int r6;

    __Func_80933f8(arg0, arg1, arg2, 1 & ~arg3);
    r6 = 0x1111 & arg3;
    if ((0x80 << 21) & arg3) {
        __Func_8093530();
    }
    if ((0x80 << 17) & arg3) {
        __Func_800fe9c();
    }
    __CutsceneWait(r6);
}


static inline void ShipDispatchHalf(unsigned short *p, int value) { *p = value; }

void ShipSceneDispatch(int operation, int arg1, int arg2) __asm__("OvlFunc_945_200c8e8");
void ShipSceneDispatch(int operation, int arg1, int arg2)
{
    extern unsigned int __Func_8093554(void);
    extern void __MapActor_SetAnimSpeed(int, int);
    extern void __Func_8092504(int);
    extern void __DeleteFieldActor(int);
    extern void __LoadFieldActors(void *);
    extern unsigned char ShipSceneState[] __asm__("iwram_3001ebc");
    extern unsigned char ShipActors0[] __asm__(".Lm945_72a0");
    extern unsigned char ShipActors1[] __asm__(".Lm945_7300");
    extern unsigned char ShipActors2[] __asm__(".Lm945_7360");
    extern unsigned char ShipActors3[] __asm__(".Lm945_73c0");
    extern unsigned char gScript_945__0200e840[];
    extern void OvlFunc_945_200b7d8(int);
    extern void *OvlFunc_945_200c5d0(void);
    extern void OvlFunc_945_200c7cc(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void OvlFunc_945_200c890(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_945_200c8ac(unsigned int, unsigned int, unsigned int, unsigned int);
    unsigned char *actor;
    unsigned char *savedActor;
    unsigned int i;

    switch (operation) {
    case 0:
        API_Func_8092adc(0, 0, 0);
        API_Func_8092adc(1, 0x8000, 0);
        API_Func_8092adc(2, 0, 0);
        API_Func_8092adc(3, 0x8000, arg2);
        break;
    case 1:
        API_Func_8092adc(0, arg1, 0);
        API_Func_8092adc(1, arg1, 0);
        API_Func_8092adc(2, arg1, 0);
        API_Func_8092adc(3, arg1, arg2);
        break;
    case 2:
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_SetAnim(2, 3);
        API_MapActor_SetAnim(3, 3);
        if (arg1 != 0) __Func_8092504(3);
        if (arg2 != 0) API_CutsceneWait(arg2);
        break;
    case 3:
        API_MapActor_Surprise(0, 0x102);
        API_MapActor_Surprise(1, 0x102);
        API_MapActor_Surprise(2, 0x102);
        API_MapActor_Surprise(3, 0x102);
        API_CutsceneWait(arg2);
        break;
    case 4:
        for (i = 0; i < (unsigned int)arg1; i++)
            API_MapActor_SetPos(i + 10, 0, 0);
        break;
    case 5:
        actor = ((unsigned char *)__MapActor_GetActor(arg1));
        ShipDispatchHalf((unsigned short *)(actor + 6), 0x5000);
        API_MapActor_SetAnim(arg1, 5);
        __MapActor_SetAnimSpeed(arg1, arg2);
        break;
    case 6:
        actor = ((unsigned char *)__MapActor_GetActor(arg1));
        ShipDispatchHalf((unsigned short *)(actor + 6), 0x5000);
        *(int *)(actor + 0x18) = -0x10000;
        API_MapActor_SetAnim(arg1, 5);
        __MapActor_SetAnimSpeed(arg1, arg2);
        break;
    case 7:
        actor = ((unsigned char *)__MapActor_GetActor(arg1));
        ShipDispatchHalf((unsigned short *)(actor + 6), 0x5000);
        OvlFunc_945_200c7cc(arg1);
        if (arg2 == 0) __MapActor_SetAnimSpeed(arg1, 0);
        break;
    case 8:
        *(int *)(*(unsigned char **)ShipSceneState + 0x1c0) = 0x202;
        API_MapTransitionIn();
        if (arg1 != 0) API_WaitMapTransition();
        API_CutsceneWait(0);
        break;
    case 9:
        API_MapTransitionOut();
        API_WaitMapTransition();
        if (arg1 != 0) API_Func_8091e9c(arg1);
        break;
    case 10:
        ShipSceneDispatch(24, 1, 0);
        ShipSceneDispatch(25, 0, 0);
        OvlFunc_945_200b7d8(0);
        OvlFunc_945_200c890(0, 0x1b0, 0xa8, 0x4000);
        OvlFunc_945_200c890(1, 0x1c0, 0xa8, 0x4000);
        OvlFunc_945_200c890(2, 0x1a8, 0x98, 0x4000);
        OvlFunc_945_200c890(3, 0x1ca, 0x98, 0x4000);
        break;
    case 11:
        if (arg1 != 0) {
            API_MapActor_SetAnim(13, 1);
            actor = ((unsigned char *)__MapActor_GetActor(13));
            ShipDispatchHalf((unsigned short *)(actor + 6), 0x3000);
            actor = ((unsigned char *)__MapActor_GetActor(13));
            *(int *)(actor + 0x18) = 0x10000;
        }
        API_MapActor_SetAnim(14, 1);
        actor = ((unsigned char *)__MapActor_GetActor(14));
        ShipDispatchHalf((unsigned short *)(actor + 6), 0x5000);
        API_MapActor_SetAnim(15, 1);
        actor = ((unsigned char *)__MapActor_GetActor(15));
        ShipDispatchHalf((unsigned short *)(actor + 6), 0x3000);
        actor = ((unsigned char *)__MapActor_GetActor(15));
        *(int *)(actor + 0x18) = 0x10000;
        API_MapActor_SetAnim(16, 1);
        actor = ((unsigned char *)__MapActor_GetActor(16));
        ShipDispatchHalf((unsigned short *)(actor + 6), 0x5000);
        API_MapActor_SetAnim(17, 1);
        actor = ((unsigned char *)__MapActor_GetActor(17));
        ShipDispatchHalf((unsigned short *)(actor + 6), 0x3000);
        actor = ((unsigned char *)__MapActor_GetActor(17));
        *(int *)(actor + 0x18) = 0x10000;
        API_MapActor_SetPos(28, 0x19a0000, 0xae0000);
        API_MapActor_SetPos(29, 0x1d60000, 0xae0000);
        API_MapActor_SetPos(30, 0x19a0000, 0xce0000);
        API_MapActor_SetPos(31, 0x1d60000, 0xce0000);
        API_MapActor_SetPos(32, 0x19a0000, 0x11e0000);
        API_MapActor_SetPos(33, 0x1d60000, 0x11e0000);
        API_MapActor_SetPos(34, 0x19a0000, 0x13c0000);
        API_MapActor_SetPos(35, 0x1d60000, 0x13c0000);
        API_WaitFrames(1);
        if (arg1 != 0) API_Func_8092adc(13, 0xb000, 0);
        API_Func_8092adc(14, 0xd000, 0);
        API_Func_8092adc(15, 0xb000, 0);
        API_Func_8092adc(16, 0xd000, 0);
        OvlFunc_945_200c880(17, 0xb000);
        break;
    case 12:
        savedActor = ((unsigned char *)__MapActor_GetActor(arg1));
        API_MapActor_SetAnim(arg1, 1);
        if (arg2 != 0) ShipDispatchHalf((unsigned short *)(savedActor + 6), 0x3000);
        else ShipDispatchHalf((unsigned short *)(savedActor + 6), 0x5000);
        *(int *)(savedActor + 0x18) = 0x10000;
        break;
    case 13:
        API_MapActor_SetPos(9, 0, 0);
        API_MapActor_SetPos(12, 0, 0);
        API_MapActor_SetPos(11, 0, 0);
        API_MapActor_SetPos(13, 0, 0);
        API_MapActor_SetPos(10, 0, 0);
        break;
    case 14:
        API_MapActor_SetPos(14, 0, 0);
        API_MapActor_SetPos(13, 0, 0);
        break;
    case 15:
        ShipSceneDispatch(24, 1, 0);
        API_MapActor_SetPos(9, 0, 0);
        API_MapActor_SetPos(10, 0, 0);
        OvlFunc_945_200c890(8, 0x1bc, 0x266, 0xd000);
        API_MapActor_SetPos(0, 0, 0);
        if (arg1 != 0) OvlFunc_945_200c5d0();
        OvlFunc_945_200c8ac(0x1c00000, 0x200000, 0x2700000, 0x1000001);
        if (arg2 != 0) {
            *(int *)(*(unsigned char **)ShipSceneState + 0x1c0) = 0x202;
            API_MapTransitionIn();
            API_WaitMapTransition();
            API_CutsceneWait(20);
        }
        break;
    case 16:
        API_MapActor_SetPos(8, 0, 0);
        API_MapActor_SetPos(9, 0, 0);
        API_MapActor_SetPos(27, 0x1b60000, 0x980000);
        break;
    case 17:
        i = 0;
        do { API_MapActor_SetPos(i + 28, 0, 0); } while (++i <= 7);
        break;
    case 18:
        OvlFunc_945_200c890(12, 0x98, 0x214, 0xb000);
        OvlFunc_945_200c890(8, 0x86, 0x1ea, 0x3000);
        OvlFunc_945_200c890(9, 0xa6, 0x1ea, 0x5000);
        OvlFunc_945_200c890(10, 0xb6, 0x1f8, 0x5000);
        OvlFunc_945_200c890(11, 0x76, 0x1f8, 0x3000);
        ShipSceneDispatch(14, 0, 0);
        break;
    case 19:
        OvlFunc_945_200c890(8, 0x1a0, 0x148, 0);
        OvlFunc_945_200c890(9, 0x1c0, 0x160, 0xd000);
        OvlFunc_945_200c890(10, 0x1c6, 0xf8, 0x3000);
        OvlFunc_945_200c890(arg1, 0x198, 0x122, 0);
        OvlFunc_945_200c890(arg2, 0x198, 0x156, 0);
        OvlFunc_945_200c890(13, 0x1a4, 0x164, 0xd000);
        OvlFunc_945_200c890(14, 0x198, 0x130, 0);
        OvlFunc_945_200c890(15, 0x1a2, 0x17a, 0xd000);
        OvlFunc_945_200c890(16, 0x1b8, 0x106, 0x3000);
        OvlFunc_945_200c890(17, 0x1c0, 0x17a, 0xd000);
        break;
    case 20:
        for (i = (unsigned int)arg1; i <= (unsigned int)arg2; i++) API_ClearFlag(i);
        break;
    case 21:
        ShipSceneDispatch(20, 0x92c, 0x93d);
        ShipSceneDispatch(20, 0x917, 0x91f);
        ShipSceneDispatch(20, 0x990, 0x998);
        API_ClearFlag(0x300);
        API_ClearFlag(0x301);
        API_ClearFlag(0x302);
        break;
    case 22:
        API_WaitFrames(1);
        ShipSceneDispatch(23, 0, 0);
        API_MapActor_SetBehavior(12, (int)gScript_945__0200e840);
        break;
    case 23:
        __DeleteFieldActor(1);
        __DeleteFieldActor(2);
        __DeleteFieldActor(3);
        break;
    case 24:
        API_Func_80933f8(-1, -1, -1, 0);
        API_WaitFrames(1);
        if (arg1 != 0) {
            actor = (unsigned char *)__Func_8093554();
            actor += 0x55;
            *actor = 0;
        }
        break;
    case 25:
        __LoadFieldActors(ShipActors0);
        API_WaitFrames(1);
        if (arg1 == 1) {
            __LoadFieldActors(ShipActors1);
            API_WaitFrames(1);
        } else if (arg1 == 2) {
            __LoadFieldActors(ShipActors2);
            API_WaitFrames(1);
        } else if (arg1 == 3) {
            __LoadFieldActors(ShipActors3);
            API_WaitFrames(1);
        }
        break;
    }
}

unsigned int OvlFunc_945_200cfa8(unsigned int arg0, unsigned int arg1) {
    unsigned int actor;
    unsigned int flag;
    unsigned int i;

    flag = 0;
    actor = 8;
    if (arg1 == 0) {
        actor = 0x12;
    }
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

void OvlFunc_945_200d004(void) {
    extern void OvlFunc_945_200d038(int, int);
    OvlFunc_945_200d038(8, 0x92c);
    OvlFunc_945_200d038(8, 0x935);
    OvlFunc_945_200d038(8, 0x917);
    OvlFunc_945_200d038(8, 0x99 << 4);
}

void OvlFunc_945_200d038(unsigned int arg0, unsigned int arg1)
{
    extern int __GetFlag(unsigned int arg);
    extern void __MapActor_SetPos(unsigned int a, int b, int c);
    unsigned int p6;
    unsigned int p5;
    unsigned int i;

    p6 = arg0;
    p5 = arg1;
    for (i = 0; i <= 8; i++, p6++, p5++) {
        if (__GetFlag(p5)) {
            __MapActor_SetPos(p6, 0, 0);
            return;
        }
    }
}


void OvlFunc_945_200d068(void) {
    extern unsigned int OvlFunc_945_200cfa8(unsigned int, unsigned int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern void __DeleteFieldActor(int);
    extern void OvlFunc_945_200d0e4(void);
    extern unsigned char gScript_945__0200e840[];
    extern unsigned char gScript_945__0200e8e4[];
    unsigned int r6;

    r6 = OvlFunc_945_200cfa8(0, 0);
    API_CutsceneStart();
    OvlFunc_945_200c8e8(0x18, 1, 0);
    OvlFunc_945_200c8e8(0x19, 2, 0);
    OvlFunc_945_200b7b4();
    OvlFunc_945_200c8e8(0x13, r6, 0xc);
    API_MapActor_SetAnim(0xa, 6);
    API_MapActor_SetBehavior(r6, (int)gScript_945__0200e840);
    __DeleteFieldActor(0xb);
    API_MapActor_SetBehavior(0xc, (int)gScript_945__0200e840);
    API_MapActor_SetBehavior(0x24, (int)gScript_945__0200e8e4);
    API_MapActor_SetBehavior(0x25, (int)gScript_945__0200e8e4);
    OvlFunc_945_200d0e4();
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200d0e4.s");

void OvlFunc_945_200d2f4(void)
{
    extern unsigned char gScript_945__0200e7f0[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_945_200c86c(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void OvlFunc_945_200c890(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_945_200c8ac(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;

    OvlFunc_945_200c890(0, 0x1bc, 0x12c, 0);
    OvlFunc_945_200c890(1, 0x1ca, 0x136, 0);
    OvlFunc_945_200c890(2, 0x1bc, 0x14a, 0);
    OvlFunc_945_200c890(3, 0x1b0, 0x136, 0);
    OvlFunc_945_200c890(27, 0x1b8, 0x86, 0x8000);
    OvlFunc_945_200c890(10, 0x1c6, 0xf8, 0x3000);
    API_MapActor_SetAnim(10, 6);
    OvlFunc_945_200c8ac(0x1b80000, -1, 0x1340000, 0x1000001);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(1, 0xa000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    API_Func_8092adc(3, 0x2000, 0x28);
    OvlFunc_945_200c8e8(2, 1, 20);
    API_MessageID(0x1e6e);
    OvlFunc_945_200c86c(27);
    OvlFunc_945_200c8e8(1, 0xc000, 0);
    API_Func_80933d4(0x26666, 0x4ccc);
    API_Func_80933f8(0x1b80000, -1, 0xb00000, 1);
    API_MapActor_SetSpeed(27, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(27, 0x198, 0x86);
    API_MapActor_TravelToAnimWait(27, 0x198, 0x98);
    API_MapActor_TravelToAnimWait(27, 0x1a8, 0xa4);
    API_Func_80933d4(0x19999, 0x3333);
    API_Func_80933f8(0x1b80000, -1, 0x12c0000, 1);
    API_MapActor_TravelToAnimWait(27, 0x1a8, 0xde);
    API_MapActor_TravelToAnimWait(27, 0x1a8, 0x106);
    API_Func_8092adc(27, 0x3000, 20);
    API_Func_80925cc(27, 1);
    OvlFunc_945_200c86c(27);
    OvlFunc_945_200c8e8(2, 1, 20);
    API_MapActor_DoAnim(27, 3);
    API_Func_80925cc(27, 1);
    OvlFunc_945_200c86c(27);
    OvlFunc_945_200c8e8(3, 2, 0x3c);
    OvlFunc_945_200c8e8(1, 0xe000, 0x3c);
    API_Func_8092adc(27, 0, 0x28);
    API_Func_80925cc(27, 1);
    API_MapActor_SetAnim(27, 2);
    API_MapActor_TravelToWait(27, 0x1b0, 0x10c);
    API_MapActor_TravelToWait(27, 0x1c4, 0x10c);
    API_MapActor_SetAnim(27, 1);
    OvlFunc_945_200c880(27, 0xd000);
    API_Func_809259c(27, 2);
    API_ActorMessage_Wait(27, 0, 20);
    OvlFunc_945_200c8e8(1, 0xc000, 20);
    API_MapActor_DoAnim(27, 4);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(27, 0, 0x50);
    API_Func_80925cc(27, 1);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(27, 3);
    API_CutsceneWait(10);
    OvlFunc_945_200c880(27, 0x5000);
    __ShowActorMessage_NoWait(27, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_MapActor_DoAnim(27, 3);
        OvlFunc_945_200c86c(27);
    } else {
        API_MapActor_DoAnim(27, 4);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        OvlFunc_945_200c86c(27);
        OvlFunc_945_200c8e8(3, 2, 0x28);
        API_Func_80925cc(27, 1);
        API_MapActor_SetAnim(27, 3);
        OvlFunc_945_200c86c(27);
    }
    OvlFunc_945_200c8e8(2, 1, 20);
    API_MapActor_SetBehavior(1, (int)gScript_945__0200e7f0);
    API_MapActor_SetBehavior(2, (int)gScript_945__0200e7f0);
    __MapActor_RunScript(3, gScript_945__0200e7f0);
    API_Func_80933d4(0x9999, 0x1333);
    API_Func_80933f8(0x1b80000, -1, 0xb00000, 1);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0x1a8, 0x110);
    API_MapActor_TravelToAnim(0, 0x1a8, 0xa4);
    API_CutsceneWait(0x3c);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x209;
    OvlFunc_945_200c8e8(9, 0, 0);
    API_ClearFlag(0x301);
    API_ClearFlag(0x927);
    API_Func_8091e9c(4);
}

void OvlFunc_945_200d684(void)
{
    extern unsigned int OvlFunc_945_200cfa8(unsigned int a, unsigned int b);
    extern void OvlFunc_945_200c8e8(int a, int b, int c);
    extern void OvlFunc_945_200b7d8(int a);
    extern void OvlFunc_945_200d2f4(void);
  int r5;
  r5 = OvlFunc_945_200cfa8(0, 0);
  __CutsceneStart();
  OvlFunc_945_200c8e8(0x18, 1, 0);
  OvlFunc_945_200c8e8(0x19, 0, 0);
  OvlFunc_945_200b7d8(0);
  OvlFunc_945_200c8e8(0x13, r5, 0xc);
  __MapActor_SetPos(0xb, 0, 0);
  OvlFunc_945_200d2f4();
  __SetFlag(0x929);
  __CutsceneEnd();
}


void OvlFunc_945_200d6dc(void) {
    extern unsigned int OvlFunc_945_200cfa8(unsigned int, unsigned int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern void OvlFunc_945_200d0e4(void);
    extern void __DeleteFieldActor(int);
    extern void __Func_8092950(int, int);
    extern unsigned char gScript_945__0200e840[];
    extern unsigned char gScript_945__0200e8e4[];
    unsigned int r6;
    unsigned int r8;

    r6 = OvlFunc_945_200cfa8(0, 0);
    r8 = OvlFunc_945_200cfa8(1, 0);
    API_CutsceneStart();
    OvlFunc_945_200c8e8(0x18, 1, 0);
    OvlFunc_945_200c8e8(0x19, 3, 0);
    OvlFunc_945_200b7b4();
    OvlFunc_945_200c8e8(0x13, r6, r8);
    API_MapActor_SetAnim(0xa, 6);
    API_MapActor_SetBehavior(r6, (int)gScript_945__0200e840);
    __DeleteFieldActor(0xb);
    API_MapActor_SetBehavior(r8, (int)gScript_945__0200e840);
    __DeleteFieldActor(0xc);
    API_MapActor_SetBehavior(0x24, (int)gScript_945__0200e8e4);
    API_MapActor_SetBehavior(0x25, (int)gScript_945__0200e8e4);
    __Func_8092950(0x24, 3);
    __Func_8092950(0x25, 3);
    OvlFunc_945_200d0e4();
    API_CutsceneEnd();
}

void OvlFunc_945_200d780(void)
{
    extern unsigned int OvlFunc_945_200cfa8(unsigned int arg0, unsigned int arg1);
    extern unsigned int OvlFunc_945_200c8e8(int arg0, int arg1, int arg2);
    extern void OvlFunc_945_200b7d8(int arg0);
    extern void OvlFunc_945_200d2f4(void);
  int r6;
  int r5;
  r6 = OvlFunc_945_200cfa8(0, 0);
  r5 = OvlFunc_945_200cfa8(1, 0);
  __CutsceneStart();
 do { OvlFunc_945_200c8e8(0x18, 1, 0); OvlFunc_945_200c8e8(0x19, 0, 0); OvlFunc_945_200b7d8(0); OvlFunc_945_200c8e8(0x13, r6, r5); } while (0);
  __MapActor_SetPos(0xb, 0, 0);
  __MapActor_SetPos(0xc, 0, (unsigned int) 0);
  OvlFunc_945_200d2f4();
  __SetFlag(0x92a);
  __CutsceneEnd();
}


void OvlFunc_945_200d7ec(void)
{
    extern unsigned char CS_945_7f84[] __asm__(".Lm945_7f84");
    extern void OvlFunc_945_200dc48(void);
    extern unsigned char gScript_945__0200e818[];
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __DeleteFieldActor(int);
    extern void __Func_8092950(unsigned int, unsigned int);
    extern int __MapActor_GetActor(int);
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_945_200c670(int);
    extern void OvlFunc_945_200c86c(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void OvlFunc_945_200c8ac(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern unsigned int OvlFunc_945_200cfa8(unsigned int, unsigned int);
    unsigned int firstPassenger;
    unsigned int secondPassenger;
    unsigned int thirdPassenger;
    unsigned char *actor;

    firstPassenger = OvlFunc_945_200cfa8(0, 0);
    secondPassenger = OvlFunc_945_200cfa8(1, 0);
    thirdPassenger = OvlFunc_945_200cfa8(2, 0);
    API_CutsceneStart();
    OvlFunc_945_200c8e8(10, 0, 0);
    OvlFunc_945_200c8e8(17, 0, 0);
    API_MapActor_SetPos(8, 0x1d80000, 0x980000);
    API_MapActor_SetAnim(9, 5);
    API_MapActor_SetPos(27, 0x1b80000, 0x860000);
    __Func_8092950(27, 15);
    actor = (unsigned char *)__MapActor_GetActor(27);
    __Actor_SetSpriteFlags(actor, 0);
    OvlFunc_945_200c670(16);
    OvlFunc_945_200c8ac(0x1b60000, -1, 0xae0000, 0x1000001);
    OvlFunc_945_200c8e8(8, 1, 20);
    API_PlaySound(19);
    API_PlaySound(0xb5);
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    API_CutsceneWait(10);
    API_Func_8012330(-1, -1, 0xe666);
    API_CutsceneWait(0x50);
    API_PlaySound(0xb5);
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    API_CutsceneWait(10);
    API_Func_8012330(-1, -1, 0xe666);
    API_PlaySound(0x3f);
    API_SetFlag(0x11a);
    API_MapActor_Surprise(3, 0x102);
    API_CutsceneWait(0x28);
    OvlFunc_945_200c880(3, 0x6000);
    API_MessageID(0x1ec1);
    API_ActorMessage_Wait(3, 0, 0x28);
    OvlFunc_945_200c86c(27);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(1, 0xa000, 0);
    API_Func_8092adc(2, 0, 0);
    API_Func_8092adc(3, 0xe000, 0x28);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(2, 0x6000, 0);
    API_Func_8092adc(3, 0x8000, 0x28);
    API_Func_8092adc(2, 0xe000, 0);
    API_MapActor_Emote(2, 0x100, 0x3c);
    OvlFunc_945_200c880(2, 0x2000);
    API_Func_80925cc(2, 1);
    OvlFunc_945_200c86c(2);
    API_Func_809259c(0, 1);
    API_Func_809259c(1, 1);
    API_Func_80925cc(3, 1);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xe000, 0);
    API_Func_8092adc(3, 0xa000, 20);
    __Func_8092950(27, 0);
    actor = (unsigned char *)__MapActor_GetActor(27);
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetSpeed(27, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(27, 0x1ae, 0x86);
    OvlFunc_945_200c880(27, 0x3000);
    API_Func_809259c(27, 2);
    OvlFunc_945_200c86c(27);
    API_Func_809259c(firstPassenger, 1);
    API_Func_809259c(secondPassenger, 1);
    API_Func_809259c(thirdPassenger, 1);
    API_Func_80925cc(13, 1);
    API_MapActor_Surprise(firstPassenger, 0x102);
    API_MapActor_Surprise(secondPassenger, 0x102);
    API_MapActor_Surprise(thirdPassenger, 0x102);
    API_MapActor_Surprise(13, 0x102);
    API_CutsceneWait(0x28);
    OvlFunc_945_200c8e8(12, firstPassenger, 0);
    OvlFunc_945_200c8e8(12, secondPassenger, 1);
    OvlFunc_945_200c8e8(12, thirdPassenger, 0);
    OvlFunc_945_200c8e8(11, 1, 0);
    API_Func_8092adc(firstPassenger, 0xd000, 0);
    API_Func_8092adc(secondPassenger, 0xb000, 0);
    API_Func_8092adc(thirdPassenger, 0xd000, 0);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(1, 0x8000, 0);
    API_Func_8092adc(2, 0, 0);
    API_Func_8092adc(3, 0x8000, 0x28);
    API_Func_809259c(27, 2);
    API_ActorMessage(27, 0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 20);
    API_MapActor_TravelToAnimWait(27, 0x1b8, 0x86);
    API_MapActor_SetPos(27, 0, 0);
    OvlFunc_945_200c880(1, 0x8000);
    API_Func_80925cc(1, 1);
    OvlFunc_945_200c86c(1);
    API_Func_8092adc(2, 0, 0);
    OvlFunc_945_200c880(3, 0x8000);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);
    API_MapActor_SetBehavior(1, (int)gScript_945__0200e818);
    API_MapActor_SetBehavior(2, (int)gScript_945__0200e818);
    __MapActor_RunScript(3, gScript_945__0200e818);
    API_SetFlag(0x302);
    *(int *)CS_945_7f84 = 0;
    API_StartTask(OvlFunc_945_200dc48, 0xc80);
    OvlFunc_945_200c8e8(23, 0, 0);
    __DeleteFieldActor(27);
    API_ClearFlag(0x12f);
    API_ClearFlag(0x927);
    API_CutsceneEnd();
}
extern int Lm945_7f84_i __asm__(".Lm945_7f84");
extern void __Func_8012330(int, int, int);
static inline void Func_8012330_pos(int x, int y, int z)
{
    __Func_8012330(x << 10, y << 10, z << 9);
}

static inline void Func_8012330_neg(int x, int y, int z)
{
    __Func_8012330(-x, -y, z);
}

void OvlFunc_945_200dc48(void)
{
    extern void __Func_8012330(int, int, int);

    if (Lm945_7f84_i != 0) {
        Lm945_7f84_i--;
        if (Lm945_7f84_i == 0x46) {
            Func_8012330_neg(1, 1, 0xe666);
        }
    } else {
        if (((__Random() * 0x78) >> 16) == 0) {
            __PlaySound(0xb5);
            Func_8012330_pos(0x80, 0x80, 0x80);
            Lm945_7f84_i = 0x50;
        }
    }
}
void OvlFunc_945_200dca4(void) {
    extern void __CutsceneStart(void);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern void __Func_80925cc(int, int);
    extern void __CutsceneWait(int);
    extern void __Func_8092adc(int, int, int);
    extern void __MapActor_DoAnim(int, int);


    __CutsceneStart();
    OvlFunc_945_200c8e8(0xf, 1, 0);
    OvlFunc_945_200c890(9, 0x1d4, 0x268, 0x8000);
    OvlFunc_945_200c8e8(8, 1, 0x14);
    __Func_80925cc(9, 2);
    __CutsceneWait(0x14);
    API_Func_8092adc(8, (0xd000), 0x50);
    API_Func_8092adc(8, 0, 0x14);
    __MapActor_DoAnim(8, 3);
    __CutsceneWait(0x14);
    OvlFunc_945_200c8e8(9, 0x15, 0);
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200dd10.s");

void OvlFunc_945_200e110(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void OvlFunc_945_200c86c(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void OvlFunc_945_200c890(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern unsigned int OvlFunc_945_200cfa8(unsigned int, unsigned int);
    extern void OvlFunc_945_200e3ac(int, int);
    unsigned int actor0;
    unsigned int actor1;
    unsigned int actor2;
    unsigned int actor3;

    actor0 = OvlFunc_945_200cfa8(0, 0);
    actor1 = OvlFunc_945_200cfa8(1, 0);
    actor2 = OvlFunc_945_200cfa8(2, 0);
    actor3 = OvlFunc_945_200cfa8(3, 0);
    API_CutsceneStart();
    OvlFunc_945_200c8e8(10, 0, 0);
    OvlFunc_945_200c890(8, 0x1d8, 0x90, 0x5000);
    OvlFunc_945_200c890(27, 0x198, 0x8e, 0x3000);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x201;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    API_Func_80925cc(27, 1);
    API_MessageID(0x1f78);
    OvlFunc_945_200c86c(27);
    API_Func_809259c(actor0, 2);
    API_Func_809259c(actor1, 2);
    API_Func_809259c(actor2, 2);
    API_Func_80925cc(actor3, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(actor0, 0, 0);
    API_Func_8092adc(actor1, 0x8000, 0);
    API_Func_8092adc(actor2, 0, 0);
    API_Func_8092adc(actor3, 0x8000, 0x28);
    API_MapActor_SetSpeed(actor0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(actor1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(actor2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(actor3, 0x10000, 0x8000);
    API_MapActor_TravelToAnim(actor0, 0x1d6, 0xac);
    API_MapActor_TravelToAnim(actor1, 0x19a, 0xac);
    API_MapActor_TravelToAnim(actor2, 0x1d6, 0xcc);
    API_MapActor_TravelToAnimWait(actor3, 0x19a, 0xcc);
    API_MapActor_SetAnim(actor0, 1);
    API_MapActor_SetAnim(actor1, 1);
    API_MapActor_SetAnim(actor2, 1);
    API_Func_8092adc(actor1, 0xd000, 0);
    API_Func_8092adc(actor0, 0xb000, 0);
    API_Func_8092adc(actor3, 0xd000, 0);
    API_Func_8092adc(actor2, 0xb000, 20);
    API_Func_80925cc(27, 1);
    OvlFunc_945_200c86c(27);
    API_MapActor_SetAnim(actor0, 3);
    API_MapActor_SetAnim(actor1, 3);
    API_MapActor_SetAnim(actor2, 3);
    API_MapActor_DoAnim(actor3, 3);
    OvlFunc_945_200c86c(27);
    API_MapActor_SetAnim(actor0, 3);
    API_MapActor_SetAnim(actor1, 3);
    API_MapActor_SetAnim(actor2, 3);
    API_MapActor_DoAnim(actor3, 3);
    API_Func_8092adc(27, 0, 0);
    OvlFunc_945_200c880(0, 0x8000);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(27, 3);
    API_MapActor_SetSpeed(27, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(27, 0x198, 0x84);
    API_MapActor_TravelToAnimWait(27, 0x1bc, 0x84);
    API_MapActor_SetPos(27, 0, 0);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x202;
    API_MapTransitionOut();
    API_WaitMapTransition();
    OvlFunc_945_200e3ac(0x92c, 0x935);
    OvlFunc_945_200e3ac(0x917, 0x990);
    API_ClearFlag(0x8a0);
    API_Func_8091e9c(10);
}
void OvlFunc_945_200e3ac(unsigned int base1, unsigned int base2)
{
    unsigned int i;
    unsigned int n1;
    unsigned int n2;

    n1 = 0;
    n2 = 0;
    for (i = 0; i <= 8; n1++, i++) {
        if (API_GetFlag(base1 + i)) {
            API_ClearFlag(base1 + i);
            break;
        }
    }
    for (i = 0; i <= 8; n2++, i++) {
        if (API_GetFlag(base2 + i)) {
            API_ClearFlag(base2 + i);
            break;
        }
    }
    API_SetFlag(base2 + n1);
    API_SetFlag(base1 + n2);
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/tolbi_bound_ship_hull_data.s");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/imports.s");
