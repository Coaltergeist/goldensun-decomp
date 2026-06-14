/* Cluster OvlFunc_890_200822c..OvlFunc_890_200822c extracted from goldensun/asm/overlays/rom_78b2ac/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78b2ac/ovl_30_c_c_a_a.o and asm/overlays/rom_78b2ac/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_78b2ac/overlay.ld.
 */
/* OvlFunc_890_200822c; *(vu16*)0x05000000 = 0.
 * Address (0xa0<<19) and value (0) both synthesized. Value var FIRST -> r2,
 * address pointer -> r3 (matching strh r2,[r3]). */

void OvlFunc_890_200822c(void) {
    unsigned short v = 0;
    volatile unsigned short *p = (volatile unsigned short *)0x05000000;
    *p = v;
}
