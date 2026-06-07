/* Cluster OvlFunc_968_20088a0..OvlFunc_968_20088a0 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_a_a_c_a.o and asm/overlays/rom_7f2f14/ovl_30_a_a_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern unsigned int __MapActor_GetActor(int id);
extern unsigned int *iwram_3001ee0;

void OvlFunc_968_20088a0(void) {
    unsigned int v;

    v = __MapActor_GetActor(0);
    iwram_3001ee0[6] = v;
}
