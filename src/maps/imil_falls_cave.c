/* rom_7a8c8c (overlay file 922): consolidated TU — imil_falls_cave map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/imil_falls_cave/exports.s");

extern void OvlFunc_922_2008bc8();

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_922_2008030(void) {
    __Func_80955b0(8, 2, 1);
}

extern void __Func_8091f14(int a, int b);

void OvlFunc_922_2008040(void) {
    __Func_8091f14(0xb, 0x3e);
}

INCLUDE_ASM("asm/maps/imil_falls_cave/ImilFallsCave_GetEntrances.s");

unsigned int ImilFallsCave_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a8f4[];

unsigned int ImilFallsCave_GetExits(void) {
    return (unsigned int)gOvl_0200a8f4;
}

INCLUDE_ASM("asm/maps/imil_falls_cave/ImilFallsCave_GetActors.s");
INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_2008180.s");

extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_2009050(void);

void OvlFunc_922_200825c(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, 0x70, 0);
    OvlFunc_922_2008180(8, 0x70, 0);
    __PlaySound(0x121);
    __SetFlag(0x301);
    __WaitFrames(2);
    OvlFunc_922_2009050();
}


void OvlFunc_922_200829c(void) {
    unsigned int r5;
    r5 = 0x70;
    r5 = -r5;
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, r5, 0);
    OvlFunc_922_2008180(8, r5, 0);
    __PlaySound(0x121);
    __ClearFlag(0x301);
    __WaitFrames(2);
    OvlFunc_922_2009050();
}


void OvlFunc_922_20082e0(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(9, 0, 0x40);
    __PlaySound(0x121);
    __ClearFlag(0x302);
    __WaitFrames(2);
    OvlFunc_922_2009050();
}


void OvlFunc_922_2008314(void)
{
    __PlaySound(0xf1);
    OvlFunc_922_2008180(9, 0, -0x40);
    __PlaySound(0x121);
    __SetFlag(0x302);
    __WaitFrames(2);
    OvlFunc_922_2009050();
}


void OvlFunc_922_200834c(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, 0x40);
    __PlaySound(0x121);
    __ClearFlag(0x303);
    __WaitFrames(2);
    OvlFunc_922_2009050();
}


void OvlFunc_922_2008380(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, -0x40);
    __PlaySound(0x121);
    __SetFlag(0x303);
    __WaitFrames(2);
    OvlFunc_922_2009050();
}

extern void OvlFunc_922_2009154(void);

void OvlFunc_922_20083b8(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, 0x90, 0);
    __PlaySound(0x121);
    __SetFlag(0xc1 << 2);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}


void OvlFunc_922_20083ec(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, -0x90, 0);
    __PlaySound(0x121);
    __ClearFlag(0xc1 << 2);
    __SetFlag(0x305);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}


void OvlFunc_922_200842c(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, -0xe, 0);
    __PlaySound(0x121);
    __SetFlag(0x305);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}

extern void __PlaySound(int);
extern int __GetFlag(int);
extern void __ClearFlag(int);
extern void __SetFlag(int);
extern void __WaitFrames(int);

void OvlFunc_922_2008464(void) {
    __PlaySound(0xf1);
    if (__GetFlag(0x306)) {
        OvlFunc_922_2008180(8, 0x10, 0);
        __ClearFlag(0x305);
    } else {
        OvlFunc_922_2008180(8, 0x90, 0);
        __SetFlag(0xc1 << 2);
    }
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}


void OvlFunc_922_20084bc(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(9, 0, 0x40);
    __PlaySound(0x121);
    __SetFlag(0x306);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}


void OvlFunc_922_20084f0(void)
{
    __PlaySound(0xf1);
    OvlFunc_922_2008180(9, 0, -0x40);
    __PlaySound(0x121);
    __ClearFlag(0x306);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}


void OvlFunc_922_2008528(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, 0x90);
    OvlFunc_922_2008180(0xa, 0, 0x80);
    __PlaySound(0x121);
    __ClearFlag(0x307);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}


void OvlFunc_922_2008568(void) {
    int r5;
    r5 = 0x60;
    r5 = -r5;
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, r5);
    OvlFunc_922_2008180(0xa, 0, r5);
    {
        int r2;
        r2 = 0x50;
        r2 = -r2;
        OvlFunc_922_2008180(0xa, 0, r2);
    }
    __PlaySound(0x121);
    __SetFlag(0x307);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}

INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_20085b8.s");

extern void OvlFunc_922_20092cc(void);

void OvlFunc_922_200862c(void) {
    __PlaySound(0xf1);
    __ClearFlag(0xc2 << 2);
    __ClearFlag(0x309);
    OvlFunc_922_2008180(8, 0x30, 0);
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008668(void)
{
    if (__GetFlag(0x310) != 0)
        return;
    if (__GetFlag(0x30d) != 0)
        return;
    __PlaySound(0xf1);
    __SetFlag(0x308);
    __ClearFlag(0x309);
    OvlFunc_922_2008180(8, -0x30, 0);
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_20086c0(void) {
    __PlaySound(0xf1);
    __ClearFlag(0xc2 << 2);
    __ClearFlag(0x309);
    OvlFunc_922_2008180(8, 0x60, 0);
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_20086fc(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(9, -0x20, 0);
    __PlaySound(0x121);
    __SetFlag(0x30a);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008734(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(9, 0x20, 0);
    __PlaySound(0x121);
    __ClearFlag(0x30a);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008768(void) {
    __PlaySound(0xf1);
    if (__GetFlag(0xc2 << 2)) {
        OvlFunc_922_2008180(0xa, 0, -0x40);
        __ClearFlag(0x30b);
        __SetFlag(0xc3 << 2);
        __ClearFlag(0x30d);
        __ClearFlag(0x30e);
    } else {
        OvlFunc_922_2008180(0xa, 0, -0x80);
        __SetFlag(0x30b);
        __ClearFlag(0xc3 << 2);
        __ClearFlag(0x30d);
        __ClearFlag(0x30e);
    }
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}

INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_20087f0.s");


void OvlFunc_922_20088cc(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, -0x10);
    __PlaySound(0x121);
    __SetFlag(0x30b);
    __ClearFlag(0xc3 << 2);
    __ClearFlag(0x30d);
    __ClearFlag(0x30e);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}

INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_2008920.s");


void OvlFunc_922_20089d0(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, -0x40);
    __PlaySound(0x121);
    __SetFlag(0x30b);
    __ClearFlag(0x30d);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008a10(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, 0x40);
    __PlaySound(0x121);
    __ClearFlag(0x30b);
    __ClearFlag(0xc3 << 2);
    __ClearFlag(0x30d);
    __ClearFlag(0x30e);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008a60(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, -0x50);
    __PlaySound(0x121);
    __SetFlag(0x30b);
    __ClearFlag(0xc3 << 2);
    __ClearFlag(0x30d);
    __ClearFlag(0x30e);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008ab4(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, 0x40);
    __PlaySound(0x121);
    __ClearFlag(0x30b);
    __ClearFlag(0xc3 << 2);
    __ClearFlag(0x30d);
    __ClearFlag(0x30e);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008b04(void) {
    unsigned int v0;
    unsigned int v1;

    __PlaySound(0xf1);
    v0 = __GetFlag(0xc2 << 2);
    if (v0 != 0) {
        goto label_b22;
    }
    v1 = __GetFlag(0x30d);
    if (v1 == 0) {
        goto label_b44;
    }
label_b22:
    OvlFunc_922_2008180(0xb, 0, -(unsigned int)0x40);
    __ClearFlag(0x30f);
    __ClearFlag(0xc4 << 2);
    __SetFlag(0x311);
    goto label_b70;

label_b44:
    v0 = __GetFlag(0xc3 << 2);
    if (v0 == 0) {
        goto label_b78;
    }
    OvlFunc_922_2008180(0xb, 0, -(unsigned int)0x70);
    __ClearFlag(0x30f);
    __SetFlag(0xc4 << 2);
    __ClearFlag(0x311);

label_b70:
    __ClearFlag(0x312);
    goto label_b9e;

label_b78:
    OvlFunc_922_2008180(0xb, 0, -(unsigned int)0x80);
    __SetFlag(0x30f);
    __ClearFlag(0xc4 << 2);
    __ClearFlag(0x311);
    __ClearFlag(0x312);

label_b9e:
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}

void OvlFunc_922_2008bc8(void) {
    __ClearFlag(0x30f);
    __ClearFlag(0xc4 << 2);
    __ClearFlag(0x311);
    __ClearFlag(0x312);
}


void OvlFunc_922_2008bf4(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xb, 0, 0x80);
    OvlFunc_922_2008bc8();
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008c24(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xb, 0, -0x10);
    __PlaySound(0x121);
    __SetFlag(0x30f);
    __ClearFlag(0xc4 << 2);
    __ClearFlag(0x311);
    __ClearFlag(0x312);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008c78(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xb, 0, 0x70);
    __PlaySound(0x121);
    OvlFunc_922_2008bc8();
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008ca8(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xb, 0, 0x40);
    __PlaySound(0x121);
    OvlFunc_922_2008bc8();
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008cd8(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xb, 0, 0x50);
    __PlaySound(0x121);
    OvlFunc_922_2008bc8();
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}


void OvlFunc_922_2008d08(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xb, 0, 0x30);
    __PlaySound(0x121);
    OvlFunc_922_2008bc8();
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}

extern void OvlFunc_922_20095dc(void);

void OvlFunc_922_2008d38(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, 0, 0x70);
    __PlaySound(0x121);
    __SetFlag(0x313);
    __WaitFrames(2);
    OvlFunc_922_20095dc();
}


void OvlFunc_922_2008d6c(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, 0, -0x70);
    __PlaySound(0x121);
    __ClearFlag(0x313);
    __WaitFrames(2);
    OvlFunc_922_20095dc();
}


void OvlFunc_922_2008da4(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(9, -0x80, 0);
    __PlaySound(0x121);
    __SetFlag(0xc5 << 2);
    __WaitFrames(2);
    OvlFunc_922_20095dc();
}


void OvlFunc_922_2008dd8(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(9, 0x80, 0);
    __PlaySound(0x121);
    __ClearFlag(0xc5 << 2);
    __WaitFrames(2);
    OvlFunc_922_20095dc();
}


void OvlFunc_922_2008e0c(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0xa0, 0);
    __PlaySound(0x121);
    __SetFlag(0x315);
    __WaitFrames(2);
    OvlFunc_922_20095dc();
}


void OvlFunc_922_2008e40(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, -(unsigned short)0xa0, 0);
    __PlaySound(0x121);
    __ClearFlag(0x315);
    __WaitFrames(2);
    OvlFunc_922_20095dc();
}

extern void __MapActor_SetAnim(int a, int b);

void OvlFunc_922_2008e78(void)
{
	__MapActor_SetAnim(8, 1);
	__MapActor_SetAnim(8, 2);
}


void OvlFunc_922_2008e90(void)
{
	__MapActor_SetAnim(9, 1);
	__MapActor_SetAnim(9, 2);
}


void OvlFunc_922_2008ea8(void)
{
	__MapActor_SetAnim(0xa, 1);
	__MapActor_SetAnim(0xa, 2);
}


void OvlFunc_922_2008ec0(void)
{
	__MapActor_SetAnim(0xb, 1);
	__MapActor_SetAnim(0xb, 2);
}

INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_2008ed8.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_34[], _EVENT_3e[], _EVENT_3f[], _EVENT_40[], _EVENT_41[], _EVENT_42[], _EVENT_43[];
extern unsigned char Lm922_2bd8[] __asm__(".Lm922_2bd8");
extern unsigned char gScript_911__0200ac08[];
extern unsigned char Lm922_2d1c[] __asm__(".Lm922_2d1c");
extern unsigned char Lm922_2e24[] __asm__(".Lm922_2e24");
extern unsigned char Lm922_3058[] __asm__(".Lm922_3058");
extern unsigned char Lm922_3130[] __asm__(".Lm922_3130");
extern unsigned char Lm922_3184[] __asm__(".Lm922_3184");
extern unsigned char Lm922_2bcc[] __asm__(".Lm922_2bcc");

int ImilFallsCave_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_34) return (int)Lm922_2bd8;
    if (ev == (int)_EVENT_3e) return (int)gScript_911__0200ac08;
    if (ev == (int)_EVENT_3f) return (int)Lm922_2d1c;
    if (ev == (int)_EVENT_40) return (int)Lm922_2e24;
    if (ev == (int)_EVENT_41) return (int)Lm922_3058;
    if (ev == (int)_EVENT_42) return (int)Lm922_3130;
    if (ev == (int)_EVENT_43) return (int)Lm922_3184;
    return (int)Lm922_2bcc;
}

void OvlFunc_922_2008fcc(void) {
    unsigned int r0;
    unsigned short v;

    __CutsceneStart();
    r0 = __MapActor_GetActor(0);
    v = 0x80 << 7;
    *(unsigned short *)((char *)r0 + 6) = v;
    __PlaySound(0x7b);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(1);
}

extern void OvlFunc_922_200a094(void);

void OvlFunc_922_2008ff8(void) {
    OvlFunc_922_200a094();
}

INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_2009004.s");
INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_2009050.s");
void __Func_8010704(int, int, int, int, int, int);
void OvlFunc_922_2009004(int, int, int);

void OvlFunc_922_2009154(void)
{
    int a;
    int b;
    int c;
    int s1;
    int s2;

    s1 = 0xc;
    s2 = 8;
    __Func_8010704(0, 0x1c, 10, 0x12, s1, s2);
    if (__GetFlag(0x304) != 0) {
        OvlFunc_922_2009004(8, 0x15, 0x14);
        s1 = 0xd;
        s2 = 0x13;
        __Func_8010704(0x14, 0x13, 1, 3, s1, s2);
    } else {
        OvlFunc_922_2009004(8, 0xd, 0x14);
        s1 = 0x15;
        s2 = 0x13;
        __Func_8010704(0x14, 0x13, 1, 3, s1, s2);
    }

    if (__GetFlag(0x305) != 0) {
        OvlFunc_922_2009004(8, 0xc, 0x14);
        a = 0x13;
        b = 0xc;
        __Func_8010704(5, 0x13, 1, 3, b, a);
        c = 0xd;
        __Func_8010704(0x14, 0x13, 1, 3, c, a);
        if (__GetFlag(0x304) != 0) {
            OvlFunc_922_2009004(8, 0x15, 0x14);
            __Func_8010704(0x14, 0x13, 1, 3, c, a);
            __Func_8010704(0x14, 0x13, 1, 3, b, a);
        }
    }

    if (__GetFlag(0x306) != 0) {
        OvlFunc_922_2009004(9, 0xf, 0x15);
        s1 = 0xe;
        s2 = 0x11;
        __Func_8010704(0xe, 0x12, 3, 1, s1, s2);
    } else {
        OvlFunc_922_2009004(9, 0xf, 0x11);
        s1 = 0xe;
        s2 = 0x15;
        __Func_8010704(0xe, 0x12, 3, 1, s1, s2);
    }

    if (__GetFlag(0x307) != 0) {
        OvlFunc_922_2009004(10, 0x13, 8);
        s1 = 0x12;
        s2 = 0x19;
        __Func_8010704(0xe, 0x12, 3, 1, s1, s2);
    } else {
        OvlFunc_922_2009004(10, 0x13, 0x19);
        s1 = 0x12;
        s2 = 8;
        __Func_8010704(0xe, 0x12, 3, 1, s1, s2);
    }
}
void OvlFunc_922_20092cc(void)
{
    {
        int a = 0xc;
        int b = 0x15;
        __Func_8010704(0xc, 3, 9, 0x10, a, b);
    }

    if (__GetFlag(0x308) != 0) {
        int a, b;
        OvlFunc_922_2009004(8, 0xe, 0x19);
        a = 0x14;
        b = 0x18;
        __Func_8010704(0x10, 0x18, 1, 3, a, b);
    } else if (__GetFlag(0x309) != 0) {
        int b;
        OvlFunc_922_2009004(8, 0x11, 0x19);
        b = 0x18;
        __Func_8010704(0x12, 0x18, 1, 3, 0x14, b);
        __Func_8010704(0x12, 0x18, 1, 3, 0xe, b);
        __Func_8010704(8, 0x29, 1, 3, 0x11, b);
    } else {
        int a, b;
        OvlFunc_922_2009004(8, 0x14, 0x19);
        a = 0xe;
        b = 0x18;
        __Func_8010704(0x10, 0x18, 1, 3, a, b);
    }

    if (__GetFlag(0x30a) != 0) {
        int a, b;
        OvlFunc_922_2009004(9, 0xd, 0x23);
        a = 0xf;
        b = 0x22;
        __Func_8010704(0xe, 0x22, 1, 3, a, b);
    } else {
        int a, b;
        OvlFunc_922_2009004(9, 0xf, 0x23);
        a = 0xd;
        b = 0x22;
        __Func_8010704(0xe, 0x22, 1, 3, a, b);
    }

    if (__GetFlag(0x30b) != 0) {
        OvlFunc_922_2009004(0xa, 0xf, 0x16);
        __Func_8010704(0xe, 0x1d, 3, 1, 0xe, 0x1e);
        __Func_8010704(5, 0x29, 3, 1, 0xe, 0x16);
    } else if (__GetFlag(0x30c) != 0) {
        OvlFunc_922_2009004(0xa, 0xf, 0x17);
        __Func_8010704(5, 0x2a, 3, 1, 0xe, 0x17);
        __Func_8010704(0xe, 0x1d, 3, 1, 0xe, 0x1e);
        __Func_8010704(0xa, 0x2c, 3, 1, 0xe, 0x15);
    } else if (__GetFlag(0x30d) != 0) {
        OvlFunc_922_2009004(0xa, 0xf, 0x1a);
        __Func_8010704(0xe, 0x1d, 3, 1, 0xe, 0x16);
        __Func_8010704(5, 0x2b, 3, 1, 0xe, 0x1a);
        __Func_8010704(0xe, 0x1d, 3, 1, 0xe, 0x1e);
    } else if (__GetFlag(0x30e) != 0) {
        OvlFunc_922_2009004(0xa, 0xf, 0x1b);
        __Func_8010704(0xe, 0x1d, 3, 1, 0xe, 0x16);
        __Func_8010704(0xe, 0x1d, 3, 1, 0xe, 0x1e);
        __Func_8010704(5, 0x2c, 3, 1, 0xe, 0x1b);
    } else {
        OvlFunc_922_2009004(0xa, 0xf, 0x1e);
    }

    if (__GetFlag(0x30f) != 0) {
        OvlFunc_922_2009004(0xb, 0xf, 0x17);
        __Func_8010704(0xe, 0x1d, 3, 1, 0xe, 0x1f);
        __Func_8010704(0xa, 0x28, 3, 1, 0xe, 0x17);
    } else if (__GetFlag(0x310) != 0) {
        OvlFunc_922_2009004(0xb, 0xf, 0x18);
        __Func_8010704(0xe, 0x1d, 3, 1, 0xe, 0x1f);
        __Func_8010704(0xa, 0x29, 3, 1, 0xe, 0x18);
    } else if (__GetFlag(0x311) != 0) {
        OvlFunc_922_2009004(0xb, 0xf, 0x1b);
        __Func_8010704(0xe, 0x1d, 3, 1, 0xe, 0x1f);
        __Func_8010704(0xa, 0x2a, 3, 1, 0xe, 0x1b);
    } else if (__GetFlag(0x312) != 0) {
        OvlFunc_922_2009004(0xb, 0xf, 0x1c);
        __Func_8010704(0xe, 0x1d, 3, 1, 0xe, 0x1f);
        __Func_8010704(0xa, 0x2b, 3, 1, 0xe, 0x1c);
    } else {
        OvlFunc_922_2009004(0xb, 0xf, 0x1f);
    }
}
INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_20095dc.s");

extern unsigned char L3328[] __asm__(".Lm922_3328");
extern unsigned char iwram_3001ee0[];

void OvlFunc_922_200970c(void) {
    unsigned int r3;
    r3 = *(unsigned int *)L3328;
    if (r3 != 0) {
        unsigned int *r5;
        r5 = *(unsigned int **)iwram_3001ee0;
        r5[6] = __MapActor_GetActor(0);
    }
}

extern unsigned int L3328__a1[] __asm__(".Lm922_3328");
extern unsigned int *iwram_3001ee0__a1 __asm__("iwram_3001ee0");

void OvlFunc_922_2009730(void)
{
	if (L3328__a1[0]) {
		*(unsigned int *)((char *)iwram_3001ee0__a1 + 0x18) = 0;
	}
}

INCLUDE_ASM("asm/maps/imil_falls_cave/ImilFallsCave_MapInit.s");

void OvlFunc_922_20097a8(void)
{
  extern void __CutsceneStart(void);
  extern int __MapActor_GetActor(int);
  extern void __Actor_SetSpriteFlags(int, int);
  extern void __MapTransitionIn(void);
  extern void __MapActor_SetSpeed(int, int, int);
  extern void __MapActor_TravelToWait(int, int, int);
  extern void __CutsceneEnd(void);
  int actor;
  int speed;
  int s3;
  int arg2;

  speed = 0x80 << 10;
  s3 = 0x1999;
  arg2 = 0x84 << 1;
  do { } while (speed == 0);
  __CutsceneStart();
  actor = __MapActor_GetActor(8);
  __Actor_SetSpriteFlags(actor, 0);
  __MapTransitionIn();
  __MapActor_SetSpeed(0, speed, s3);
  __MapActor_TravelToWait(0, arg2, 0xc4);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_20097e4.s");
INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_2009948.s");
INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_2009a34.s");

extern void OvlFunc_922_2009ad0(int a, int b);

void OvlFunc_922_2009ab0(void) {
    OvlFunc_922_2009ad0(0, -0x20);
}


void OvlFunc_922_2009ac0(void) {
    OvlFunc_922_2009ad0(-0x20, 0);
}

void OvlFunc_922_2009ad0(int arg0, int arg1) {
    extern void __CutsceneStart(void);
    extern void __MapActor_SetSpeed(int, int, int);
    extern void __MapActor_TravelBy(int, unsigned int, unsigned int);
    extern void __MapActor_Jump(int, int, int);
    extern void __MapActor_SetAnim(int, int);
    extern void __MapActor_WaitMovement(int);
    extern void __CutsceneEnd(void);
    int a = 0xa0 << 10, b = 0xa0 << 9;
    do { } while (a == 0);
    __CutsceneStart();
    __MapActor_SetSpeed(0, a, b);
    __MapActor_TravelBy(0, arg0, arg1);
    __MapActor_Jump(0, 4, 0);
    __MapActor_SetAnim(0, 7);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 6);
    __CutsceneEnd();
}
extern void *Lm922_2488 __asm__(".Lm922_2488");

void OvlFunc_922_2009b1c(void)
{
    int a = 0xf80000;
    int b = 0x80000;
    int c = 0x980000;
    int mask = ~0x20;
    int zero;
    unsigned char *actor;
    unsigned char *sprite;
    unsigned char *buf;

    do { } while (a == 0);

    zero = 0;
    actor = (unsigned char *)__CreateActor(0x16, a, b, c);
    if (actor != 0) {
        sprite = *(unsigned char **)(actor + 0x50);
        sprite[0x26] = zero;
        sprite[0x27] = zero;
        sprite[5] = sprite[5] & mask;
        sprite[9] = sprite[9] & 0xf;
        actor[0x55] = zero;
        actor[0x5c] = 1;
        buf = (unsigned char *)__galloc_iwram(0x11, 0x608);
        __LoadItemIcon(0xe6);
        buf += 0x400;
        __UploadSpriteGFX(sprite[0x1c], 0x80, buf);
        __gfree(0x11);
        Lm922_2488 = actor;
    }
}

extern unsigned char L2488[] __asm__(".Lm922_2488");

void OvlFunc_922_2009b9c(void) {
    int v;

    __CutsceneStart();
    v = *(int *)L2488;
    if (v != 0) {
        __Func_808f140(v, 3);
    }
    __Func_8091a58(0xe6, 0);
    __SetFlag(0xf13);
    v = *(int *)L2488;
    if (v != 0) {
        __DeleteActor();
    }
    __CutsceneEnd();
}

void OvlFunc_922_2009bdc(unsigned int arg0) {
    unsigned int *ptr;

    ptr = (unsigned int *)arg0;
    ptr[2] = ptr[2] + ptr[17];
    ptr[3] = ptr[3] + ptr[18];
    ptr[4] = ptr[4] + ptr[19];
    ptr[6] = ptr[6] + ptr[12];
    ptr[7] = ptr[7] + ptr[13];
}

extern void __Func_80929d8();

unsigned int OvlFunc_922_2009c08(int arg) {
    __Func_80929d8(arg, 15);
    return 0;
}

INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_2009c18.s");
extern volatile unsigned int iwram_3001e40;
extern void OvlFunc_922_2009c18(int, int, int, int, int, int, int, void *);

struct EffectData {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
};

void OvlFunc_922_2009d78(void)
{
    struct EffectData data;
    int r;
    int r2;
    int mask;

    mask = iwram_3001e40 & 3;
    if (mask == 0) {
        data.unk4 = 10;
        data.unk8 = 0x8000;
        data.unkc = 0x8000;
        data.unk10 = 0x1cccc;
        data.unk14 = 0x1cccc;
        if ((iwram_3001e40 & 7) == 0) {
            __PlaySound(0x88);
        }
        r = 0xffff0000 - ((((unsigned int)__Random() * 2) >> 16) << 16);
        r2 = -((int)(((((unsigned int)__Random() * 3) >> 16)) * 0x3333));
        OvlFunc_922_2009c18(0x1340000, 0x400000, 0xde0000, r, r2, mask, 0xd0001, &data);
    }
}
INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_2009e08.s");

void OvlFunc_922_2009f04(void)
{
  int v;
  __CutsceneStart();
  v = 0x17e1;
 do { } while (0);
  __Func_801776c(v, 1);
  __CutsceneEnd();
}

void OvlFunc_922_2009f20(void)
{
  int v;
 do { __CutsceneStart(); } while (0);
  v = 1;
  __Func_801776c(0x17e2, v);
  __CutsceneEnd();
}

void OvlFunc_922_2009f3c(void)
{
  int a;
  __CutsceneStart();
 do { __Func_801776c(a = 0x17e3, 1); } while (0);
  __CutsceneEnd();
}

extern unsigned char *iwram_3001ebc;

void OvlFunc_922_2009f58(void) {
    int r0;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;

    __CutsceneStart();
    r0 = __GetFlag(0x820);
    if (r0 != 0) {
        __Func_801776c(0x17e5, 1);
    } else {
        __Func_801776c(0x17e4, 1);
        r0 = __CheckPartyItem(0xe6);
        if (r0 != -1) {
            b = iwram_3001ebc;
            addr = (unsigned short *)(b + (0xb9 << 1));
            v = 1;
            *addr = v;
        }
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_2009fac.s");
INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_200a014.s");
INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_200a094.s");

INCLUDE_ASM("asm/maps/imil_falls_cave/imports.s");
