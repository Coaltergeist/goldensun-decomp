/* rom_7eaf28 (overlay file 960): consolidated TU — suhalla_desert map overlay. */

#include "nonmatching.h"

extern void __Func_8091f14(int a, int b);

void OvlFunc_960_2008314(void) {
    __Func_8091f14(15, 45);
}

extern void __Actor_SetSpriteFlags(unsigned int arg0, int arg1);

unsigned int OvlFunc_960_2008324(unsigned int arg0)
{
    __Actor_SetSpriteFlags(arg0, 0);
    *(unsigned char *)(arg0 + 0x59) = 0;
    return 0;
}

unsigned int OvlFunc_960_200833c(unsigned int arg0) {
    unsigned char *ptr = (unsigned char *)arg0;
    ptr[0x54] ^= 1;
    return 1;
}

INCLUDE_ASM("asm/maps/suhalla_desert/SuhallaDesert_GetEntrances.s");

int SuhallaDesert_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020095c0[];

unsigned int SuhallaDesert_GetExits(void) {
    return (unsigned int)gOvl_020095c0;
}

INCLUDE_ASM("asm/maps/suhalla_desert/SuhallaDesert_GetActors.s");
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008400.s");
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008464.s");

extern void OvlFunc_960_2008464(int);

void OvlFunc_960_2008558(void) {
    OvlFunc_960_2008464(8);
}


void OvlFunc_960_2008564(void) {
    OvlFunc_960_2008464(9);
}


void OvlFunc_960_2008570(void) {
    OvlFunc_960_2008464(10);
}


void OvlFunc_960_200857c(void) {
    OvlFunc_960_2008464(11);
}


void OvlFunc_960_2008588(void) {
    OvlFunc_960_2008464(12);
}

INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008594.s");

extern void OvlFunc_960_2008594(int);

void OvlFunc_960_20087fc(void) {
    OvlFunc_960_2008594(8);
}


void OvlFunc_960_2008808(void) {
    OvlFunc_960_2008594(9);
}


void OvlFunc_960_2008814(void) {
    OvlFunc_960_2008594(10);
}


void OvlFunc_960_2008820(void) {
    OvlFunc_960_2008594(11);
}


void OvlFunc_960_200882c(void) {
    OvlFunc_960_2008594(12);
}

INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008838.s");
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_20089cc.s");
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008adc.s");

extern unsigned int iwram_3001f30;

void OvlFunc_960_2008b14(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x34)) = 1;
}

INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008b24.s");
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008c00.s");
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008ce4.s");
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008d24.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char Const_A5[] __asm__(".Lconst_a5");
__asm__(".equ .Lconst_a5, 0xa5");

extern void OvlFunc_960_2008ce4(void);

extern unsigned char *__MapActor_GetActor(int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_808edac(int, int, int);
extern void __Func_808ee0c(void);
extern void __StartTask(void *, int);

static inline void MapActor_SetPos(int actor, int x, int y) {
    __MapActor_SetPos(actor, x << 16, y << 18);
}

static inline void Func_808edac(int a, int b, int c)
{
    __Func_808edac(a, -b, -c);
}

int OvlFunc_960_2008dc8(void)
{
    int off;
    int zero;
    unsigned int t1, t2;
    unsigned int t3, t4;

    off = 0xe0 << 1;
    if (*(short *)((char *)&gState + off) == (int)Const_A5) {
        ((unsigned char *)__MapActor_GetActor(0xe))[0x23] = 2;
        zero = 0;
        ((unsigned char *)__MapActor_GetActor(0xe))[0x55] = zero;
        MapActor_SetPos(0xe, 0xf8, 0xb2);
        t1 = 0xf;
        t2 = 0x2c;
        __Func_8010704(0x1f, 0x5f, 1, 1, t1, t2);
        Func_808edac(100, 1, 1);
        __Func_808ee0c();
        t3 = 0xc;
        t4 = 0x47;
        __Func_8010704(0x7f, 0x7f, 1, 1, t3, t4);
        __StartTask(OvlFunc_960_2008ce4, 0xc8 << 4);
    }
}
extern unsigned char _EVENT_a6[];
extern unsigned char Lm960_19c4[] __asm__(".Lm960_19c4");
extern unsigned char Lm960_17b4[] __asm__(".Lm960_17b4");

int SuhallaDesert_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_a6) return (int)Lm960_19c4;
    return (int)Lm960_17b4;
}
INCLUDE_ASM("asm/maps/suhalla_desert/SuhallaDesert_MapInit.s");
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008f50.s");
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2009094.s");
