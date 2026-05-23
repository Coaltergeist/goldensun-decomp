/* Cluster Func_11f3c..Func_11f48 extracted from goldensun/rom_9000/src/rom_11ce0.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * rom_9000/src/rom_11ce0_a.o and rom_9000/src/rom_11ce0_c.o in
 * goldensun/stage1.ld.
 */
/* FF: int HeightTile_E(char * param_1) */
unsigned int Func_11f3c(unsigned int arg0) {
    return ((*(unsigned char *)arg0 << 24) >> 24) << 19;
}
/* FF: int HeightTile_F(char * param_1) */
unsigned int Func_11f48(unsigned char *arg0) {
    unsigned char value = *arg0;
    return (value << 24) >> 24 << 19;
}
