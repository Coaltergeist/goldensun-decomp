/* Cluster Func_80b770c..Func_80b770c extracted from goldensun/asm/rom_b5000/rom_b7410_a_a_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_a_a_c_a.o and asm/rom_b5000/rom_b7410_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_80b770c(short *p, int x)
{
    unsigned int i;
    unsigned short v;

    if (x > 7)
        x += 0x78;

    i = 0;
    do {
        v = (unsigned short)p[0];
        p++;
        if (v == 0xff)
            return 0;
        if (v == (unsigned int)x)
            return 1;
        i++;
    } while (i <= 0xd);

    return 0;
}
