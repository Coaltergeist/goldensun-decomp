/* Cluster Func_80b7eb4..Func_80b7eb4 extracted from goldensun/asm/rom_b5000/rom_b7410.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_a.o and asm/rom_b5000/rom_b7410_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e74;

unsigned int Func_80b7eb4(unsigned int arg0, unsigned int *arg1) {
    unsigned int r4;
    unsigned int r2;
    unsigned int r3;

    r4 = iwram_3001e74;
    r2 = arg0 * 0x2c;
    r3 = r2 + 0x80;
    r3 = *(unsigned int *)(r4 + r3);
    *arg1 = r3;
    *(unsigned int *)(arg1 + 1) = 0;
    r2 += 0x84;
    r3 = *(unsigned int *)(r4 + r2);
    *(unsigned int *)(arg1 + 2) = r3;
    return 0;
}
