/* Cluster SanctumMenu..SanctumMenu extracted from goldensun/asm/rom_15000/rom_23178_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_23178_a_a_c_a.o and asm/rom_15000/rom_23178_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80284dc(void);
extern void AddMenuBarOption(unsigned int option);
extern void Func_8028808(unsigned int arg0, unsigned int arg1, unsigned int arg2);
extern unsigned int Func_8028574(unsigned int arg0);
extern void Func_802851c(void);

unsigned int SanctumMenu(unsigned int r0)
{
    unsigned int r5;

    r5 = r0;
    Func_80284dc();
    AddMenuBarOption(0x19);
    AddMenuBarOption(0x1a);
    AddMenuBarOption(0x1b);
    AddMenuBarOption(0x1c);
    Func_8028808(0x11, 0xa, 0);
    r5 = Func_8028574(r5);
    Func_802851c();
    return r5;
}
