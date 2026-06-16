/* Cluster OvlFunc_922_200970c..OvlFunc_922_200970c extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_a_a_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern unsigned char L3328[] __asm__(".L3328");
extern unsigned char iwram_3001ee0[];

void OvlFunc_922_200970c(void) {
    unsigned int r3;
    r3 = *(unsigned int *)L3328;
    if (r3 != 0) {
        unsigned int *r5;
        r5 = *(unsigned int **)iwram_3001ee0;
        r5[6] = __MapActor_GetActor(0);
    }
}
