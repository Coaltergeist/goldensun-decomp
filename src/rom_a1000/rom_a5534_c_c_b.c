/* Cluster Func_80a6874..Func_80a6874 extracted from goldensun/asm/rom_a1000/rom_a5534_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a5534_c_c_a.o and asm/rom_a1000/rom_a5534_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern void Func_80a195c(void);
extern void _CloseUIBox(unsigned int, unsigned int);

void Func_80a6874(void)
{
    unsigned int r5;
    unsigned int r3;

    r5 = *(unsigned int *)iwram_3001f2c;
    Func_80a195c();
    _CloseUIBox(*(unsigned int *)(r5 + 0x10), 1);
    _CloseUIBox(*(unsigned int *)(r5 + 0x20), 1);
    r3 = 0x86;
    r3 <<= 1;
    r5 += r3;
    _CloseUIBox(*(unsigned int *)r5, 1);
}
