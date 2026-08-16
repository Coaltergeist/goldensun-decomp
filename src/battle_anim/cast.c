/* unknown/sub_80c0a24.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/battle_anim/cast/rom_c10e8_a_a_a.s");

extern void Func_80008d4(int arg0, int arg1);
extern void gfree(int index);
extern int StopTask(void *task);
extern void Task_BlitPreAnim(void);
extern void Func_80c11ec(void);

int Func_80c16d0(void) {
    void (*fn)(int, int) = Func_80008d4;
    unsigned short *p;

    fn(0x6004000, 0x4000);
    gfree(0x2f);
    gfree(0x2e);
    gfree(0x28);
    gfree(0x27);
    p = (unsigned short *)0x4000000;
    *p = 0x1341;
    StopTask(Task_BlitPreAnim);
    return StopTask(Func_80c11ec);
}

SECTION(".text.cast_2");

extern void Func_80c0700(int a, int b);

void Func_80c1a14(void) {
    Func_80c0700(0, 0);
}

extern void SetIntrHandler(unsigned int, unsigned int, void *);

void ClearVCountIntr(void) {
    SetIntrHandler(2, 0, (void *)0);
}
