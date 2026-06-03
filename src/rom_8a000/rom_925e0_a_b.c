/* Cluster Func_8092924..Func_8092924 extracted from goldensun/asm/rom_8a000/rom_925e0_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_925e0_a_a.o and asm/rom_8a000/rom_925e0_a_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_808ba1c(int actorID);
extern void _Func_800c0f4(void);
extern unsigned int iwram_3001ebc;

void Func_8092924(int actorID) {
    int res;
    unsigned char *base;
    int off;

    res = Func_808ba1c(actorID);
    base = (unsigned char *)iwram_3001ebc;
    if (res != 0) {
        _Func_800c0f4();
        off = (actorID << 2) + 0x14;
        *(unsigned int *)(base + off) = 0;
    }
}
