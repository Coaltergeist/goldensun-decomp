/* Cluster GetSoundReverbType..GetSoundReverbType extracted from goldensun/asm/rom_f9000/rom_f9080_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_c_c_c_a.o and asm/rom_f9000/rom_f9080_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
/* Phase 5 (SAPPY_IMPORT_PLAN) — Camelot prefix helper.
 * Maps song ids 0x46/0x4b/0x43 -> sfx mode 3, everything else -> 2.
 * (Identical logic to the inline block at PlaySound+0xe4.)
 */

int GetSoundReverbType(int songId) {
    if (songId == 0x46 || songId == 0x4b || songId == 0x43)
        return 3;
    return 2;
}
