/* Cluster Func_801c3e8..Func_801c3e8 extracted from goldensun/asm/rom_15000/rom_1aeec_c_a_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1aeec_c_a_a_a_a_a.o and asm/rom_15000/rom_1aeec_c_a_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ebc;
extern void Func_8016418(void *box, int noanim);
extern void Func_8004278(void *task);
extern void Func_801c3e8(void);

void Func_801c3e8(void) {
    unsigned int base;
    unsigned short *counter;

    base = *(unsigned int *)&iwram_3001ebc;
    counter = (unsigned short *)(base + (0x8d << 2));
    *counter = *counter - 1;
    if (*counter == 0) {
        Func_8016418((void *)*(unsigned int *)(base + (0x8c << 2)), 2);
        Func_8004278((void *)Func_801c3e8);
    }
}
