/* Cluster Func_80c08e0..Func_80c08e0 extracted from goldensun/asm/rom_b5000/rom_bffb8_a_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bffb8_a_c_a.o and asm/rom_b5000/rom_bffb8_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void gfree(int index);

void Func_80c08e0(void) {
    gfree(10);
}
