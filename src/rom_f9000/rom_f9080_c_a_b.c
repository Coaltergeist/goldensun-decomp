/* Cluster Func_80f9558..Func_80f9564 extracted from goldensun/asm/rom_f9000/rom_f9080_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_c_a_a.o and asm/rom_f9000/rom_f9080_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void m4aMPlayAllStop(void);

void Func_80f9558(void) {
    m4aMPlayAllStop();
}
extern void m4aMPlayAllContinue(void);

void Func_80f9564(void) {
    m4aMPlayAllContinue();
}
