/* Cluster OvlFunc_939_2008a90..OvlFunc_939_2008a90 extracted from goldensun/asm/overlays/rom_7c460c/ovl_314_a_c_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c460c/ovl_314_a_c_c_a_a.o and asm/overlays/rom_7c460c/ovl_314_a_c_c_a_c.o in
 * goldensun/overlays/rom_7c460c/overlay.ld.
 */
// fakematch
extern int _MSG_1bc0;

void OvlFunc_939_2008a90(void)
{
  unsigned long long t;
  unsigned long v;
  if (__GetFlag(0x941))
  {
    __MessageID(0x24e8);
  }
  else
  {
    __MessageID((int) (&_MSG_1bc0));
  }
  t = 9;
  do { t = (unsigned long) t; } while (0);
  v = t;
  __ActorMessage(v, 0);
}
