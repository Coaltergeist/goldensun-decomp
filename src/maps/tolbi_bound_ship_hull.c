// fakematch
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
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/TolbiBoundShipHull_GetEvents.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2008670.s");

void OvlFunc_945_2008708(void) {
    __CutsceneStart();
    __MessageID(0x1dd1);
    __Func_8093054(0xc, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2008728.s");
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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_2009804.s");
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
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200b66c.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200b7b4.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200b7d8.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200b8ac.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200bd10.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200bdec.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200be34.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200beec.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200bf94.s");


void OvlFunc_945_200c0e8(void) {
    extern int __MessageID(int);
    extern void __CutsceneStart(void);
    extern void __CutsceneWait(int);
    extern void __Func_8092adc(int, int, int);
    extern void __Func_80925cc(int, int);
    extern void __Func_809259c(int, int);
    extern void __ActorMessage_Wait(int, int, int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    extern int _MSG_1e40;
    unsigned int w;
    unsigned int z;
    __CutsceneStart();
    OvlFunc_945_200c8e8(0xf, 1, 1);
    __Func_80925cc(8, 1);
    __CutsceneWait(0xa);
    w = 0xc0;
    z = 0x14;
    {
        register unsigned int rq __asm__("r0") = 8;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 6;
        __Func_8092adc(rq, w, z);
    }
    __Func_809259c(8, 2);
    __MessageID((int) (&_MSG_1e40));
    __ActorMessage_Wait(8, 0, 0x14);
    OvlFunc_945_200c8e8(9, 0xe, 0);
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200c13c.s");
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
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200c5d0.s");
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
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200dc48.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200dca4.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200dd10.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200e110.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/OvlFunc_945_200e3ac.s");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_hull/imports.s");
