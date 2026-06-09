/* Cluster MapActor_GetName..MapActor_GetName extracted from goldensun/asm/rom_8a000/rom_91584_a_c_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_a_c_a_a.o and asm/rom_8a000/rom_91584_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int MapActor_GetSpriteID(void);
extern unsigned int GetSpriteVoiceEntry(void);

unsigned int MapActor_GetName(void) {
    MapActor_GetSpriteID();
    return *(unsigned char *)(GetSpriteVoiceEntry() + 3);
}
