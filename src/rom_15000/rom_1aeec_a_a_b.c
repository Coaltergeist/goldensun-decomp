/* Cluster Func_801b1ec..Func_801b1ec extracted from goldensun/asm/rom_15000/rom_1aeec_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1aeec_a_a_a.o and asm/rom_15000/rom_1aeec_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e98;

void Func_801b1ec(unsigned int arg0, unsigned int arg1)
{
    unsigned char *base;
    unsigned char *p;
    base = (unsigned char *)iwram_3001e98;
    *(unsigned short *)(base + 0x396) = arg0;
    *(unsigned short *)(base + 0x398) = arg1;
    p = *(unsigned char **)(base + 0x348);
    while (p != (unsigned char *)0) {
        *(unsigned short *)(p + 0x10) = arg0;
        *(unsigned short *)(p + 0x18) = arg0;
        *(unsigned short *)(p + 0x12) = arg1;
        *(unsigned short *)(p + 0x1a) = arg1;
        p = *(unsigned char **)(p + 4);
        arg0 += 0x10;
    }
}
