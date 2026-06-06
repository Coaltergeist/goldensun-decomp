/* Cluster Func_80045d4..Func_80045d4 extracted from goldensun/asm/rom_c0/rom_447c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_447c_c_a.o and asm/rom_c0/rom_447c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int _call_via_r3(void);
extern int iwram_30001d8(void);

int Func_80045d4(int x) {
    int (*f)(int) = iwram_30001d8;
    return f(x) << 8;
}
