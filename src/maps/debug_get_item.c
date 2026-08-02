/* rom_7fc720 (overlay file 973): consolidated TU */

#include "nonmatching.h"

extern unsigned char gOvl_02008920[];
extern unsigned char gOvl_02008964[];
extern unsigned char gOvl_02008994[];
extern unsigned char gOvl_02008998[];
extern unsigned char gOvl_02008a58[];
extern unsigned char L93c[] __asm__(".L93c");
extern unsigned char L958[] __asm__(".L958");

extern void __MapActor_Emote(int actor, int emote, int c);
extern void __MessageID(int id);
extern void __ActorMessage(int actor, int b);
extern unsigned char *__GetUnit(int unit);
extern void __SetMinLevel(int unit, int level);
extern void __CalcStats(int unit);
extern void *__CreateUIBox(int a, int b, int c, int d, int e);
extern void __UIDrawText(unsigned char *text, void *box, int x, int y);
extern int __Debug_IconTest(void);
extern int __Debug_FaceTest(void);

extern unsigned int iwram_3001f30;

unsigned int OvlFunc_973_2008030(void) {
    return (unsigned int)gOvl_02008964;
}

unsigned int OvlFunc_973_2008038(void) {
    return 0;
}

unsigned int OvlFunc_973_200803c(void) {
    return (unsigned int)gOvl_02008994;
}

unsigned int OvlFunc_973_2008044(void) {
    return (unsigned int)gOvl_02008998;
}

INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_200804c.s");

void OvlFunc_973_2008070(void)
{
  __MapActor_Emote(0xd, 0x105, 0);
  __MessageID(0x23cd);
 do { { int arg0 = 0xd; __ActorMessage(arg0, 0); } } while (0);
}

unsigned int OvlFunc_973_2008098(void) {
    return (unsigned int)gOvl_02008a58;
}

void OvlFunc_973_20080a0(int r0, int r1) {
    int r5, r6;
    unsigned char *unit;
    r5 = r0;
    r6 = r1;
    unit = __GetUnit(r5);
    __SetMinLevel(r5, unit[0xf] + r6);
    __CalcStats(r5);
}

INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_20080c0.s");
INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_20080ec.s");
INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_2008214.s");
INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_20084b0.s");
INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_20086f8.s");
INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_200871c.s");

void OvlFunc_973_2008768(void)
{
    unsigned char unused[32];
    void *pUVar1;

    pUVar1 = __CreateUIBox(0, 0xd, 0x1e, 6, 2);
    __UIDrawText(gOvl_02008920, pUVar1, 0, 0);
    __UIDrawText(L93c, pUVar1, 0, 8);
    __UIDrawText(L958, pUVar1, 0, 0x10);
}

void OvlFunc_973_20087b8(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x35)) = 1;
}

int OvlFunc_973_20087c8(void) {
    return __Debug_IconTest();
}

int OvlFunc_973_20087d4(void) {
    return __Debug_FaceTest();
}
