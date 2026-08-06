/* rom_7db0c8 (overlay file 954): consolidated TU — colosseum_final_1 map overlay. */

#include "nonmatching.h"

extern void OvlFunc_954_2008238();

extern unsigned char gOvl_0200c194[];

unsigned int ColosseumFinal1_GetEntrances(void) {
    return (unsigned int)gOvl_0200c194;
}

unsigned int ColosseumFinal1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c1dc[];

void *ColosseumFinal1_GetExits(void) {
    return (void *)gOvl_0200c1dc;
}
extern unsigned char gOvl_0200c1f4[];

void *ColosseumFinal1_GetActors(void) {
    return (void *)gOvl_0200c1f4;
}

INCLUDE_ASM("asm/maps/colosseum_final_1/ovl_30_c_c_a_a_a_a.s");

extern unsigned char L441c[] __asm__(".Lm954_441c");
extern void OvlFunc_954_200804c(void);

void OvlFunc_954_2008134(void)
{
    *(int *)L441c = 0;
    __StopTask(OvlFunc_954_200804c);
    ((void (*)(void))OvlFunc_954_200804c)();
}

INCLUDE_ASM("asm/maps/colosseum_final_1/ovl_30_c_c_a_a_a_c.s");

extern void OvlFunc_common1_2060(void);
extern void OvlFunc_954_20081a8(void);

void OvlFunc_954_2008238(void)
{
	OvlFunc_common1_2060();
	OvlFunc_954_20081a8();
}

void OvlFunc_954_2008248(void)
{
  int new_var;
  int new_var2;
  new_var2 = 0x2f;
  new_var = 0xc;
  __Func_8010704(new_var2, 0x18, 1, 1, new_var2, new_var);
  __SetFlag(0x303);
}

INCLUDE_ASM("asm/maps/colosseum_final_1/ovl_30_c_c_a_a_c_c.s");

extern void __SetFlag(int);

void OvlFunc_954_2008830(void) {
    __SetFlag(0xc0 << 2);
}

INCLUDE_ASM("asm/maps/colosseum_final_1/ovl_30_c_c_a_c_a.s");

extern int OvlFunc_common1_21c8(void);

void OvlFunc_954_2008954(void)
{
	if (OvlFunc_common1_21c8() == 0)
		__Func_8093c00();
	else
		OvlFunc_954_2008238();
}

extern unsigned char gOvl_0200c420[];

void *ColosseumFinal1_GetEvents(void) {
    return (void *)gOvl_0200c420;
}

INCLUDE_ASM("asm/maps/colosseum_final_1/ovl_30_c_c_c_a.s");

extern int __MapActor_GetActor();

void OvlFunc_954_2008a10(void) {
    int res;
    int a;
    int b;

    res = __MapActor_GetActor();
    if (res != 0) {
        a = (*(int *)((char *)res + 8) >> 19) - 0x5e;
        b = *(int *)((char *)res + 0x10) >> 19;
        if ((unsigned int)a <= 1) {
            if (b > 0x17) {
                if (b <= 0x1a) {
                    *(unsigned char *)((char *)res + 0x22) = 1;
                }
            }
        }
    }
}

INCLUDE_ASM("asm/maps/colosseum_final_1/ovl_30_c_c_c_c.s");
