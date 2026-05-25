/* Cluster Func_800f7dc..Func_800f7dc extracted from goldensun/asm/rom_9000/rom_ebec.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_ebec_a.o and asm/rom_9000/rom_ebec_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_800eaf8(unsigned int);

unsigned int Func_800f7dc(unsigned int arg0) {
    unsigned int r5;
    unsigned short r3;

    r5 = arg0;
    Func_800eaf8(r5);
    r3 = *(unsigned short *)((char *)r5 + 4);
    r3 = r3 + 1;
    *(unsigned short *)((char *)r5 + 4) = r3;
    return 1;
}
