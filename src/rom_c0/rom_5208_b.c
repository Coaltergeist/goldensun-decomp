/* Cluster Func_5258..Func_5258 extracted from goldensun/rom_c0/src/rom_5208.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * rom_c0/src/rom_5208_a.o and rom_c0/src/rom_5208_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_1ce0;

/* FF: void SetPhysVec(fx32 x, fx32 y, fx32 z) */
void Func_5258(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    iwram_1ce0 = arg0;
    *(unsigned int *)((char *)&iwram_1ce0 + 4) = arg1;
    *(unsigned int *)((char *)&iwram_1ce0 + 8) = arg2;
}
