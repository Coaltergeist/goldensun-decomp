/* Cluster Func_80d8948..Func_80d8948 extracted from goldensun/asm/rom_c9000/rom_d8948.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d8948_a.o and asm/rom_c9000/rom_d8948_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80d89ac(void *context, int subanim);

void Func_80d8948(void *context) {
    Func_80d89ac(context, 0);
}
