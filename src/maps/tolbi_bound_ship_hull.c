/* rom_7cb2c0 (overlay file 945): consolidated TU — tolbi_bound_ship_hull map overlay. */

#include "nonmatching.h"

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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2008058.s");


unsigned int OvlFunc_945_20080b0(unsigned char *arg0) {
    extern unsigned int __Random(unsigned int);
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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_20080fc.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200812c.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2008284.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_20082f4.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/TolbiBoundShipHull_GetEntrances.s");

int TolbiBoundShipHull_GetSpecialExits(void) {
    return 0;
}


void *TolbiBoundShipHull_GetExits(void) {
    extern unsigned char gOvl_0200eb94[];
    return (void *)gOvl_0200eb94;
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/TolbiBoundShipHull_GetActors.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
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

    int w = 0xd000;

    do { } while (w == 0);

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
            __Func_8092adc(10, w, 0);
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

    while (c_d000 == 0) { }

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
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_20087f8.s");


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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_20088ec.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_20089b4.s");


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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2008b84.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2008cc8.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2008e14.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2008ee0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2008fac.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009078.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009144.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009190.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009280.s");


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

extern void OvlFunc_945_200c86c(int a);
extern unsigned char iwram_3001ebc__a[] __asm__("iwram_3001ebc");
extern void __SetFlag(int);
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
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009894.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009978.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009a08.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009a60.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009b34.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009f3c.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200a7d8.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/TolbiBoundShipHull_MapInit.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200b364.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200b51c.s");
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

    int pos_x = 0xec << 17;
    int pos_y = 0x98 << 16;

    do { } while (pos_x == 0);

    __WaitFrames(1);
    OvlFunc_945_200b7b4();
    if (__GetFlag(0x93e)) {
        OvlFunc_945_200c8e8(4, 4, 0);
        OvlFunc_945_200c890(8, 0x19c, 0xde, 0x3000);
        OvlFunc_945_200c890(9, 0x1ca, 0xa1, 0x8000);
    } else if (__GetFlag(0x8a0)) {
        __MapActor_SetPos(8, pos_x, pos_y);
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
        __MapActor_SetPos(0xa, 0, 0);
        OvlFunc_945_200c254(0);
    } else {
        __MapActor_SetAnim(9, 5);
        if (__GetFlag(0x925) && !__GetFlag(0x926)) {
            OvlFunc_945_200b8ac();
        }
    }
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200b7b4.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200b7d8.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200b8ac.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200bd10.s");
void OvlFunc_945_200bdec(void) {
    extern void __CutsceneStart(void);
    extern void __Func_8092adc(int, int, int);
    extern void __Func_809259c(int, int);
    extern void __MessageID(int);
    extern void __ActorMessage_Wait(int, int, int);
    extern void OvlFunc_945_200c8e8(int, int, int);

    int w = 0x5000;

    do { } while (w == 0);

    __CutsceneStart();
    OvlFunc_945_200c8e8(0xf, 1, 1);
    __Func_8092adc(8, w, 0x28);
    __Func_809259c(8, 2);
    __MessageID(0x1e3d);
    __ActorMessage_Wait(8, 0, 0x14);
    OvlFunc_945_200c8e8(9, 0xb, 0);
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200be34.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200beec.s");
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
    int w = 0xc0 << 6;

    do { } while (w == 0);

    __CutsceneStart();
    OvlFunc_945_200c8e8(0xf, 1, 1);
    __Func_80925cc(8, 1);
    __CutsceneWait(0xa);
    __Func_8092adc(8, w, 0x14);
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
    int neg1 = -1;
    int d = 0xd000;

    do { } while (d == 0);

    __CutsceneStart();
    __Func_80933f8(neg1, neg1, neg1, 0);
    __WaitFrames(1);
    OvlFunc_945_200c8e8(0xf, 1, 1);
    __Func_80925cc(8, 1);
    __MessageID(0x1e43);
    OvlFunc_945_200c86c(8);
    __Func_8092adc(8, d, 0x28);
    OvlFunc_945_200c8e8(9, 0xf, 0);
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200c198.s");


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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200c254.s");
extern void *Lm945_6968 __asm__(".Lm945_6968");

void *OvlFunc_945_200c5d0(void)
{
    int flag_id = 0x200;
    int flag;
    int mask;
    unsigned char *actor;
    unsigned char *sprite;
    unsigned char *buf;

    do { } while (flag_id == 0);

    flag = __GetFlag(flag_id);
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
    __SetFlag(flag_id);
    Lm945_6968 = actor;
    return actor;
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200c670.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200c7cc.s");


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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200c8e8.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200cfa8.s");


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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200d068.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200d0e4.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200d2f4.s");


void OvlFunc_945_200d684(void)
{
    extern int OvlFunc_945_200cfa8(int a, int b);
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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200d6dc.s");


void OvlFunc_945_200d780(void)
{
    extern int OvlFunc_945_200cfa8(int arg0, int arg1);
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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200d7ec.s");
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
    extern unsigned int __Random(void);

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
    int d = 0xd000;
    do { } while (d == 0);
    __CutsceneStart();
    OvlFunc_945_200c8e8(0xf, 1, 0);
    OvlFunc_945_200c890(9, 0x1d4, 0x268, 0x8000);
    OvlFunc_945_200c8e8(8, 1, 0x14);
    __Func_80925cc(9, 2);
    __CutsceneWait(0x14);
    __Func_8092adc(8, d, 0x50);
    __Func_8092adc(8, 0, 0x14);
    __MapActor_DoAnim(8, 3);
    __CutsceneWait(0x14);
    OvlFunc_945_200c8e8(9, 0x15, 0);
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200dd10.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200e110.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200e3ac.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/tolbi_bound_ship_hull_data.s");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/imports.s");
