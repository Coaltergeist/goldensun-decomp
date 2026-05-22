/* Cluster Func_a1070..Func_a1070 extracted from goldensun/rom_a1000/src/rom_a1050.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * rom_a1000/src/rom_a1050_a.o and rom_a1000/src/rom_a1050_c.o in
 * goldensun/stage1.ld.
 */
extern void _Func_79358(unsigned int);
extern void _Func_11984(void);
extern unsigned int Func_430c(void);

unsigned int Func_a1070(void) {
    _Func_79358(0xa9 << 1);
    _Func_79358(0xb3 << 1);
    _Func_11984();
    return Func_430c();
}
