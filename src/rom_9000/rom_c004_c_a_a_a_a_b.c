/* Cluster Actor_SetAnim..Actor_SetAnim extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_a_a_a.o and asm/rom_9000/rom_c004_c_a_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Sprite_SetAnim(unsigned int sprite, unsigned int animID);

void Actor_SetAnim(unsigned char *p, unsigned int animID) {
    unsigned int v;
    unsigned int *q;
    int i;

    if (p == (unsigned char *)0)
        return;

    switch (*(unsigned char *)(p + 0x54) & 0xf) {
    case 1:
        Sprite_SetAnim(*(unsigned int *)(p + 0x50), animID);
        break;
    case 2:
        q = *(unsigned int **)(p + 0x50);
        for (i = 3; i >= 0; i--) {
            v = *q++;
            if (v != 0)
                Sprite_SetAnim(v, animID);
        }
        break;
    }
}
