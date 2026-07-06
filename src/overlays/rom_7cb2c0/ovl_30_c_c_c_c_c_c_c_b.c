/* Cluster OvlFunc_945_200d780..OvlFunc_945_200d780 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern int OvlFunc_945_200cfa8(int arg0, int arg1);
extern unsigned int OvlFunc_945_200c8e8(int arg0, int arg1, int arg2);
extern void OvlFunc_945_200b7d8(int arg0);
extern void OvlFunc_945_200d2f4(void);

void OvlFunc_945_200d780(void)
{
  int r6;
  int r5;
  r6 = OvlFunc_945_200cfa8(0, 0);
  r5 = OvlFunc_945_200cfa8(1, 0);
  __CutsceneStart();
 do { OvlFunc_945_200c8e8(0x18, 1, 0); OvlFunc_945_200c8e8(0x19, 0, 0); OvlFunc_945_200b7d8(0); OvlFunc_945_200c8e8(0x13, r6, r5); } while (0);
  __MapActor_SetPos(0xb, 0, 0);
  __MapActor_SetPos(0xc, 0, (unsigned int) 0);
  OvlFunc_945_200d2f4();
  __SetFlag(0x92a);
  __CutsceneEnd();
}
