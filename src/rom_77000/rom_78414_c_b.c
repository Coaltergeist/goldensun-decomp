/* Cluster Func_80784d8..Func_80784d8 extracted from goldensun/asm/rom_77000/rom_78414_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_c_a.o and asm/rom_77000/rom_78414_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *Func_8077394(int unit);

int Func_80784d8(int unit)
{
    unsigned char *p;
    int count;
    int off;

    p = Func_8077394(unit);
    off = 0xd8;
    count = 0;
    if (*(unsigned short *)(p + off) != 0) {
        p += 0xd8;
        do {
            count++;
            if (count > 0xe)
                break;
            p += 2;
        } while (*(unsigned short *)p != 0);
    }
    return count;
}
