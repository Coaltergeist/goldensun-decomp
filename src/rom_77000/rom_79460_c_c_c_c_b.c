/* Cluster Func_807a5b0..Func_807a5b0 extracted from goldensun/asm/rom_77000/rom_79460_c_c_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_c_c_a.o and asm/rom_77000/rom_79460_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_807a0cc();

unsigned short Func_807a5b0(void) {
    unsigned int ptr = Func_807a0cc();
    return *(unsigned short *)ptr;
}
