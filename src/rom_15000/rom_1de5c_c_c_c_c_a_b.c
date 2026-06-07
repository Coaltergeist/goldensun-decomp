/* Cluster Func_801fd84..Func_801fd84 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_c_a_a.o and asm/rom_15000/rom_1de5c_c_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_801fd34(void);
extern void StartTask(void (*task)(void), int priority);

void Func_801fd84(void) {
    int priority;
    priority = 0xc8 << 4;
    StartTask(Func_801fd34, priority);
}
