/* Cluster CheckItem..CheckItem extracted from goldensun/asm/rom_77000/rom_78414_c_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_c_c_a_a.o and asm/rom_77000/rom_78414_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *GetUnit(int unit);

int CheckItem(int pc, int item)
{
    unsigned char *u;
    unsigned short *p;
    int i;

    u = GetUnit(pc);
    p = (unsigned short *)(u + 0xd8);
    for (i = 0; i <= 0xe; i++) {
        if ((p[i] & 0x1ff) == item)
            return i;
    }
    return -1;
}
