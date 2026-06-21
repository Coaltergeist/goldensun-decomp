/* Cluster OvlFunc_899_200c5cc..OvlFunc_899_200c5cc extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_c_a_a.o and asm/overlays/rom_794ac0/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_899_200c5cc(void)
{
  unsigned long long new_var;
  unsigned int val = 0xe0;
  unsigned int addr = *((unsigned int *) iwram_3001ebc);
  val <<= 1;
  addr += val;
  new_var = addr;
  val += 0x49;
  *((unsigned int *) new_var) = val;
  __MapTransitionIn();
  __WaitMapTransition();
  __CutsceneWait(1);
}
