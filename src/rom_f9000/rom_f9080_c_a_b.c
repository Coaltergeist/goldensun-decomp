/* Cluster PauseSound..ContinueSound extracted from goldensun/asm/rom_f9000/rom_f9080_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_c_a_a.o and asm/rom_f9000/rom_f9080_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void m4aMPlayAllStop(void);

void PauseSound(void) {
    m4aMPlayAllStop();
}
extern void m4aMPlayAllContinue(void);

void ContinueSound(void) {
    m4aMPlayAllContinue();
}
