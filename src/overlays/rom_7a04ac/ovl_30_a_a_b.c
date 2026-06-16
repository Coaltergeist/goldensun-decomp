/* Cluster OvlFunc_913_20089dc..OvlFunc_913_20089dc extracted from goldensun/asm/overlays/rom_7a04ac/ovl_30_a_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a04ac/ovl_30_a_a_a.o and asm/overlays/rom_7a04ac/ovl_30_a_a_c.o in
 * goldensun/overlays/rom_7a04ac/overlay.ld.
 */
extern unsigned char L3390[] __asm__(".L3390");

unsigned int OvlFunc_913_20089dc(void *arg0) {
    int r3;
    r3 = *(int *)L3390;
    if (r3) {
        __Actor_SetAnim(arg0, 2);
        *(int *)L3390 = 0;
    }
    return 1;
}
