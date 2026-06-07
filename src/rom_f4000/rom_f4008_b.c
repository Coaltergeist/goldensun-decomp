/* Cluster Func_80f40d0..Func_80f40d0 extracted from goldensun/asm/rom_f4000/rom_f4008.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f4000/rom_f4008_a.o and asm/rom_f4000/rom_f4008_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_af0_from_thumb(int a, int b);

short Func_80f40d0(short a, short b) {
    return Func_af0_from_thumb(a << 8, b);
}
