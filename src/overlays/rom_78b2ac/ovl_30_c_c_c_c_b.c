/* Cluster OvlFunc_890_200a924..OvlFunc_890_200a924 extracted from goldensun/asm/overlays/rom_78b2ac/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78b2ac/ovl_30_c_c_c_c_a.o and asm/overlays/rom_78b2ac/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_78b2ac/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int a);
extern void __MessageID(int a);
extern void __Func_8093040(volatile unsigned long a, int b, int c);
extern void __Func_8092adc(int a, int b, int c);
extern void __CutsceneEnd(void);

void OvlFunc_890_200a924(void)
{
  int new_var;
  __CutsceneStart();
  new_var = 0xc0 << 8;
  if (__GetFlag(0x896))
  {
    __MessageID(0xffd);
  }
  else
  {
    __MessageID(0xfff);
  }
  __Func_8093040(0x10, 0, 0xa);
  __Func_8092adc(0x10, new_var, 0xa);
  __CutsceneEnd();
}
