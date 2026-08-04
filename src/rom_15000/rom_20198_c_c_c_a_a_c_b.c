/* Cluster Func_8021750..Func_8021750 extracted from goldensun/asm/rom_15000/rom_20198_c_c_c_a_a_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_c_c_a_a_c_a.o and asm/rom_15000/rom_20198_c_c_c_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int AllocSpriteSlot(void);
extern void StartMenu_AddOption(unsigned int icon, unsigned int name, unsigned int unk);
extern unsigned int Func_801eadc(unsigned int name, unsigned int flags, unsigned int arg2, unsigned int arg3, unsigned int arg4);

unsigned int Func_8021750(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4)
{
    unsigned int slot;
    unsigned int ret;

    slot = AllocSpriteSlot();
    ret = 0;
    if (slot != 0x60) {
        StartMenu_AddOption(arg0, slot, arg1);
        ret = Func_801eadc(slot, 0x80000000, arg2, arg3, arg4);
        *(unsigned char *)(ret + 0x15) |= 0x20;
        *(unsigned char *)(ret + 0xf) = 0xfb;
    }
    return ret;
}
