/* Cluster Func_8078b60..Func_8078b60 extracted from goldensun/asm/rom_77000/rom_78a8c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78a8c_c_a.o and asm/rom_77000/rom_78a8c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_80796c4(unsigned short *buf);
extern int Func_8078af8(unsigned short val, unsigned int arg);

unsigned int Func_8078b60(unsigned int arg0)
{
    unsigned short buf[16];
    int count;
    int sum;
    int i;

    sum = 0;
    count = Func_80796c4(buf);
    if (sum < count) {
        for (i = 0; i < count; i++) {
            sum += Func_8078af8(buf[i], arg0);
        }
    }
    return sum;
}
