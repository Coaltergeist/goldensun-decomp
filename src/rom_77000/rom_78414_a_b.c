/* Cluster Func_8078414..Func_8078414 extracted from goldensun/asm/rom_77000/rom_78414_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_a_a.o and asm/rom_77000/rom_78414_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L7b6a8[] __asm__(".L7b6a8");

unsigned char *Func_8078414(unsigned int itemID) {
    return L7b6a8 + (itemID & 0x1ff) * 0x2c;
}
