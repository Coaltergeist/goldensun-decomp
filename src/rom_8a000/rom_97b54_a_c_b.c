/* Cluster Field_Force_Target..Field_Force_Target extracted from goldensun/asm/rom_8a000/rom_97b54_a_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97b54_a_c_a.o and asm/rom_8a000/rom_97b54_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Field_Force(void);

void Field_Force_Target(void) {
    Field_Force();
}
