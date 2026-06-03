/* Cluster Func_80aa544..Func_80aa544 extracted from goldensun/asm/rom_a1000/rom_aa538_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_aa538_c_a.o and asm/rom_a1000/rom_aa538_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001f2c;

unsigned int Func_80aa544(unsigned int arg0)
{
    unsigned short *p;
    unsigned int v;
    int i;

    p = (unsigned short *)(iwram_3001f2c + 0x9a * 2);
    arg0 += 0x3d;
    v = 0x20;
    for (i = 3; i >= 0; i--) {
        p[0] = v;
        p[8] = arg0;
        v += 0x38;
        p++;
    }
    return arg0;
}
