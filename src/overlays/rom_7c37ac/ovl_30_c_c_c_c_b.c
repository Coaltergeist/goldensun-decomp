/* Cluster OvlFunc_938_2008114..OvlFunc_938_2008114 extracted from goldensun/asm/overlays/rom_7c37ac/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c37ac/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7c37ac/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7c37ac/overlay.ld.
 */
void OvlFunc_938_2008114(void)
{
  unsigned long long t1;
  unsigned long v1;
  unsigned short t2;

  __CutsceneStart();
  __MapActor_Emote(8, 0x100, 0x3c);
  __MessageID(0x1b91);

  t1 = 10;
  do { t1 = (unsigned long) t1; } while (0);
  v1 = t1;
  __Func_8093040(8, 0, v1);

  t2 = 8;
  do { t2 = (unsigned short) t2; } while (0);
  __Func_80925cc(t2, 2);

  t1 = 10;
  do { t1 = (unsigned long) t1; } while (0);
  v1 = t1;
  __Func_8093040(8, 0, v1);

  t2 = 8;
  do { t2 = (unsigned short) t2; } while (0);
  __MapActor_DoAnim(t2, 4);

  t1 = 10;
  do { t1 = (unsigned long) t1; } while (0);
  v1 = t1;
  __Func_8093040(8, 0, v1);

  t2 = 8;
  do { t2 = (unsigned short) t2; } while (0);
  __MapActor_DoAnim(t2, 3);

  __Func_8093040(8, 0, 10);
  __SetFlag(0x913);
  __CutsceneEnd();
}
