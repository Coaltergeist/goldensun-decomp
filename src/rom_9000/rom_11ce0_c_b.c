/* Cluster Func_80120b4..Func_80120b4 extracted from goldensun/asm/rom_9000/rom_11ce0_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11ce0_c_a.o and asm/rom_9000/rom_11ce0_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char ewram_2010000[];

unsigned int Func_80120b4(int x, int y)
{
    unsigned char *p;
    int idx;

    idx = (x / 16) + ((y / 16) << 7);
    p = ewram_2010000 + (idx << 2);
    return (unsigned int)p[1] >> 6;
}
