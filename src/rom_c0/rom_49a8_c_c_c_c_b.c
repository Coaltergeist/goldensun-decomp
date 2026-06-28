/* Cluster MatrixLook..MatrixLook extracted from goldensun/asm/rom_c0/rom_49a8_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_49a8_c_c_c_c_a.o and asm/rom_c0/rom_49a8_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void MakeLookMatrix(void *a, void *b, void *dest);
extern void Func_8000a30(void *);

void MatrixLook(void *a, void *b)
{
    int buf[12];
    void (*r3)(void *);
    MakeLookMatrix(a, b, buf);
    r3 = Func_8000a30;
    r3(buf);
}
