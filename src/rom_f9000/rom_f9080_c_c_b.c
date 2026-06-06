/* Cluster Func_80f95a0..Func_80f95a0 extracted from goldensun/asm/rom_f9000/rom_f9080_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_c_c_a.o and asm/rom_f9000/rom_f9080_c_c_c.o in
 * goldensun/stage1.ld.
 */
/* Phase 5 (SAPPY_IMPORT_PLAN) — Camelot prefix helper.
 * Spin up to 0x12c frames (Func_80030f8 = WaitFrames/sleep) while the
 * driver-busy flag ewram_2003000 is still set.
 */
extern unsigned char ewram_2003000;
extern void Func_80030f8(int frames);

void Func_80f95a0(void) {
    int i;

    i = 0;
    while (ewram_2003000 != 0) {
        Func_80030f8(1);
        if (++i > 0x12b)
            break;
    }
}
