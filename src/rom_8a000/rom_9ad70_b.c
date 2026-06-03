/* Cluster Func_809b0b0..Func_809b0b0 extracted from goldensun/asm/rom_8a000/rom_9ad70.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9ad70_a.o and asm/rom_8a000/rom_9ad70_c.o in
 * goldensun/stage1.ld.
 */
void Func_809b0b0(unsigned int arg0)
{
    unsigned short *p;
    unsigned short *base;
    int n;
    unsigned int v;

    base = (unsigned short *)arg0;
    p = (unsigned short *)(arg0 + 0x64);
    n = *(short *)p;
    v = (unsigned int)((n * 5) << 4);
    base[3] = (unsigned short)(base[3] + v + 0x1000);
    if (v < 0x1000) {
        *p = *p + 1;
    }
}
