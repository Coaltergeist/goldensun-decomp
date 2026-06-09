/* Cluster Func_80b20e8..Func_80b20e8 extracted from goldensun/asm/rom_b0000/rom_b0070_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_a_a.o and asm/rom_b0000/rom_b0070_a_c.o in
 * goldensun/stage1.ld.
 */
extern short *_GetItemInfo(unsigned int arg);

unsigned int Func_80b20e8(unsigned int arg0)
{
    short *p;
    int v;

    p = _GetItemInfo(arg0);
    v = p[0] / 4;
    if ((arg0 & (0x80 << 3)) == 0)
        v = 0;
    return v;
}
