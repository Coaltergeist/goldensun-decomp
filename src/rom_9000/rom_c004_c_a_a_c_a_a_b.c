/* Cluster Func_800c454..Func_800c454 extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_c_a_a_a.o and asm/rom_9000/rom_c004_c_a_a_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Actor_SetScript(unsigned char *actor, unsigned char *script);
extern unsigned char L13608[] __asm__(".L13608");

void Func_800c454(unsigned char *actor, unsigned char *other) {
    Actor_SetScript(actor, L13608);
    *(unsigned char **)(actor + 0x68) = other;
}
