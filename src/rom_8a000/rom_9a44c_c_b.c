/* Cluster Field_Whirlwind_Target..Field_Whirlwind_Target extracted from goldensun/asm/rom_8a000/rom_9a44c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9a44c_c_a.o and asm/rom_8a000/rom_9a44c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Field_Whirlwind(void);

void Field_Whirlwind_Target(void) {
    Field_Whirlwind();
}
