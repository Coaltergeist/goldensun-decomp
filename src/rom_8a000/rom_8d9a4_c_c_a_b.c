/* Cluster Func_808feb0..Func_808feb0 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_c_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_c_a_a.o and asm/rom_8a000/rom_8d9a4_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80042c8(void (*)(void));
extern void Task_ScreenWindowTransition(void);
extern void Func_808f498(void);

void Func_808feb0(void) {
    Func_80042c8(Task_ScreenWindowTransition);
    Func_80042c8(Func_808f498);
}
