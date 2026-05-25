/* Cluster Func_80a2408..Func_80a2420 extracted from goldensun/asm/rom_a1000/rom_a1814_c_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_a.o and asm/rom_a1000/rom_a1814_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e8c;

void Func_80a2408(void) {
    unsigned int addr;
    addr = iwram_3001e8c + 0xea6;
    *(unsigned char *)addr = 1;
}
extern unsigned int iwram_3001e8c;

void Func_80a2420(void) {
    unsigned int addr;
    addr = iwram_3001e8c + 0xea6;
    *(unsigned char *)addr = 0;
}
