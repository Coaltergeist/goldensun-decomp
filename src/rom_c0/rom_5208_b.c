/* Cluster Func_8005258..Func_8005258 extracted from goldensun/rom_c0/src/rom_5208.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * rom_c0/src/rom_5208_a.o and rom_c0/src/rom_5208_c.o in
 * goldensun/stage1.ld.
 *
 * iwram_3001ce0 is a 3-element fx32 vector (the physics-state position per
 * FF's SetPhysVec name). The earlier `(char *)&iwram_3001ce0 + N` cast form
 * worked under gcc-3.0 but triggered gcc-2.96's STMIA peephole on the
 * three consecutive stores; array indexing matches under both compilers.
 */
extern unsigned int iwram_3001ce0[];

/* FF: void SetPhysVec(fx32 x, fx32 y, fx32 z) */
void Func_8005258(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    iwram_3001ce0[0] = arg0;
    iwram_3001ce0[1] = arg1;
    iwram_3001ce0[2] = arg2;
}
