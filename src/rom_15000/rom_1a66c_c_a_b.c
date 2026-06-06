/* Cluster Func_801a968..Func_801a968 extracted from goldensun/asm/rom_15000/rom_1a66c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1a66c_c_a_a.o and asm/rom_15000/rom_1a66c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_80041d8(void *task, int priority);
extern void Func_801a98c(void);

void Func_801a968(void) {
    Func_80041d8(Func_801a98c, 200 << 4);
}
