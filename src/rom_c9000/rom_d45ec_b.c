/* Cluster Func_80d45ec..Func_80d45ec extracted from goldensun/asm/rom_c9000/rom_d45ec.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d45ec_a.o and asm/rom_c9000/rom_d45ec_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80d4604(void *context, int subanim);

void Func_80d45ec(void *context) {
    Func_80d4604(context, 0);
}
