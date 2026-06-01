/* Cluster Func_80915dc..Func_80915dc extracted from goldensun/asm/rom_8a000/rom_91584_a_c_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_a_c_a_a.o and asm/rom_8a000/rom_91584_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_8091584(void);
extern unsigned int Func_8091560(void);

unsigned int Func_80915dc(void) {
    Func_8091584();
    return *(unsigned char *)(Func_8091560() + 3);
}
