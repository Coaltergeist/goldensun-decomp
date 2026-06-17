/* Cluster Actor_SetColorswap..Actor_SetColorswap extracted from goldensun/asm/rom_9000/rom_c004_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_c_a.o and asm/rom_9000/rom_c004_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Sprite_SetColorswap(void *, int);

void Actor_SetColorswap(void *actor, int colorswap)
{
    unsigned char *p;
    if (actor == 0)
        return;
    p = (unsigned char *)actor;
    if (p[0x54] != 1)
        return;
    Sprite_SetColorswap(*(void **)((unsigned char *)actor + 0x50), colorswap);
}
