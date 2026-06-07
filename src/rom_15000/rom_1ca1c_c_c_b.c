/* Cluster Func_801d9bc..Func_801d9bc extracted from goldensun/asm/rom_15000/rom_1ca1c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1ca1c_c_c_a.o and asm/rom_15000/rom_1ca1c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_801d94c(void);
extern void StopTask(void *task);
extern void Func_8002dd8(int index);

void Func_801d9bc(void) {
    StopTask(Func_801d94c);
    Func_8002dd8(0x14);
}
