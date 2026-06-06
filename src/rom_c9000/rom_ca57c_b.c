/* Cluster Func_80ca57c..Func_80ca57c extracted from goldensun/asm/rom_c9000/rom_ca57c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ca57c_a.o and asm/rom_c9000/rom_ca57c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80ca60c(void *context, int subanim);

void Func_80ca57c(void *context) {
    Func_80ca60c(context, 6);
}
