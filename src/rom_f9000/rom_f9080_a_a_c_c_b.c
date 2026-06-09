/* Cluster SetMusicPitch..SetMusicPitch extracted from goldensun/asm/rom_f9000/rom_f9080_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_a_a_c_c_a.o and asm/rom_f9000/rom_f9080_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
/* Phase 5 (SAPPY_IMPORT_PLAN) — Camelot prefix wrapper.
 * BGM pitch control: m4aMPlayPitchControl = m4aMPlayPitchControl(MP2KPlayerState*, u16 trackBits, s16 pitch).
 * trackBits = 0xff (all tracks). Param is int + (short) cast at the call site
 * (matches the ROM's lsl/ldr/asr scheduling; a plain short param does not).
 */
extern void m4aMPlayPitchControl(void *mplayInfo, unsigned short trackBits, short pitch);
extern void *gMPlayInfo_BGM;

void SetMusicPitch(int pitch) {
    m4aMPlayPitchControl(&gMPlayInfo_BGM, 0xff, (short)pitch);
}
