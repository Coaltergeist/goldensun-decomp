/* Cluster Func_80b9a44..Func_80b9a44 extracted from goldensun/asm/rom_b5000/rom_b8228_c_a_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b8228_c_a_c_c_a.o and asm/rom_b5000/rom_b8228_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e74;

short Func_80b9a44(unsigned int arg0)
{
    unsigned char *base;
    int off;

    base = (unsigned char *)iwram_3001e74;
    if (arg0 & 0x80) {
        off = ((arg0 & 0xf) << 1) + 0x64;
        base += 2;
    } else {
        off = ((arg0 & 0xf) << 1) + 0x58;
    }
    return *(short *)(base + off);
}
