/* rom_791794 (overlay file 897): consolidated TU — elemental_stars_eruption map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/elemental_stars_eruption/exports.s");

extern unsigned char gOvl_0200b6d4[];

unsigned int ElementalStarsEruption_GetEntrances(void) {
    return (unsigned int)gOvl_0200b6d4;
}

unsigned int ElementalStarsEruption_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200b704[];

unsigned int ElementalStarsEruption_GetExits(void) {
    return (unsigned int)gOvl_0200b704;
}
extern unsigned char gOvl_0200b710[];

unsigned int ElementalStarsEruption_GetActors(void) {
    return (unsigned int)gOvl_0200b710;
}
extern unsigned char gOvl_0200b998[];

unsigned int ElementalStarsEruption_GetEvents(void) {
    return (unsigned int)gOvl_0200b998;
}

INCLUDE_ASM("asm/maps/elemental_stars_eruption/ovl_30_a_c_c.s");

void OvlFunc_897_2008f28(void) {}
void OvlFunc_897_2008f2c(void) {}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern int OvlFunc_897_2008054(void);

int ElementalStarsEruption_MapInit(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0xa) {
        __StartEarthquake();
        OvlFunc_897_2008054();
    }
    return 0;
}

unsigned int OvlFunc_897_2008f54(unsigned int arg0) {
    unsigned short val;
    unsigned int ptr;

    val = *((unsigned short *)((char *)arg0 + 6));
    ptr = *((unsigned int *)((char *)arg0 + 0x50));
    val += 0x4000;
    *((unsigned short *)((char *)ptr + 0x1e)) = val;
    return 1;
}

INCLUDE_ASM("asm/maps/elemental_stars_eruption/ovl_30_c_c_a_a.s");

extern unsigned char L3b68[] __asm__(".Lm897_3b68");
extern unsigned char L3b00[] __asm__(".Lm897_3b00");
extern unsigned char L3b6c[] __asm__(".Lm897_3b6c");
extern unsigned char L3b70[] __asm__(".Lm897_3b70");
extern unsigned char L3ac0[] __asm__(".Lm897_3ac0");

void OvlFunc_897_2009084(void)
{
    unsigned int *r2;
    unsigned int *r3;
    unsigned int cnt;
    unsigned int r1;

    *(unsigned int *)L3b68 = 0x3f;
    *(unsigned int *)L3b00 = 0;
    *(unsigned int *)L3b6c = 0;
    *(unsigned int *)L3b70 = 0x78;
    r2 = (unsigned int *)L3ac0;
    cnt = 0;
    r1 = 0;
    do {
        cnt += 1;
        *r2++ = r1;
    } while (cnt <= 0xf);
}

INCLUDE_ASM("asm/maps/elemental_stars_eruption/ovl_30_c_c_a_c_a_a.s");

void OvlFunc_897_200a820(unsigned int arg0)
{
  unsigned char *r6;
  long long new_var2;
  int new_var;
  unsigned short v;
  new_var2 = 0xfa << 15;
  r6 = __MapActor_GetActor(arg0);
  new_var = new_var2;
  __MapActor_SetPos(arg0, 0xe8 << 16, new_var);
  v = 0x80 << 7;
  *((unsigned short *) (r6 + 6)) = v;
  __Func_8092b08(arg0, 3);
}

INCLUDE_ASM("asm/maps/elemental_stars_eruption/ovl_30_c_c_a_c_a_c.s");

extern unsigned char iwram_3001e40[];
extern void OvlFunc_897_200a84c(int arg0);
extern int _umodsi3_RAM(int a, int b);

void OvlFunc_897_200a93c(void)
{
    if ((*(unsigned int *)iwram_3001e40 & 1) == 0) {
        if ((unsigned int)_umodsi3_RAM(__Random(), 100) > 0x32) {
            OvlFunc_897_200a84c(1);
        } else {
            OvlFunc_897_200a84c(0);
        }
    }
}

extern void OvlFunc_897_200a8dc(int arg0);

void OvlFunc_897_200a970(void)
{
    if ((*(unsigned int *)iwram_3001e40 & 1) == 0) {
        if ((unsigned int)_umodsi3_RAM(__Random(), 100) > 0x32) {
            OvlFunc_897_200a8dc(1);
        } else {
            OvlFunc_897_200a8dc(0);
        }
    }
}

INCLUDE_ASM("asm/maps/elemental_stars_eruption/ovl_30_c_c_a_c_c_c.s");

extern void __PlaySound(unsigned int arg0);
extern void __Func_8091200(unsigned int arg0, unsigned int arg1);
extern void __Func_8091254(unsigned int arg0);
extern void __CutsceneWait(unsigned int arg0);
extern unsigned int iwram_3001e40__a2 __asm__("iwram_3001e40");
extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
extern void OvlFunc_897_200aeb0(unsigned int a);

void OvlFunc_897_200ad48(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    if (arg0 == 1) {
        __PlaySound(0x9a << 1);
        __Func_8091200(0x203a52, 1);
    } else {
        __PlaySound(0x121);
        __Func_8091200(0x80 << 9, 1);
    }
    __Func_8091254(arg1);
    if (arg2 != 0) {
        __CutsceneWait(arg2);
    }
}
void OvlFunc_897_200ad94(unsigned int arg0)
{
    if (iwram_3001e40__a2 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40__a2 & 0xf) == 0) {
        OvlFunc_897_200aeb0(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a3 __asm__("iwram_3001e40");

void OvlFunc_897_200add0(arg0) unsigned int arg0;
{
    if (iwram_3001e40__a3 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a3 >> 1, 6));
    }
    if ((iwram_3001e40__a3 & 0xf) == 0) {
        OvlFunc_897_200aeb0(arg0);
    }
}

INCLUDE_ASM("asm/maps/elemental_stars_eruption/ovl_30_c_c_c_a_a_c.s");

extern void __Func_8096fb0(int a, int b);

void OvlFunc_897_200aff0(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_897_200b000(void) {
    __Func_8097194();
}

extern void __MapActor_GetActor(int);

void OvlFunc_897_200b00c(void) {
    __MapActor_GetActor(0xf);
    OvlFunc_897_200add0();
}

INCLUDE_ASM("asm/maps/elemental_stars_eruption/ovl_30_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/elemental_stars_eruption/imports.s");
