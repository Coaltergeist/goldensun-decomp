/* rom_79e5c0 (overlay file 911): consolidated TU — kolima map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kolima/exports.s");

extern unsigned char L3698[] __asm__(".Lm911_3698");

unsigned int OvlFunc_911_2008030(unsigned int arg0)
{
    int r3;
    r3 = *(int *)L3698;
    if (r3 != 0) {
        __Actor_SetAnim(arg0, 2);
        *(int *)L3698 = 0;
    }
    return 1;
}

INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_2008050.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_20080a0.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_20080cc.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_2008114.s");
INCLUDE_ASM("asm/maps/kolima/Kolima_GetEntrances.s");
INCLUDE_ASM("asm/maps/kolima/Kolima_GetSpecialExits.s");

extern unsigned char gOvl_0200b040[];

void *Kolima_GetExits(void) {
    return (void *)gOvl_0200b040;
}

INCLUDE_ASM("asm/maps/kolima/Kolima_GetActors.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_2008230.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_911_2008274(void) {
    __Func_80955b0(0x1b, 0, 1);
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_27[];
extern unsigned char Lm911_3590[] __asm__(".Lm911_3590");
extern unsigned char Lm911_33b0[] __asm__(".Lm911_33b0");

int Kolima_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_27) return (int)Lm911_3590;
    return (int)Lm911_33b0;
}
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_20082b4.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_2008304.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_20083c8.s");
INCLUDE_ASM("asm/maps/kolima/Kolima_MapInit.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_2008800.s");

void OvlFunc_911_20088ac(unsigned int arg0, unsigned int arg1)
{
  __Func_8096fb0(0x8d, 1);
  __Func_80970f8(arg0, arg1);
 do { } while (0);
  __Func_809728c();
  __FieldMove(1);
  __WaitFrames(1);
}

void OvlFunc_911_20088d8(void)
{
	__FieldMove(2);
	__Func_8097174();
	__Func_8097194();
}

INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_20088ec.s");

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_911_200a5a8(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

extern void __Func_8092adc(unsigned int arg0, unsigned int arg1, unsigned int arg2);

void OvlFunc_911_200a5c0(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__Func_8092adc(arg0, arg1, 0);
	__CutsceneWait(arg2);
}

extern void __DeleteActor(void);

unsigned int OvlFunc_911_200a5d8(int *p) {
    int v;
    *(int *)((char *)p + 0x18) = *(int *)((char *)p + 0x18) + 0x1eb8;
    v = *(int *)((char *)p + 0x38);
    if (v == (0x80 << 24)) {
        if (*(int *)((char *)p + 0x3c) == v) {
            if (*(int *)((char *)p + 0x40) == v) {
                __DeleteActor();
            }
        }
    }
    return 1;
}

INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_200a608.s");

extern int __Func_80929d8(int a, int b);
extern unsigned int iwram_3001e40;

unsigned int OvlFunc_911_200a6a4(int a)
{
    if ((iwram_3001e40 >> 1) & 1) {
        __Func_80929d8(a, 0xa);
    } else {
        __Func_80929d8(a, 7);
    }
    return 0;
}

INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_200a6cc.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_200a7ac.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_200a910.s");

INCLUDE_ASM("asm/maps/kolima/imports.s");
