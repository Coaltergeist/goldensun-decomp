/* Cluster Field_Catch_Target..Field_Catch_Target extracted from goldensun/asm/rom_8a000/rom_9ad70_a.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9ad70_a_a.o and asm/rom_8a000/rom_9ad70_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Field_Catch(void);

void Field_Catch_Target(void) {
    Field_Catch();
}
