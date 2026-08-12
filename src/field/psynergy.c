/* field/psynergy.c -- consolidated TU. */
#include "nonmatching.h"

extern void Func_809748c();

INCLUDE_ASM("asm/field/psynergy/rom_97384_a.s");

extern unsigned int iwram_3001ebc;
extern int Func_8091200(unsigned int a, unsigned int b);
extern void Func_8091254(unsigned int a);

void Func_809748c(void) {
    unsigned int base;
    unsigned int p;

    base = iwram_3001ebc;
    p = base + 0x236;
    Func_8091200(p, 2);
    if (*(short *)((char *)base + 0xcb8) != 0) {
        Func_8091200(0x10001, 1);
    } else {
        Func_8091200(p, 1);
    }
    Func_8091254(8);
}

INCLUDE_ASM("asm/field/psynergy/rom_97384_c_a_a.s");

extern unsigned char iwram_3001ea8[];
extern void Func_8097adc(void);
extern void StopTask(void *task);
extern void Task_08097644(void);
extern void *MapActor_GetActor(unsigned short actorID);
extern void Func_808e0b0(void *actor, int flag);
extern void gfree(int index);

void Func_8097608(void)
{
    unsigned char *base = *(unsigned char **)iwram_3001ea8;
    unsigned short id;
    void *actor;

    Func_8097adc();
    StopTask(Task_08097644);
    id = *(unsigned short *)(base + (0xa4 << 2));
    actor = MapActor_GetActor(id);
    Func_808e0b0(actor, 1);
    Func_809748c();
    gfree(0x16);
}

INCLUDE_ASM("asm/field/psynergy/rom_97384_c_a_c.s");

extern unsigned int Func_80979a4(unsigned int a0, unsigned int a1, unsigned int a2);

void Func_8097948(unsigned int r0, unsigned int r1, unsigned int r2, unsigned int r3) {
    unsigned int r5;
    unsigned int r6;
    unsigned int r8;
    unsigned int r9;
    unsigned int r10;

    r10 = r2;
    r9 = r3;
    r8 = r1;
    r5 = r0;
    r6 = 0xf8 << 13;
    {
        unsigned int v = 0xf0 << 15;
        unsigned int res = Func_80979a4(r5 + v, 0, r6);
        *(unsigned int *)r8 = res;
        res = Func_80979a4(r5, 0, r6);
        *(unsigned int *)r10 = res;
        r5 += 0xff880000;
        res = Func_80979a4(r5, 0, r6);
        *(unsigned int *)r9 = res;
    }
}

INCLUDE_ASM("asm/field/psynergy/rom_97384_c_c.s");
