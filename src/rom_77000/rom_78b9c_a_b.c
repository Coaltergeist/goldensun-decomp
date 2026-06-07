/* Cluster Func_8078b9c..Func_8078b9c extracted from goldensun/asm/rom_77000/rom_78b9c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78b9c_a_a.o and asm/rom_77000/rom_78b9c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L7ee58[] __asm__(".L7ee58");

unsigned char *Func_8078b9c(int moveID) {
    unsigned int idx = moveID & 0x3fff;
    if (idx >= 0x208)
        idx = 0;
    return L7ee58 + (idx << 4);
}
