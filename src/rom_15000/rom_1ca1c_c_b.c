/* Cluster Func_801d0f0..Func_801d0f0 extracted from goldensun/asm/rom_15000/rom_1ca1c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1ca1c_c_a.o and asm/rom_15000/rom_1ca1c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_8004278(void *task);
extern void Func_8002dd8(int index);
extern void Func_801cf48(void);

void Func_801d0f0(void) {
    Func_8004278(Func_801cf48);
    Func_8002dd8(0x14);
}
