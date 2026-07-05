/* Cluster OvlFunc_940_20081d8..OvlFunc_940_20081d8 extracted from goldensun/asm/overlays/rom_7c5974/ovl_30_c_c_a_c_c_c_c.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5974/ovl_30_c_c_a_c_c_c_c_a.o and asm/overlays/rom_7c5974/ovl_30_c_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7c5974/overlay.ld.
 */
extern int _MSG_1be0;

void OvlFunc_940_20081d8(void)
{
  int r0;
  if (__GetFlag(0x941) != 0)
  {
    __CutsceneStart();
    r0 = __MessageID(0x24fa);
 do { __ActorMessage(0x10, 0); } while (0);
    __CutsceneEnd();
  }
  else
  {
 do { __CutsceneStart(); r0 = __MessageID((int) (&_MSG_1be0)); } while (0);
    __ActorMessage(0x10, 0);
    __CutsceneEnd();
  }
}
