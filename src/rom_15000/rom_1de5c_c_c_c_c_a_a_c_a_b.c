/* Cluster Func_801f704..Func_801f704 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_a_a.o and asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f1c[];

unsigned int Func_801f704(void) {
    unsigned char *r2;
    unsigned int r0;
    unsigned char r3;
    r2 = *(unsigned char **)iwram_3001f1c + (0x82 << 5);
    r0 = 0;
    do {
        r3 = *(unsigned char *)(r2 + 0x1c);
        if (r3 == 0)
            return r0;
        r0++;
        r2 += 0x40;
    } while (r0 <= 2);
    r0 = 0x3e7;
    return r0;
}
