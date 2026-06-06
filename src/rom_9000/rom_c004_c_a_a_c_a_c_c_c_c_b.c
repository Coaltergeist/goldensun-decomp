/* Cluster Func_800c4ac..Func_800c4ac extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_c_a_c_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_c_a_c_c_c_c_a.o and asm/rom_9000/rom_c004_c_a_a_c_a_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L13620[] __asm__(".L13620");
extern void Func_800c2d8(void *actor, void *script);

void Func_800c4ac(void *actor) {
    Func_800c2d8(actor, L13620);
}
