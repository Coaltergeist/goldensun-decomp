/* Cluster Func_800c47c..Func_800c47c extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_c_a_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_c_a_c_a.o and asm/rom_9000/rom_c004_c_a_a_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L135a8[] __asm__(".L135a8");
extern void Func_800c2d8(int actor, unsigned char *script);

void Func_800c47c(int actor) {
    Func_800c2d8(actor, L135a8);
}
