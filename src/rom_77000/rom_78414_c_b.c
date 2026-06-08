/* Cluster FindEmptyInventorySlot..FindEmptyInventorySlot extracted from goldensun/asm/rom_77000/rom_78414_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_c_a.o and asm/rom_77000/rom_78414_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *GetUnit(int unit);

int FindEmptyInventorySlot(int unit)
{
    unsigned char *p;
    int count;
    int off;

    p = GetUnit(unit);
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
