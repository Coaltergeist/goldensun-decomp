/* unknown/sub_8096c24.c -- consolidated TU. */
#include "nonmatching.h"

extern int GetFieldActor(int actorID);
extern void _Actor_SetAnimSpeed(int actor, int speed);
extern unsigned char ewram_200048a[];

void Func_8096cdc(unsigned char *arg0, unsigned int arg1, int arg2)
{
    unsigned char *actor;
    short *p;
    int i;

    i = 0;
    p = (short *)ewram_200048a;
    do {
        actor = (unsigned char *)GetFieldActor(i);
        if (i != *p && actor != (unsigned char *)0 && actor != arg0) {
            actor[0x5b] = arg1;
            _Actor_SetAnimSpeed((int)actor, arg2);
        }
        i++;
    } while (i <= 0x42);
}

INCLUDE_ASM("asm/unknown/sub_8096c24/rom_96cdc_a_a_c.s");

extern unsigned int iwram_3001e40;
extern void _Actor_SetColorswap(unsigned int a, unsigned int b);
extern void Func_8096ddc(unsigned int a);

void Func_8096f14(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        _Actor_SetColorswap(arg0, 7);
    } else {
        _Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        Func_8096ddc(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a1 __asm__("iwram_3001e40");

void Func_8096f50(unsigned int arg0)
{
    if (iwram_3001e40__a1 & 1) {
        _Actor_SetColorswap(arg0, ((iwram_3001e40__a1 >> 1) % 6));
    }
    if ((iwram_3001e40__a1 & 0xf) == 0) {
        Func_8096ddc(arg0);
    }
}

extern unsigned int iwram_3001f30;
extern void Func_809b804(unsigned char *p);

void Func_8096f8c(void) {
    unsigned char *p;
    int i;

    p = (unsigned char *)(iwram_3001f30 + 0x58);
    for (i = 0x17; i >= 0; i--) {
        Func_809b804(p);
        p += 0x48;
    }
}

INCLUDE_ASM("asm/unknown/sub_8096c24/rom_96cdc_c_a.s");

extern unsigned char iwram_3001f30__a1[] __asm__("iwram_3001f30");
extern void WaitFrames(int nframes);

void Func_8097174(void)
{
    int *r3;
    int *r0;

    r3 = *(int **)iwram_3001f30__a1;
    r0 = *(int **)((char *)r3 + 0x10);
    *(int *)((char *)r0 + 0x6c) = 0;
    _Actor_SetColorswap(r0, 0);
    WaitFrames(1);
}

INCLUDE_ASM("asm/unknown/sub_8096c24/rom_96cdc_c_c.s");
