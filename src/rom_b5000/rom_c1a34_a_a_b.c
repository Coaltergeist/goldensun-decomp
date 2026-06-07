/* Cluster Func_80c2368..Func_80c2368 extracted from goldensun/asm/rom_b5000/rom_c1a34_a_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_c1a34_a_a_a.o and asm/rom_b5000/rom_c1a34_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char Lc7420[] __asm__(".Lc7420");

int Func_80c2368(int arg0)
{
    unsigned char *p;
    int v;
    p = Lc7420 + arg0 * 8;
    v = (int)(p[3] >> 5);
    if (v > 4)
        return -1;
    return v;
}
