/* Cluster MatrixSetLook..MatrixSetLook extracted from goldensun/asm/rom_c0/rom_49a8_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_49a8_c_c_c_a.o and asm/rom_c0/rom_49a8_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void MakeLookMatrix(int *a, int *b, int *dest);
extern int Data_8000ac0;

void MatrixSetLook(int *a, int *b) {
    MakeLookMatrix(a, b, &Data_8000ac0);
}
