/* Cluster Func_80051d8..Func_80051d8 extracted from goldensun/asm/rom_c0/rom_49a8_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_49a8_c_c_c_a.o and asm/rom_c0/rom_49a8_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_8004fe4(int *a, int *b, int *dest);
extern int Data_8000ac0;

void Func_80051d8(int *a, int *b) {
    Func_8004fe4(a, b, &Data_8000ac0);
}
