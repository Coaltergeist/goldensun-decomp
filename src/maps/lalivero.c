/* rom_7f148c (overlay file 966): consolidated TU — lalivero map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/lalivero/exports.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_966_2008030(void) {
    __Func_80955b0(0x17, 2, 6);
}

extern unsigned char gOvl_0200975c[];

unsigned int Lalivero_GetEntrances(void) {
    return (unsigned int)gOvl_0200975c;
}

unsigned int Lalivero_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098c4[];

void *Lalivero_GetExits(void) {
    return (void *)gOvl_020098c4;
}

extern unsigned char L1a98[] __asm__(".Lm966_1a98");
extern unsigned char L1900[] __asm__(".Lm966_1900");

unsigned int *Lalivero_GetActors(void)
{
    if (__GetFlag(0x9a7))
        return (unsigned int *)L1a98;
    return (unsigned int *)L1900;
}

INCLUDE_ASM("asm/maps/lalivero/ovl_30_c_c_a_c.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_966_20081f0(void) {
    unsigned int r2;
    unsigned int r3;

    r2 = *(unsigned int *)iwram_3001ebc;
    r3 = *(short *)((char *)r2 + 0xb6 * 2);
    *(unsigned int *)((char *)r2 + 0xe4 * 2) = 0x10;
    __Func_8091e9c(r3);
}

INCLUDE_ASM("asm/maps/lalivero/ovl_30_c_c_c_a_a.s");

void OvlFunc_966_20091bc(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  __MessageID(0x28b7);
  new_var = 1;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __ActorMessage(new_var2, 0);
  new_var4 = 0x10;
 do { new_var4 = (unsigned long) new_var4; } while (0);
  new_var3 = new_var4;
  new_var6 = 0;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_8092304(new_var5, 0, -(int) new_var3);
  __CutsceneEnd();
}

extern unsigned char L1ee4[] __asm__(".Lm966_1ee4");
extern unsigned char L1d04[] __asm__(".Lm966_1d04");

unsigned int *Lalivero_GetEvents(void)
{
    if (__GetFlag(0x9a7))
        return (unsigned int *)L1ee4;
    return (unsigned int *)L1d04;
}

INCLUDE_ASM("asm/maps/lalivero/ovl_30_c_c_c_c.s");

INCLUDE_ASM("asm/maps/lalivero/imports.s");
