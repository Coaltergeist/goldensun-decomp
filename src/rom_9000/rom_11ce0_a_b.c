/* Cluster Func_11ce0..Func_11ce0 extracted from goldensun/rom_9000/src/rom_11ce0_a.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * rom_9000/src/rom_11ce0_a_a.o and rom_9000/src/rom_11ce0_a_c.o in
 * goldensun/stage1.ld.
 */
/* FF: int HeightTile_0(char * param_1) */
unsigned int Func_11ce0(unsigned char *arg0) {
    return (*arg0 << 24) >> 24 << 19;
}
