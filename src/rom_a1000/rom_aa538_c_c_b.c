/* Cluster Func_80ab2ec..Func_80ab2ec extracted from goldensun/asm/rom_a1000/rom_aa538_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_aa538_c_c_a.o and asm/rom_a1000/rom_aa538_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80ab21c(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80ab2ec(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4, unsigned int arg5)
{
    unsigned int r4;
    unsigned int r5;
    unsigned int r6;
    r4 = arg0;
    r5 = arg5;
    r6 = arg3;
    Func_80ab21c(
        *(unsigned short *)((char *)r4 + 0xc) + arg1 + 1,
        *(unsigned short *)((char *)r4 + 0xe) + arg2 + 1,
        r6,
        arg4,
        r5
    );
}
