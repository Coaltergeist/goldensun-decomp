/* Cluster Func_80a1c2c..Func_80a1c2c extracted from goldensun/asm/rom_a1000/rom_a1814_c_a_a_c_a.s.
 *
 * Total .text for this TU = 132 bytes (= 0x84).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_a_c_a_a.o and asm/rom_a1000/rom_a1814_c_a_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80a17c4(unsigned char *);

void Func_80a1c2c(unsigned char **pp, int idx, int arg2, int arg3, int arg4)
{
    unsigned char *p;

    if (idx > 0x1f)
        idx = 0;
    p = *pp;
    *(unsigned short *)(p + 8) = ((idx / arg4) << 4) + arg3;
    *(unsigned short *)(p + 6) = ((idx % arg4) << 4) + arg2;
    Func_80a17c4(p);
}
