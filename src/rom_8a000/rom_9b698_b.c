/* Cluster Func_9ba5c..Func_9ba5c extracted from goldensun/asm/rom_8a000/rom_9b698.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9b698_a.o and asm/rom_8a000/rom_9b698_c.o in
 * goldensun/stage1.ld.
 */
void Func_9ba5c(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int v3;
    v3 = 0x80 << 24;
    *(unsigned int *)(arg0 + 12) = v3;
    *(unsigned int *)(arg0 + 16) = v3;
    *(unsigned int *)(arg0 + 4) = arg1;
    *(unsigned int *)(arg0 + 8) = arg2;
    *(unsigned int *)(arg0 + 28) = 0;
}
