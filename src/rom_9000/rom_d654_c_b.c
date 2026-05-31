/* Cluster Func_800d8f4..Func_800d8f4 extracted from goldensun/asm/rom_9000/rom_d654_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_c_a.o and asm/rom_9000/rom_d654_c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_800d8f4(unsigned int arg0) {
    unsigned char *ptr;
    ptr = (unsigned char *)arg0;
    *(unsigned short *)(ptr + 4) += 2;
    return 1;
}
