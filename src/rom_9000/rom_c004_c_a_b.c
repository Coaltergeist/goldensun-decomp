/* Cluster Func_800c528..Func_800c528 extracted from goldensun/asm/rom_9000/rom_c004_c_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a.o and asm/rom_9000/rom_c004_c_a_c.o in
 * goldensun/stage1.ld.
 */
void Func_800c528(unsigned char *actor, unsigned int flags) {
    if (actor != (unsigned char *)0 && (*(unsigned char *)(actor + 0x54) & 0xf) == 1) {
        unsigned char *p = *(unsigned char **)(actor + 0x50);
        *(unsigned char *)(p + 0x26) = flags;
    }
}
