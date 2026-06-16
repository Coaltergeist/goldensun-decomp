/* Cluster Func_80a2474..Func_80a2474 extracted from goldensun/asm/rom_a1000/rom_a1814_c_a_c_c_a_c_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_c_c_a_c_a_a.o and asm/rom_a1000/rom_a1814_c_a_c_c_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void _ClearFlag(int);
extern void StartTask(void *, int);
extern void Func_80a2444(void);

void Func_80a2474(void) {
    int priority;
    _ClearFlag(0xa8 << 1);
    priority = 0xc8 << 4;
    StartTask(Func_80a2444, priority);
}
