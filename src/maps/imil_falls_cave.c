/* rom_7a8c8c (overlay file 922): consolidated TU — imil_falls_cave map overlay. */

#include "nonmatching.h"
#include "api.h"

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

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_34[], _EVENT_3e[], _EVENT_3f[], _EVENT_40[], _EVENT_41[], _EVENT_42[], _EVENT_43[];
extern unsigned char Lm922_24bc[] __asm__(".Lm922_24bc");
extern unsigned char Lm922_2504[] __asm__(".Lm922_2504");
extern unsigned char Lm922_25f4[] __asm__(".Lm922_25f4");
extern unsigned char Lm922_263c[] __asm__(".Lm922_263c");
extern unsigned char Lm922_26cc[] __asm__(".Lm922_26cc");
extern unsigned char Lm922_2744[] __asm__(".Lm922_2744");
extern unsigned char Lm922_27bc[] __asm__(".Lm922_27bc");
extern unsigned char Lm922_248c[] __asm__(".Lm922_248c");
void *ImilFallsCave_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_34) return Lm922_24bc;
    if (ev == (int)_EVENT_3e) return Lm922_2504;
    if (ev == (int)_EVENT_3f) return Lm922_25f4;
    if (ev == (int)_EVENT_40) return Lm922_263c;
    if (ev == (int)_EVENT_41) return Lm922_26cc;
    if (ev == (int)_EVENT_42) return Lm922_2744;
    if (ev == (int)_EVENT_43) return Lm922_27bc;
    return Lm922_248c;
}

unsigned int ImilFallsCave_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a8f4[];

unsigned int ImilFallsCave_GetExits(void) {
    return (unsigned int)gOvl_0200a8f4;
}
extern unsigned char Lconst_34[] __asm__(".Lconst_34");
__asm__(".equ .Lconst_34, 0x34");
extern unsigned char Lconst_3e[] __asm__(".Lconst_3e");
__asm__(".equ .Lconst_3e, 0x3e");
extern unsigned char Lconst_3f[] __asm__(".Lconst_3f");
__asm__(".equ .Lconst_3f, 0x3f");
extern unsigned char Lconst_40[] __asm__(".Lconst_40");
__asm__(".equ .Lconst_40, 0x40");
extern unsigned char Lconst_41[] __asm__(".Lconst_41");
__asm__(".equ .Lconst_41, 0x41");
extern unsigned char Lconst_43[] __asm__(".Lconst_43");
__asm__(".equ .Lconst_43, 0x43");

extern unsigned char Lm922_29bc[] __asm__(".Lm922_29bc");
extern unsigned char Lm922_29ec[] __asm__(".Lm922_29ec");
extern unsigned char Lm922_2a4c[] __asm__(".Lm922_2a4c");
extern unsigned char Lm922_2ac4[] __asm__(".Lm922_2ac4");
extern unsigned char Lm922_2b3c[] __asm__(".Lm922_2b3c");
extern unsigned char Lm922_2b9c[] __asm__(".Lm922_2b9c");
extern unsigned char Lm922_29a4[] __asm__(".Lm922_29a4");

void *ImilFallsCave_GetActors(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)Lconst_34) return Lm922_29bc;
    if (ev == (int)Lconst_3e) return Lm922_29ec;
    if (ev == (int)Lconst_3f) return Lm922_2a4c;
    if (ev == (int)Lconst_40) return Lm922_2ac4;
    if (ev == (int)Lconst_41) return Lm922_2b3c;
    if (ev == (int)Lconst_43) return Lm922_2b9c;
    return Lm922_29a4;
}
extern void *__MapActor_GetActor(int);
extern void __Actor_TravelTo(void *, int, int, int);
extern void __Actor_SetAnim(void *, int);
extern void __Actor_WaitMovement(void *);

void OvlFunc_922_2008180(int actor_id, int dx, int dz)
{
    unsigned char *leader;
    unsigned char *actor;
    int r2;
    int x;
    int z;

    r2 = 0xfa;
    r2 <<= 1;
    leader = (unsigned char *)__MapActor_GetActor(*(int *)((char *)&gState + r2));
    actor = (unsigned char *)__MapActor_GetActor(actor_id);
    __CutsceneStart();

    x = ((*(int *)(leader + 8) + (dx << 16)) & 0xfff00000) + (0x80 << 12);
    z = ((*(int *)(leader + 0x10) + (dz << 16)) & 0xfff00000) + (0x80 << 12);
    *(int *)(leader + 0x30) = 0x80 << 9;
    *(int *)(leader + 0x34) = 0x80 << 8;
    __Actor_TravelTo(leader, x, *(int *)(leader + 0xc), z);
    __Actor_SetAnim(leader, 0x1b);

    x = ((*(int *)(actor + 8) + (dx << 16)) & 0xfff00000) + (0x80 << 12);
    z = ((*(int *)(actor + 0x10) + (dz << 16)) & 0xfff00000) + (0x80 << 12);
    *(int *)(actor + 0x30) = 0x80 << 9;
    *(int *)(actor + 0x34) = 0x80 << 8;
    __Actor_TravelTo(actor, x, *(int *)(actor + 0xc), z);

    if (dx < 0 || dz < 0) {
        __Actor_SetAnim(actor, 4);
    } else {
        __Actor_SetAnim(actor, 3);
    }
    __Actor_WaitMovement(leader);
    __CutsceneEnd();
}

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

extern void OvlFunc_922_20092cc(void);
void OvlFunc_922_20085b8(void) {
    __PlaySound(0xf1);
    if (__GetFlag(0xc4 << 2) != 0 || __GetFlag(0x30d) != 0) {
        OvlFunc_922_2008180(8, -0x30, 0);
        __ClearFlag(0xc2 << 2);
        __SetFlag(0x309);
    } else {
        OvlFunc_922_2008180(8, -0x60, 0);
        __SetFlag(0xc2 << 2);
        __ClearFlag(0x309);
    }
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}

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

void OvlFunc_922_20087f0(void) {
    __PlaySound(0xf1);
    if (__GetFlag(0x308)) {
        OvlFunc_922_2008180(0xa, 0, 0x10);
        __ClearFlag(0x30b);
        __SetFlag(0x30c);
        __ClearFlag(0x30d);
        __ClearFlag(0x30e);
    } else if (__GetFlag(0x310)) {
        OvlFunc_922_2008180(0xa, 0, 0x10);
        __ClearFlag(0x30b);
        __SetFlag(0x30c);
        __ClearFlag(0x30d);
        __ClearFlag(0x30e);
    } else if (__GetFlag(0x311)) {
        OvlFunc_922_2008180(0xa, 0, 0x40);
        __ClearFlag(0x30b);
        __ClearFlag(0x30c);
        __SetFlag(0x30d);
        __ClearFlag(0x30e);
    } else {
        OvlFunc_922_2008180(0xa, 0, 0x80);
        __ClearFlag(0x30b);
        __ClearFlag(0x30c);
        __ClearFlag(0x30d);
        __ClearFlag(0x30e);
    }
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}

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

void OvlFunc_922_2008920(void) {
    __PlaySound(0xf1);
    if (__GetFlag(0x311)) {
        OvlFunc_922_2008180(0xa, 0, 0x30);
        __ClearFlag(0x30b);
        __ClearFlag(0x30c);
        __SetFlag(0x30d);
        __ClearFlag(0x30e);
    } else if (__GetFlag(0x310)) {
        OvlFunc_922_2008180(0xa, 0, 0x20);
        __ClearFlag(0x30b);
        __SetFlag(0x30c);
        __ClearFlag(0x30d);
        __ClearFlag(0x30e);
    } else {
        OvlFunc_922_2008180(0xa, 0, 0x70);
        __ClearFlag(0x30b);
        __ClearFlag(0x30c);
        __ClearFlag(0x30d);
        __ClearFlag(0x30e);
    }
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}

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
void __Func_8010704(int, int, int, int, int, int);
void OvlFunc_922_2009004(int, int, int);

void OvlFunc_922_2009050(void) {
    int eight = 8;
    int t1, t2;

    __Func_8010704(8, 0x2a, 0xf, 5, eight, 0x1d);
    if (__GetFlag(0x301)) {
        OvlFunc_922_2009004(8, 0x16, 0x1f);
        __Func_8010704(9, 0x1e, 1, 3, eight, 0x1e);
    } else {
        OvlFunc_922_2009004(8, 8, 0x1f);
        t1 = 0x16;
        t2 = 0x1e;
        __Func_8010704(9, 0x1e, 1, 3, t1, t2);
    }

    if (__GetFlag(0x302)) {
        OvlFunc_922_2009004(9, 0xc, 0x1d);
        t1 = 0xb;
        t2 = 0x21;
        __Func_8010704(0xe, 0x21, 3, 1, t1, t2);
    } else {
        OvlFunc_922_2009004(9, 0xc, 0x21);
        t1 = 0xb;
        t2 = 0x1d;
        __Func_8010704(0xe, 0x1d, 3, 1, t1, t2);
    }

    if (__GetFlag(0x303)) {
        OvlFunc_922_2009004(0xa, 0x12, 0x1d);
        t1 = 0x11;
        t2 = 0x21;
        __Func_8010704(0xe, 0x21, 3, 1, t1, t2);
    } else {
        OvlFunc_922_2009004(0xa, 0x12, 0x21);
        t1 = 0x11;
        t2 = 0x1d;
        __Func_8010704(0xe, 0x1d, 3, 1, t1, t2);
    }
}

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
void OvlFunc_922_20095dc(void) {
    GlobalState *p = &gState;
    int step = *(unsigned short *)((char *)p + (0xe1 << 1));
    int t1, t2;

    if ((unsigned short)(step - 1) <= 1) {
        t1 = 0xe;
        t2 = 0xa;
        __Func_8010704(0x16, 0x14, 9, 8, t1, t2);
    } else {
        t1 = 7;
        t2 = 0x2d;
        __Func_8010704(0x14, 0x2d, 0xb, 4, t1, t2);
    }

    if (__GetFlag(0x313)) {
        OvlFunc_922_2009004(8, 0x14, 0x11);
        t1 = 0x13;
        t2 = 0xa;
        __Func_8010704(0x13, 0xb, 3, 1, t1, t2);
    } else {
        OvlFunc_922_2009004(8, 0x14, 0xa);
        t1 = 0x13;
        t2 = 0x11;
        __Func_8010704(0x13, 0xb, 3, 1, t1, t2);
    }

    if (__GetFlag(0x314)) {
        OvlFunc_922_2009004(9, 0xe, 0x10);
        t1 = 0x16;
        t2 = 0xf;
        __Func_8010704(0x10, 0xf, 1, 3, t1, t2);
    } else {
        OvlFunc_922_2009004(9, 0x16, 0x10);
        t1 = 0xe;
        t2 = 0xf;
        __Func_8010704(0x10, 0xf, 1, 3, t1, t2);
    }

    if (__GetFlag(0x315)) {
        OvlFunc_922_2009004(0xa, 0x11, 0x2e);
        t1 = 7;
        t2 = 0x2d;
        __Func_8010704(0xf, 0xf, 1, 3, t1, t2);
    } else {
        OvlFunc_922_2009004(0xa, 7, 0x2e);
        t1 = 0x11;
        t2 = 0x2d;
        __Func_8010704(0xf, 0xf, 1, 3, t1, t2);
    }
}

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
extern unsigned char *iwram_3001ebc;
extern void OvlFunc_922_20097a8(void);
extern void OvlFunc_922_20097e4(void);

int ImilFallsCave_MapInit(void) {
    *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x204;
    if (__GetFlag(0x109) == 0) {
        GlobalState *p = &gState;
        if (*(short *)((char *)p + 0x1c0) == (int)Lconst_34) {
            __SetFlag(0x144);
            OvlFunc_922_20097a8();
            return 0;
        }
    }
    OvlFunc_922_20097e4();
    return 0;
}

void OvlFunc_922_20097a8(void)
{
  extern void __CutsceneStart(void);
  extern void *__MapActor_GetActor(int);
  extern void __Actor_SetSpriteFlags(int, int);
  extern void __MapTransitionIn(void);
  extern void __MapActor_SetSpeed(int, int, int);
  extern void __MapActor_TravelToWait(int, int, int);
  extern void __CutsceneEnd(void);
  int actor;

  

  

  
  __CutsceneStart();
  actor = __MapActor_GetActor(8);
  __Actor_SetSpriteFlags(actor, 0);
  __MapTransitionIn();
  API_MapActor_SetSpeed(0, (0x80 << 10), (0x1999));
  API_MapActor_TravelToWait(0, (0x84 << 1), 0xc4);
  __CutsceneEnd();
}
extern void __Func_8092b08(int, int);
extern void __CopyMapTiles(int, int, int, int, int, int);

void OvlFunc_922_20097e4(void) {
    int v;
    GlobalState *p;
    OvlFunc_922_2009948();
    p = &gState;
    if (*(short *)((char *)p + (0xe0 << 1)) == (int)Lconst_40) {
        if (!__GetFlag(0xf13)) {
            if (*(short *)((char *)p + (0xe1 << 1)) == 1) {
                OvlFunc_922_2009b1c();
            }
        }
        {
            GlobalState *state = &gState;
            unsigned short s = *(unsigned short *)((char *)state + (0xe1 << 1));
            if ((unsigned int)(((unsigned int)s - 2) << 16) <= (0xc0 << 10)) {
                v = 0xe2 << 17;
                OvlFunc_922_2008ed8(0x9c << 16, 0, v, 0xdf);
                OvlFunc_922_2008ed8(0xbc << 16, 0, v, 0xdf);
            }
        }
    } else if (*(short *)((char *)p + (0xe0 << 1)) == (int)Lconst_43) {
        unsigned char *actor = (unsigned char *)__MapActor_GetActor(8);
        v = 0;
        *(int *)L3328 = v;
        actor[0x55] = v;
        *(int *)(actor + 0xc) = v;
        __Func_8092b08(8, 1);
        __Func_8092950(8, 0xf);
        {
            int step = *(short *)((char *)p + (0xe1 << 1));
            switch (step) {
            case 1:
            case 2:
                __Func_8091494(0);
                *(int *)L3328 = 1;
                break;
            case 5:
                __Func_8091494(0);
                *(int *)L3328 = 1;
                v = *(int *)iwram_3001ee0;
                *(int *)(v + 0x18) = 0;
                break;
            }
        }
        {
            GlobalState *state = &gState;
            if (*(short *)((char *)state + (0xe1 << 1)) <= 6) {
                if (__GetFlag(0x82 << 4)) {
                    __CopyMapTiles(0x1e, 0x39, 0x13, 0x39, 1, 1);
                    {
                        int t = 7;
                        __CopyMapTiles(0x1e, 8, 0xc, 8, 8, t);
                    }
                } else {
                    *(int *)(iwram_3001ebc + (0xe0 << 1)) = (0xe0 << 1) - 0xc0;
                    API_Func_8091220(0x203108, 1);
                    API_Func_8091200(0x203108, 1);
                    __Func_8091254(1);
                    __WaitFrames(1);
                }
            }
        }
    }
}

extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_922_2009050(void);
extern void OvlFunc_922_2009154(void);
extern void OvlFunc_922_20092cc(void);
extern void OvlFunc_922_20095dc(void);

void OvlFunc_922_2009948(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + (0xe0 << 1));
    int t1;
    int t2;

    if (ev == (int)Lconst_3e) {
        t1 = 8;
        t2 = 0x2a;
        __Func_8010704(8, 0x1d, 0xf, 5, t1, t2);
        OvlFunc_922_2009050();
        return;
    }
    if (ev == (int)Lconst_3f) {
        t1 = 0;
        t2 = 0x1c;
        __Func_8010704(0xc, 8, 0xa, 0x12, t1, t2);
        OvlFunc_922_2009154();
        return;
    }
    if (ev == (int)Lconst_40) {
        if (*(short *)((char *)p + (0xe1 << 1)) != 1) {
            t1 = 0xc;
            t2 = 3;
            __Func_8010704(0xc, 0x15, 9, 0x10, t1, t2);
            OvlFunc_922_20092cc();
            return;
        }
    }
    if (*(short *)((char *)p + (0xe0 << 1)) == (int)Lconst_41) {
        int step = *(unsigned short *)((char *)p + (0xe1 << 1));
        if ((unsigned short)(step - 1) <= 1) {
            t1 = 0x16;
            t2 = 0x14;
            __Func_8010704(0xe, 0xa, 9, 8, t1, t2);
        } else {
            t1 = 0x14;
            t2 = 0x2d;
            __Func_8010704(7, 0x2d, 0xb, 4, t1, t2);
        }
        OvlFunc_922_20095dc();
    }
}
extern void OvlFunc_922_2009ad0(int a, int b);

void OvlFunc_922_2009a34(void) {
    GlobalState *p = &gState;
    int idx;
    idx = *(short *)((char *)iwram_3001ebc + (0xb6 << 1));
    if (*(short *)((char *)p + (0xb6 << 1) + 0x54) == (int)Lconst_3f) {
        if (idx == 0x11) {
            OvlFunc_922_2009ad0(0, -0x20);
        } else {
            OvlFunc_922_2009ad0(-0x20, 0);
        }
    }
    if (*(short *)((char *)p + (0xe0 << 1)) == (int)Lconst_40 && idx == 0x19) {
        if (__GetFlag(0x309) != 0) {
            OvlFunc_922_2009ad0(0, 0x20);
        }
    }
}

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

    
    __CutsceneStart();
    API_MapActor_SetSpeed(0, (0xa0 << 10), (0xa0 << 9));
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
    int mask = ~0x20;
    int zero;
    unsigned char *actor;
    unsigned char *sprite;
    unsigned char *buf;

    zero = 0;
    actor = (unsigned char *)API_CreateActor(0x16, 0xf80000, 0x80000, 0x980000);
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
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __StartTask(void *, int);
extern void __StopTask(void *);
extern void __Func_808e118(void);
extern void __Func_8078a08(int);
extern void __PlayMapMusic(void);
extern void __Func_8091200(int, int);

void OvlFunc_922_2009e08(void) {
    unsigned int i;
    int eight;
    int seven;
    int one;
    void *task;

    __PlaySound(0x13);
    __PlaySound(0xb6);
    __CutsceneStart();
    __Func_808e118();
    i = 0;
    eight = 8;
    seven = 7;
    one = 1;
    for (; i <= 3; i++) {
        __Func_8091200(0x204318, 1);
        __Func_8091254(1);
        __WaitFrames(2);
        if (i == 0) {
            __CopyMapTiles(0x1e, 8, 0xc, 8, eight, seven);
            __CopyMapTiles(0x1e, 0x39, 0x13, 0x39, one, one);
        }
        __Func_8091200(0x203108, 1);
        __Func_8091254(1);
        __WaitFrames(2);
    }
    __WaitFrames(0x1e);
    task = OvlFunc_922_2009d78;
    __StartTask(task, 0xc8 << 4);
    __WaitFrames(0x28);
    __Func_8091200(0x201090, 1);
    __Func_8091254(0x28);
    __WaitFrames(0x50);
    __StopTask(task);
    __WaitFrames(0x14);
    __Func_8091200(0x80 << 9, 1);
    __Func_8091254(0x50);
    __WaitFrames(0x50);
    __SetFlag(0x82 << 4);
    __Func_8078a08(0xe6);
    __PlayMapMusic();
    __CutsceneEnd();
}

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
extern unsigned char *iwram_3001f30;
void __Func_8091220(int, int);
void __Func_8091200(int, int);
void __Func_8091254(int);
void __WaitFrames(int);

void OvlFunc_922_2009fac(void) {
    GlobalState *p = &gState;
    if (*(short *)((char *)p + 0x1c2) <= 6) {
        unsigned char *b2 = iwram_3001f30;
        unsigned char *b1 = *(unsigned char **)((unsigned int)&iwram_3001f30 - 0x64);
        unsigned char *ptr;
        int off = 0x53e;
        int zero = 0;

        b2[0x34] = 1;
        ptr = b1 + off;
        *ptr = zero;
        *(b1 + (off - 2)) = 1;
        b1 += 0x53d;
        *b1 = 1;
        __Func_8091220(0, 1);
        __Func_8091200(0x203108, 1);
        __Func_8091254(0x10);
        __WaitFrames(0x10);
    }
}
extern short Lm922_2424[] __asm__(".Lm922_2424");
extern unsigned int gKeyHeld;
void __Actor_SetAnim(void *, int);
void __Actor_SetAnimSpeed(void *, int);

void OvlFunc_922_200a014(unsigned char *actor) {
    short *p64 = (short *)(actor + 0x64);
    if (*p64 != 0) {
        *p64 -= 1;
    } else {
        short target;
        short diff;
        int max_step;
        int min_step;

        actor[0x5a] = 0;
        target = Lm922_2424[(gKeyHeld >> 4) & 0xf];
        if (target == -1) {
            __Actor_SetAnim(actor, 9);
        } else {
            diff = (short)(target - *(unsigned short *)(actor + 6));
            max_step = 0x80 << 5;
            if (diff > max_step) diff = max_step;
            min_step = -0x1000;
            if (diff < min_step) diff = min_step;
            *(unsigned short *)(actor + 6) += diff;
            __Actor_SetAnim(actor, 2);
            __Actor_SetAnimSpeed(actor, 0x30);
        }
    }
}
INCLUDE_ASM("asm/maps/imil_falls_cave/OvlFunc_922_200a094.s");
INCLUDE_ASM("asm/maps/imil_falls_cave/imil_falls_cave_data.s");

INCLUDE_ASM("asm/maps/imil_falls_cave/imports.s");
