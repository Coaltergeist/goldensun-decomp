/* Cluster Func_801fd98..Func_801fd98 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_c_a.o and asm/rom_15000/rom_1de5c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void StopTask(void *task);
extern void Func_801fd34(void);

void Func_801fd98(void) {
    StopTask(Func_801fd34);
}
