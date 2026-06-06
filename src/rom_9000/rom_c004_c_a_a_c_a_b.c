/* Cluster Func_800c46c..Func_800c46c extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_c_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_c_a_a.o and asm/rom_9000/rom_c004_c_a_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L13590[] __asm__(".L13590");
extern void Func_800c2d8(unsigned int actor, unsigned char *script);

void Func_800c46c(unsigned int actor) {
    Func_800c2d8(actor, L13590);
}
