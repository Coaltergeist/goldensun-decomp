/* Cluster Func_801eddc..Func_801eddc extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_a.o and asm/rom_15000/rom_1de5c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
void Func_801eddc(unsigned int arg0, unsigned int arg1) {
    if (arg0 != 0) {
        *(unsigned char *)(arg0 + 0xf) = ~arg1;
    }
}
