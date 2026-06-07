/* Cluster Func_80f37ec..Func_80f37ec extracted from goldensun/asm/rom_f2000/rom_f2028_c_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f2000/rom_f2028_c_c_a_a.o and asm/rom_f2000/rom_f2028_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void StopTask(void *task);
extern void Func_8002dd8(int index);
extern void Func_80f2f10(void);

void Func_80f37ec(void) {
    StopTask(Func_80f2f10);
    Func_8002dd8(0x20);
}
