/* Cluster Func_80a2490..Func_80a2490 extracted from goldensun/asm/rom_a1000/rom_a1814_c_a_c_c_a_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_c_c_a_c_a_c_a.o and asm/rom_a1000/rom_a1814_c_a_c_c_a_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *Func_80a2444;
extern void StopTask(void *task);

void Func_80a2490(void) {
    int r0;
    r0 = _GetFlag(0xa8 << 1);
    if (r0 == 0) {
        StopTask(&Func_80a2444);
    }
}
