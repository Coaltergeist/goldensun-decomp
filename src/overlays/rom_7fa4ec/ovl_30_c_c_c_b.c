/* Cluster OvlFunc_970_2009188..OvlFunc_970_2009188 extracted from goldensun/asm/overlays/rom_7fa4ec/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fa4ec/ovl_30_c_c_c_a.o and asm/overlays/rom_7fa4ec/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7fa4ec/overlay.ld.
 */
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
