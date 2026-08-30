/* rom_7ddb88 (overlay file 955): consolidated TU — colosseum_final_2 map overlay. */

#include "nonmatching.h"

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

INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_200805c.s");

extern void OvlFunc_955_200805c(void);

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
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2008258.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_200828c.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20082c0.s");

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
    int w1 = 0xea << 18;
    int w2 = 0xf2 << 18;
    int w3 = 0xfa << 18;
    int w4 = 0x81 << 19;
    int z = 0xd8 << 16;

    do { } while (w1 == 0);

    L4838[0] = 0;
    L4834[0] = 0;
    __StopTask(OvlFunc_955_2008714);

    __MapActor_SetPos(0x16, w1, z);
    __MapActor_SetPos(0x17, w2, z);
    __MapActor_SetPos(0x18, w3, z);
    __MapActor_SetPos(0x19, w4, z);

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

INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2008970.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20089b0.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2008a1c.s");

extern unsigned char gOvl_0200c83c[];

void *ColosseumFinal2_GetEvents(void) {
    return (void *)gOvl_0200c83c;
}

INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2008b38.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/ColosseumFinal2_MapInit.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20090dc.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20092f0.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2009424.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2009538.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20096d4.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_2009898.s");
INCLUDE_ASM("asm/maps/colosseum_final_2/OvlFunc_955_20099bc.s");
