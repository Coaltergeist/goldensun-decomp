/* Cluster Func_80a38a8..Func_80a38a8 extracted from goldensun/asm/rom_a1000/rom_a1814_c_a_c_c_c_c_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_c_c_c_c_a_a.o and asm/rom_a1000/rom_a1814_c_a_c_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern void Func_80a9cbc(void);
extern void _Func_8016498(unsigned int);
extern void Func_80a9a5c(unsigned int, unsigned int, int);

void Func_80a38a8(unsigned int arg0) {
    unsigned int *r5;
    unsigned int r6;
    r6 = arg0;
    r5 = *(unsigned int **)iwram_3001f2c;
    Func_80a9cbc();
    _Func_8016498(*(unsigned int *)((char *)r5 + 0x20));
    Func_80a9a5c(*(unsigned int *)((char *)r5 + 0x20), r6, 0);
}
