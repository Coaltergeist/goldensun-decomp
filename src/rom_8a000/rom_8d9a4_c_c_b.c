/* Cluster Func_8090378..Func_8090378 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_c_a.o and asm/rom_8a000/rom_8d9a4_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *iwram_3001e70;

void Func_8090378(unsigned int a, unsigned int b, unsigned int c) {
    unsigned char *p;
    p = iwram_3001e70;
    if (p) {
        if (c)
            *(unsigned short *)(p + 0x14) &= 0xfdff;
        if (b)
            *(unsigned short *)(p + 0x14) &= 0xfbff;
        if (a)
            *(unsigned short *)(p + 0x14) &= 0xf7ff;
    }
}
