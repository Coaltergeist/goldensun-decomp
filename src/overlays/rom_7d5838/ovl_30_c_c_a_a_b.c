/* Cluster OvlFunc_950_2008044..OvlFunc_950_2008044 extracted from goldensun/asm/overlays/rom_7d5838/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d5838/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7d5838/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7d5838/overlay.ld.
 */
extern unsigned char L1040[] __asm__(".L1040");
extern unsigned char Le00[] __asm__(".Le00");

unsigned char * OvlFunc_950_2008044(void) {
    if (__GetFlag(0x95 << 4)) {
        return L1040;
    } else {
        return Le00;
    }
}
