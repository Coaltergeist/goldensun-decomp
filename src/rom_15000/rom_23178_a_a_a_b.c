/* Cluster Func_802899c..Func_802899c extracted from goldensun/asm/rom_15000/rom_23178_a_a_a.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_23178_a_a_a_a.o and asm/rom_15000/rom_23178_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_801c2d0(void);
extern void Func_80284dc(void);
extern void AddMenuBarOption(unsigned int option);
extern void Func_8028808(unsigned int arg0, unsigned int arg1, unsigned int arg2);
extern unsigned int Func_80286a0(unsigned int arg0, unsigned int arg1);
extern void Func_802851c(void);
extern void Func_801c2e4(void);

unsigned int Func_802899c(unsigned int r0, unsigned int r1)
{
    unsigned int r5;

    r5 = r0;
    Func_801c2d0();
    Func_80284dc();
    AddMenuBarOption(1);
    AddMenuBarOption(0xf);
    AddMenuBarOption(2);
    AddMenuBarOption(7);
    Func_8028808(0x11, 7, 0);
    r1 = Func_80286a0(r5, r1 - 1);
    Func_802851c();
    Func_801c2e4();
    return r1;
}
