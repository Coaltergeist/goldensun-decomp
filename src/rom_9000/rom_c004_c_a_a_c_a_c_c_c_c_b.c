/* Cluster Actor_Stop..Actor_Stop extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_c_a_c_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_c_a_c_c_c_c_a.o and asm/rom_9000/rom_c004_c_a_a_c_a_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L13620[] __asm__(".L13620");
extern void Actor_SetScript(void *actor, void *script);

void Actor_Stop(void *actor) {
    Actor_SetScript(actor, L13620);
}
