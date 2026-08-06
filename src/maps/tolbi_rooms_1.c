/* rom_7d5838 (overlay file 950): consolidated TU — tolbi_rooms_1 map overlay. */

#include "nonmatching.h"

extern unsigned char gOvl_02008bb4[];

unsigned int TolbiRooms1_GetEntrances(void) {
    return (unsigned int)gOvl_02008bb4;
}

unsigned int TolbiRooms1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008dac[];

void *TolbiRooms1_GetExits(void) {
    return (void *)gOvl_02008dac;
}

extern unsigned char L1040[] __asm__(".Lm950_1040");
extern unsigned char Le00[] __asm__(".Lm950_e00");

unsigned char * TolbiRooms1_GetActors(void) {
    if (__GetFlag(0x95 << 4)) {
        return L1040;
    } else {
        return Le00;
    }
}

extern int __GetFlag(int);
extern unsigned char L19d0[] __asm__(".Lm950_19d0");
extern unsigned char L1670[] __asm__(".Lm950_1670");
extern unsigned char gScript_886__02009310[];

unsigned char *TolbiRooms1_GetEvents(void)
{
	if (__GetFlag(0x95 << 4))
		return L19d0;
	if (__GetFlag(0x962))
		return L1670;
	return gScript_886__02009310;
}

INCLUDE_ASM("asm/maps/tolbi_rooms_1/ovl_30_c_c_a_c_a.s");

void OvlFunc_950_200873c(unsigned int arg0)
{
  __CutsceneStart();
  __MessageID(0x23a1);
  __ActorMessage(arg0, 0);
 do { __CutsceneEnd(); } while (0);
}

INCLUDE_ASM("asm/maps/tolbi_rooms_1/ovl_30_c_c_a_c_c.s");

extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_950_200885c(void) {
    __CutsceneStart();
    if (__GetFlag(0x8be) == 0) {
        __MessageID(0x23b3);
    } else {
        __MessageID(0x23b4);
    }
    __ActorMessage(0x19, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/tolbi_rooms_1/ovl_30_c_c_c.s");
