/* Cluster GetCachedSpriteGFX..GetCachedSpriteGFX extracted from goldensun/asm/rom_9000/rom_b798.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_b798_a.o and asm/rom_9000/rom_b798_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e68;

unsigned char **GetCachedSpriteGFX(unsigned int spriteID)
{
    unsigned int *base;
    unsigned char *r2;
    unsigned int i;

    base = (unsigned int *)iwram_3001e68;
    r2 = (unsigned char *)base + 0x1c;
    for (i = 0; i <= 7; i++) {
        if (*(unsigned int *)r2 == spriteID)
            return *(unsigned char ***)(r2 + 4);
        r2 += 8;
    }
    return (unsigned char **)0;
}
