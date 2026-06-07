/* Cluster OvlFunc_955_20082e8..OvlFunc_955_20082e8 extracted from goldensun/asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_a_a.o and asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7ddb88/overlay.ld.
 */
extern void __Func_8092708(unsigned int, int, int);
extern unsigned char ewram_2000240;

void OvlFunc_955_20082e8(void) {
    unsigned int r3;

    r3 = (unsigned int)&ewram_2000240;
    r3 += 0xfa << 1;
    __Func_8092708(*(unsigned int *)r3, 6, 0);
}
