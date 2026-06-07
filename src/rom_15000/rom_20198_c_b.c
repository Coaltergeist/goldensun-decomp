/* Cluster Func_8020aec..Func_8020aec extracted from goldensun/asm/rom_15000/rom_20198_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_a.o and asm/rom_15000/rom_20198_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Data_310a4;
extern void Func_8003fa4(int slot, unsigned int size, unsigned char *gfx);

void Func_8020aec(int slot) {
    Func_8003fa4(slot, 0x80, (unsigned char *)&Data_310a4);
}
