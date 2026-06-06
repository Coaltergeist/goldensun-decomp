/* Cluster Func_80d244c..Func_80d244c extracted from goldensun/asm/rom_c9000/rom_d244c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d244c_a.o and asm/rom_c9000/rom_d244c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80d2464(void *context, int subanim);

void Func_80d244c(void *context) {
    Func_80d2464(context, 1);
}
