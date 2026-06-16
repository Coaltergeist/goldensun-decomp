/* Cluster Func_8006f6c..Func_8006f6c extracted from goldensun/asm/rom_c0/rom_6878_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_6878_c_a.o and asm/rom_c0/rom_6878_c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_8006f6c(void) {
    unsigned int r4;
    r4 = _call_via_r1();
    if (r4 == 0) {
        return 0;
    }
    return 0x8004;
}
