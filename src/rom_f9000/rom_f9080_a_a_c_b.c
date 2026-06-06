/* Cluster Func_80f94c8..Func_80f94c8 extracted from goldensun/asm/rom_f9000/rom_f9080_a_a_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_a_a_c_a.o and asm/rom_f9000/rom_f9080_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
/* Phase 5 (SAPPY_IMPORT_PLAN) — Camelot prefix wrapper.
 * BGM tempo control: Func_80fb2a4 = m4aMPlayTempoControl(MP2KPlayerState*, u16).
 */
extern void Func_80fb2a4(void *mplayInfo, unsigned short tempo);
extern void *ewram_2004290;

void Func_80f94c8(unsigned short tempo) {
    Func_80fb2a4(&ewram_2004290, tempo);
}
