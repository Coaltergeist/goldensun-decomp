// fakematch
/* Cluster Func_80dbb9c..Func_80dbb9c extracted from goldensun/asm/rom_c9000/rom_dbb24_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_dbb24_c_a.o and asm/rom_c9000/rom_dbb24_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001eec[];

void Func_80dbb9c(void) {
    unsigned int r4 = *(unsigned int *)iwram_3001eec;
    volatile unsigned short *reg = (volatile unsigned short *)0x040000B0;
    volatile unsigned int *dma = (volatile unsigned int *)0x040000B0;
    reg[5] = reg[5] & 0xc5ff;
    reg[5] = reg[5] & 0x7fff;
    {
        unsigned short scratch = reg[5];
        register unsigned int s asm("r0") = r4 + (0xd3 << 7);
        register unsigned int d asm("r1") = 0x04000028;
        register unsigned int c asm("r2") = 0xa6600001;
        register volatile unsigned int *p asm("r3") = dma;
        (void)scratch;
        asm volatile("stmia %0!, {%1, %2, %3}\n\tsub %0, #0xc"
                     : "+r"(p) : "r"(s), "r"(d), "r"(c) : "memory");
    }
}
