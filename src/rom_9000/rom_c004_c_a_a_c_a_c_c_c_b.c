/* Cluster Func_800c49c..Func_800c49c extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_c_a_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_c_a_c_c_c_a.o and asm/rom_9000/rom_c004_c_a_a_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L135d8[] __asm__(".L135d8");
extern void Actor_SetScript(unsigned char *actor, unsigned char *script);

void Func_800c49c(unsigned char *actor) {
    Actor_SetScript(actor, L135d8);
}
