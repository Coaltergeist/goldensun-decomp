/* Cluster Func_8077330..Func_8077330 extracted from goldensun/asm/rom_77000/rom_77320_a_a_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_77320_a_a_c_a.o and asm/rom_77000/rom_77320_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *GetUnit(int unit);
extern unsigned char ewram_200024c[];

void *Func_8077330(int r0) {
    if (r0 != 0) {
        return GetUnit(0x83);
    }
    return ewram_200024c;
}
