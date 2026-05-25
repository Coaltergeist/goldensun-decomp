/* Cluster Func_800ca44..Func_800ca58 extracted from goldensun/asm/rom_9000/rom_ca2c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_ca2c_a.o and asm/rom_9000/rom_ca2c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_800ca44(unsigned int arg0) {
    unsigned char *ptr;
    ptr = (unsigned char *)arg0;
    ptr[0x54] = 0;
    *(unsigned short *)(ptr + 4) += 1;
    return 1;
}
unsigned int Func_800ca58(unsigned int arg0) {
    unsigned char *ptr;
    ptr = (unsigned char *)arg0;
    ptr[0x54] = 1;
    *(unsigned short *)(ptr + 4) += 1;
    return 1;
}
