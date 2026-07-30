/* Cluster OvlFunc_947_200a498..OvlFunc_947_200a498 extracted from goldensun/asm/overlays/rom_7d0e88/ovl_1528_c_c_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_1528_c_c_c_c_a.o and asm/overlays/rom_7d0e88/ovl_1528_c_c_c_c_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 */
extern void OvlFunc_947_2008528(int, int, int, int, int, int);

void OvlFunc_947_200a498(void)
{
  int r1;
  int r2;
  unsigned int *actor;

  actor = __MapActor_GetActor(10);
  __CutsceneStart();
  r1 = actor[2];
  r2 = actor[4];
  OvlFunc_947_2008528(2, r1 >> 20, r2 >> 20, 1, 1, 0);
  __CutsceneEnd();
}
