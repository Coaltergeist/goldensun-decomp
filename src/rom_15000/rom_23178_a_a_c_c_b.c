/* Cluster LuckyFountainMenu..LuckyFountainMenu extracted from goldensun/asm/rom_15000/rom_23178_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_23178_a_a_c_c_a.o and asm/rom_15000/rom_23178_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80284dc(void);
extern void AddMenuBarOption(unsigned int option);
extern void Func_8028808(unsigned int a, unsigned int b, unsigned int c);
extern unsigned int Func_8028574(unsigned int a);
extern void Func_802851c(void);

unsigned int LuckyFountainMenu(unsigned int arg0)
{
    unsigned int r5;

    Func_80284dc();
    AddMenuBarOption(0x20);
    AddMenuBarOption(0x21);
    Func_8028808(0x11, 9, 0);
    r5 = Func_8028574(arg0);
    Func_802851c();
    return r5;
}
