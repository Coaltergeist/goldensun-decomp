/* Cluster InitSoundEngine..InitSoundEngine extracted from goldensun/asm/rom_f9000/rom_f9080_a_a.s.
 *
 * Total .text for this TU = 144 bytes (= 0x90).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_a_a_a.o and asm/rom_f9000/rom_f9080_a_a_c.o in
 * goldensun/stage1.ld.
 */
/* Phase 5 (SAPPY_IMPORT_PLAN); Camelot prefix: reset the music-driver state.
 * Func_80fa2a0 = m4aSoundInit. Stores follow ROM order; the 0x100/4/0
 * constants are CSE'd into the literal pool by gcc-2.96.
 */
extern void m4aSoundInit(void);
extern unsigned char ewram_200303c;
extern unsigned char ewram_2003000;
extern unsigned short gMusicVolume;
extern unsigned short gMusicCurVolume;
extern unsigned short gMusicVolumeDelta;
extern unsigned short gMusicSpeed;
extern unsigned short gMusicCurSpeed;
extern unsigned short gMusicSpeedDelta;
extern unsigned char ewram_2003014;
extern unsigned char ewram_2003040;
extern unsigned char ewram_2003004;
extern unsigned short ewram_2003020[];

void InitSoundEngine(void) {
    int i;

    m4aSoundInit();
    ewram_200303c = 0xff;
    ewram_2003000 = 0;
    gMusicVolume = 0x100;
    gMusicCurVolume = 0x100;
    gMusicVolumeDelta = 4;
    gMusicSpeed = 0x100;
    gMusicCurSpeed = 0x100;
    gMusicSpeedDelta = 4;
    ewram_2003014 = 0;
    ewram_2003040 = 0;
    ewram_2003004 = 0;
    for (i = 0; i < 8; i++)
        ewram_2003020[i] = 0;
}
