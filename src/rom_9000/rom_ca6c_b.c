/* Cluster Func_d130..Func_d130 extracted from goldensun/asm/rom_9000/rom_ca6c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_ca6c_a.o and asm/rom_9000/rom_ca6c_c.o in
 * goldensun/stage1.ld.
 */
void Func_d130(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
    unsigned int val;
    *(unsigned int *)(arg0 + 0x10) = arg3;
    val = 0x80 << 24;
    *(unsigned int *)(arg0 + 0x38) = val;
    *(unsigned int *)(arg0 + 0x3c) = val;
    *(unsigned int *)(arg0 + 0x40) = val;
    *(unsigned int *)(arg0 + 8) = arg1;
    *(unsigned int *)(arg0 + 0xc) = arg2;
    *(unsigned int *)(arg0 + 0x24) = 0;
    *(unsigned int *)(arg0 + 0x28) = 0;
    *(unsigned int *)(arg0 + 0x2c) = 0;
}
