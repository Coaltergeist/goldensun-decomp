/* Cluster Func_8016478..Func_8016478 extracted from goldensun/asm/rom_15000/rom_15e8c_a_c_c_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_a_c_c_a_a_a_a.o and asm/rom_15000/rom_15e8c_a_c_c_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_8016498(void *);
extern void Func_80164ac(void *);

void Func_8016478(void *arg0) {
    unsigned char *r5;
    unsigned short r2;
    int r3;
    r5 = (unsigned char *)arg0;
    r2 = *(unsigned short *)(r5 + 0x16);
    r3 = 8;
    r3 &= r2;
    if (r3 == 0) {
        Func_8016498(r5);
        Func_80164ac(r5);
    }
}
