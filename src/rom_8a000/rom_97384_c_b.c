/* Cluster Func_8097948..Func_8097948 extracted from goldensun/asm/rom_8a000/rom_97384_c.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97384_c_a.o and asm/rom_8a000/rom_97384_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_80979a4(unsigned int a0, unsigned int a1, unsigned int a2);

void Func_8097948(unsigned int r0, unsigned int r1, unsigned int r2, unsigned int r3) {
    unsigned int r5;
    unsigned int r6;
    unsigned int r8;
    unsigned int r9;
    unsigned int r10;

    r10 = r2;
    r9 = r3;
    r8 = r1;
    r5 = r0;
    r6 = 0xf8 << 13;
    {
        unsigned int v = 0xf0 << 15;
        unsigned int res = Func_80979a4(r5 + v, 0, r6);
        *(unsigned int *)r8 = res;
        res = Func_80979a4(r5, 0, r6);
        *(unsigned int *)r10 = res;
        r5 += 0xff880000;
        res = Func_80979a4(r5, 0, r6);
        *(unsigned int *)r9 = res;
    }
}
