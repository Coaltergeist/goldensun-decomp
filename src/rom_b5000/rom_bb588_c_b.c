/* Cluster Func_80bb928..Func_80bb928 extracted from goldensun/asm/rom_b5000/rom_bb588_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bb588_c_a.o and asm/rom_b5000/rom_bb588_c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_80bb928(unsigned int arg0) {
    unsigned int *ptr = (unsigned int *)(arg0 + (0xb6 << 1));
    *ptr |= 1;
    return arg0 + (0xb6 << 1);
}
