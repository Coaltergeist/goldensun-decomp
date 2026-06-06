/* Cluster OvlFunc_948_20098c0..OvlFunc_948_20098c0 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a.o and asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
/* OvlFunc_948_20098c0 — REG_BLDALPHA (0x04000052) = 0xd00.
 * Value synthesized (0xd0<<4). Value var declared FIRST so it lands in r2 and
 * the address pointer in r3 (matching strh r2,[r3]). */

void OvlFunc_948_20098c0(void) {
    unsigned short v = 0xd00;
    volatile unsigned short *p = (volatile unsigned short *)0x04000052;
    *p = v;
}
