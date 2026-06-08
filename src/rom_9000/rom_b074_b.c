/* Cluster Sprite_SetColorswap..Sprite_SetColorswap extracted from goldensun/asm/rom_9000/rom_b074.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_b074_a.o and asm/rom_9000/rom_b074_c.o in
 * goldensun/stage1.ld.
 */
void Sprite_SetColorswap(unsigned char *sprite, int colorswap) {
    unsigned char count;
    unsigned int *p;
    int i;

    if (sprite == (unsigned char *)0)
        return;

    count = sprite[0x27];
    if (count != 0) {
        p = (unsigned int *)(sprite + 0x28);
        for (i = count; i != 0; i--) {
            unsigned int e;
            e = *p++;
            if (*(unsigned char *)((char *)e + 5) != 0xf)
                *(unsigned char *)((char *)e + 5) = colorswap;
        }
    }
    sprite[0x25] = 1;
}
