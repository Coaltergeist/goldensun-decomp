/* Cluster Func_808bc9c..Func_808bc9c extracted from goldensun/asm/rom_8a000/rom_8ba38_a_a.s.
 *
 * Total .text for this TU = 136 bytes (= 0x88).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ba38_a_a_a.o and asm/rom_8a000/rom_8ba38_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ebc[];

int Func_808bc9c(void)
{
    unsigned int r1;

    r1 = *(unsigned int *)iwram_3001ebc;
    return *(short *)((char *)r1 + 0xb6 * 2) +
           *(short *)((char *)r1 + 0xb7 * 2) +
           *(short *)((char *)r1 + 0xb8 * 2) +
           *(short *)((char *)r1 + 0xb9 * 2) +
           *(short *)((char *)r1 + 0xba * 2) +
           *(short *)((char *)r1 + 0xbb * 2) +
           *(short *)((char *)r1 + 0xbc * 2) +
           *(short *)((char *)r1 + 0xbd * 2) +
           *(short *)((char *)r1 + 0xbc * 2) +
           *(short *)((char *)r1 + 0xbe * 2) +
           *(short *)((char *)r1 + 0xbf * 2) +
           *(short *)((char *)r1 + 0xc0 * 2) +
           *(short *)((char *)r1 + 0xc1 * 2);
}
