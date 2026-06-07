/* Cluster Func_80f40e8..Func_80f40e8 extracted from goldensun/asm/rom_f4000/rom_f4008_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f4000/rom_f4008_c_a.o and asm/rom_f4000/rom_f4008_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_af0_from_thumb(int a, int b);

short Func_80f40e8(short arg0) {
    return Func_af0_from_thumb(0x80 << 9, arg0);
}
