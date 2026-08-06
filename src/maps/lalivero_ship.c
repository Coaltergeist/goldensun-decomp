/* rom_7fa4ec (overlay file 970): consolidated TU — lalivero_ship map overlay. */

#include "nonmatching.h"

extern void OvlFunc_970_2009188();

extern unsigned char gOvl_020096c8[];

unsigned int LaliveroShip_GetEntrances(void) {
    return (unsigned int)gOvl_020096c8;
}

unsigned int LaliveroShip_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009710[];

void *LaliveroShip_GetExits(void) {
    return (void *)gOvl_02009710;
}
extern unsigned char gOvl_0200971c[];

void *LaliveroShip_GetActors(void) {
    return (void *)gOvl_0200971c;
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_970_200804c(void)
{
  unsigned char *base;
  int new_var;
  short *new_var2;
  short val;
  int new_var3;
  unsigned int addr;
  base = *((unsigned char **) iwram_3001ebc);
  new_var = 0xa0;
  base += 0xb6 << 1;
  new_var2 = (short *) base;
  val = *new_var2;
  __Func_8091e9c(val);
 do { addr = new_var; } while (0);
  new_var3 = 0;
  addr <<= 19;
  *((unsigned short *) addr) = new_var3;
}


void OvlFunc_970_2008070(void) {
    OvlFunc_970_2009188();
}

extern void OvlFunc_970_20090d4(int, int, int, int, int, int, int);

void OvlFunc_970_200807c(void) {
    OvlFunc_970_20090d4(0, 0x80 << 11, 0x80 << 9, 0x80 << 6, 0x80 << 9, 0x80 << 8, 0x80 << 7);
}

extern unsigned char gOvl_020097ac[];

void *LaliveroShip_GetEvents(void) {
    return (void *)gOvl_020097ac;
}

INCLUDE_ASM("asm/maps/lalivero_ship/ovl_30_c_c_c_a.s");

extern void OvlFunc_970_2008f30(void);
extern void OvlFunc_970_2008f80(void);

void OvlFunc_970_2009188(void)
{
  char *new_var;
  unsigned int *r2;
  unsigned short r3;
  unsigned short r1;
  __StopTask(OvlFunc_970_2008f30);
  __StopTask(OvlFunc_970_2008f80);
  r2 = (unsigned int *) 0x040000b0;
  r3 = 0xc5ff;
  r1 = *((volatile unsigned short *) (((char *) r2) + 0xa));
  *((volatile unsigned short *) (((char *) r2) + 0xa)) = (r3 &= r1);
  r3 = 0x7fff;
  r2++;
  r2--;
  r1 = *((volatile unsigned short *) (((char *) r2) + 0xa));
  new_var = (char *) r2;
  r3 &= r1;
  *((volatile unsigned short *) (((char *) r2) + 0xa)) = r3;
  r3 = *((volatile unsigned short *) (new_var + 0xa));
}

INCLUDE_ASM("asm/maps/lalivero_ship/ovl_30_c_c_c_c.s");
