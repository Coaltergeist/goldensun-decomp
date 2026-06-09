/* Cluster RPGRandom2..RPGRandom2 extracted from goldensun/asm/rom_77000/rom_79460_c_c_c_c_a_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_c_c_a_c_a.o and asm/rom_77000/rom_79460_c_c_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int RPGRandom(void);

unsigned short RPGRandom2(void) {
    return RPGRandom() * 0x64 >> 16;
}
