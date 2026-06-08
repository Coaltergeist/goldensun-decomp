/* Cluster Field_Douse_Target..Field_Douse_Target extracted from goldensun/asm/rom_8a000/rom_97b54_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97b54_c_a.o and asm/rom_8a000/rom_97b54_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Field_Douse(void);

void Field_Douse_Target(void) {
    Field_Douse();
}
