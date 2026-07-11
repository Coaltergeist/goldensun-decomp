/* Cluster OvlFunc_945_200d684..OvlFunc_945_200d684 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_a.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern int OvlFunc_945_200cfa8(int a, int b);
extern void OvlFunc_945_200c8e8(int a, int b, int c);
extern void OvlFunc_945_200b7d8(int a);
extern void OvlFunc_945_200d2f4(void);

void OvlFunc_945_200d684(void)
{
  int r5;
  r5 = OvlFunc_945_200cfa8(0, 0);
  __CutsceneStart();
  OvlFunc_945_200c8e8(0x18, 1, 0);
  OvlFunc_945_200c8e8(0x19, 0, 0);
  OvlFunc_945_200b7d8(0);
  OvlFunc_945_200c8e8(0x13, r5, 0xc);
  __MapActor_SetPos(0xb, 0, 0);
  OvlFunc_945_200d2f4();
  __SetFlag(0x929);
  __CutsceneEnd();
}
