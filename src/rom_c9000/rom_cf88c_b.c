/* Cluster Func_80cf88c..Func_80cf88c extracted from goldensun/asm/rom_c9000/rom_cf88c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_cf88c_a.o and asm/rom_c9000/rom_cf88c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80cf8e0(void *context, int subanim);

void Func_80cf88c(void *context) {
    Func_80cf8e0(context, 4);
}
