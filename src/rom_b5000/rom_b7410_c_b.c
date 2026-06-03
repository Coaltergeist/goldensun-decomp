/* Cluster Func_80b7f70..Func_80b7f70 extracted from goldensun/asm/rom_b5000/rom_b7410_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_c_a.o and asm/rom_b5000/rom_b7410_c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_80b7f70(unsigned int arg0, unsigned int arg1)
{
    unsigned char *p = (unsigned char *)arg0;
    unsigned int t = p[0x54] & 0xf;
    if (t == 1) {
        if (arg1 == 0)
            return *(unsigned int *)(p + 0x50);
    } else if (t == 2) {
        unsigned int base = *(unsigned int *)(p + 0x50);
        return *(unsigned int *)((arg1 << 2) + base);
    }
    return 0;
}
