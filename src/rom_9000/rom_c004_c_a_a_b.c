/* Cluster Actor_AddSpriteLayer..Actor_AddSpriteLayer extracted from goldensun/asm/rom_9000/rom_c004_c_a_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_a.o and asm/rom_9000/rom_c004_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Sprite_AddLayer(unsigned char *sprite, int spriteID);

void Actor_AddSpriteLayer(unsigned char *actor, int spriteID) {
    if (actor != (unsigned char *)0 && (*(unsigned char *)(actor + 0x54) & 0xf) == 1) {
        unsigned char *p = *(unsigned char **)(actor + 0x50);
        if (spriteID >= 0)
            Sprite_AddLayer(p, spriteID);
    }
}
