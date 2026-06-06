/* Cluster Func_809592c..Func_809592c extracted from goldensun/asm/rom_8a000/rom_944ec_a_c_a_a.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_c_a_a_a.o and asm/rom_8a000/rom_944ec_a_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
void Func_809592c(unsigned int arg0) {
    unsigned short val;
    val = *((unsigned short *)((char *)arg0 + 6));
    val += 0x2000;
    *((unsigned short *)((char *)arg0 + 6)) = val;
}
