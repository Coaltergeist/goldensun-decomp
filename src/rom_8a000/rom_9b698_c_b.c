/* Cluster Func_809ba7c..Func_809ba7c extracted from goldensun/asm/rom_8a000/rom_9b698_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9b698_c_a.o and asm/rom_8a000/rom_9b698_c_c.o in
 * goldensun/stage1.ld.
 */
void Func_809ba7c(unsigned int arg0, unsigned int arg1) {
    unsigned int r3 = 0;
    unsigned int r2 = 0;
    *(unsigned int *)(arg0 + 0x34) = arg1;
    *(unsigned short *)(arg0 + 0x3a) = r3;
    *(unsigned short *)(arg0 + 0x38) = r3;
    arg0 += 0x40;
    *(unsigned char *)arg0 = r2;
}
