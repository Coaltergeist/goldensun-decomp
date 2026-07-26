/* Cluster Func_8022a38..Func_8022a38 extracted from goldensun/asm/rom_15000/rom_21dfc_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_21dfc_c_a.o and asm/rom_15000/rom_21dfc_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int AllocSpriteSlot(void);
extern int Func_8021b30(unsigned int move, unsigned int arg1);
extern int Func_801eadc(unsigned int a, unsigned int b, unsigned int c, unsigned int d, unsigned int e);

int Func_8022a38(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    unsigned int slot;

    slot = AllocSpriteSlot();
    if (slot != 0x60) {
        Func_8021b30(arg3, slot);
        return Func_801eadc(slot, 0x80 << 23, arg0, arg1, arg2);
    }
}
