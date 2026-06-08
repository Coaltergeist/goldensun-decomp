/* Cluster Func_80911e8..Func_80911e8 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_c_c_a_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_c_c_a_a_a.o and asm/rom_8a000/rom_8d9a4_c_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void StopTask(void *task);
extern void gfree(int index);
extern void Func_80908e0(void);

void Func_80911e8(void) {
    StopTask(Func_80908e0);
    gfree(0x20);
}
