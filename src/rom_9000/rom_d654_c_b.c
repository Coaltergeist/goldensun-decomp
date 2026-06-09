/* Cluster ActorCmd_Nop..ActorCmd_Nop extracted from goldensun/asm/rom_9000/rom_d654_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_c_a.o and asm/rom_9000/rom_d654_c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int ActorCmd_Nop(unsigned int arg0) {
    unsigned char *ptr;
    ptr = (unsigned char *)arg0;
    *(unsigned short *)(ptr + 4) += 2;
    return 1;
}
