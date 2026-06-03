/* Cluster Func_800c408..Func_800c408 extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_a_a.o and asm/rom_9000/rom_c004_c_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_800b7c0(unsigned char *sprite);

void Func_800c408(unsigned char *actor, int spriteID) {
    if (actor != (unsigned char *)0 && (*(unsigned char *)(actor + 0x54) & 0xf) == 1) {
        unsigned char *p = *(unsigned char **)(actor + 0x50);
        if (spriteID >= 0) {
            *(unsigned short *)(*(unsigned char **)(p + 0x28)) = spriteID;
            Func_800b7c0(p);
        }
    }
}
