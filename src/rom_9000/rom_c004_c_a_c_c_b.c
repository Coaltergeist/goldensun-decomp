/* Cluster Func_800c5fc..Func_800c5fc extracted from goldensun/asm/rom_9000/rom_c004_c_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_c_c_a.o and asm/rom_9000/rom_c004_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_800439c(void *);
extern void Func_800c62c(void);
extern void Func_800c880(void);

void Func_800c5fc(void)
{
    unsigned short r2;
    unsigned int r3;
    unsigned short *r1;

    Func_800439c(Func_800c62c);
    Func_800439c(Func_800c880);
    r1 = (unsigned short *)(0x80u << 19);
    r2 = *r1;
    r3 = 0xe1ff;
    r3 = r3 & r2;
    *r1 = r3;
}
