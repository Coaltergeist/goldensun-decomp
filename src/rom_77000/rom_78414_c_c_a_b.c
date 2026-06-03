/* Cluster Func_8078664..Func_8078664 extracted from goldensun/asm/rom_77000/rom_78414_c_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_c_c_a_a.o and asm/rom_77000/rom_78414_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *Func_8077394(int unit);

int Func_8078664(int pc, int item)
{
    unsigned char *u;
    unsigned short *p;
    int i;

    u = Func_8077394(pc);
    p = (unsigned short *)(u + 0xd8);
    for (i = 0; i <= 0xe; i++) {
        if ((p[i] & 0x1ff) == item)
            return i;
    }
    return -1;
}
