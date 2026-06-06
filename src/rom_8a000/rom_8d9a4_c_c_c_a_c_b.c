/* Cluster Func_80912a8..Func_80912a8 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_c_c_a_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_c_c_a_c_a.o and asm/rom_8a000/rom_8d9a4_c_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
int Func_80912a8(int arg0) {
    int limit;

    limit = 0xf8 << 7;
    if (arg0 > limit)
        arg0 = limit;
    return arg0;
}
