/* Cluster Func_801eb90..Func_801eb90 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_a_a.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_a_a_a.o and asm/rom_15000/rom_1de5c_c_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern int AllocSpriteSlot(void);
extern int LoadInventoryIcon(unsigned int arg0, unsigned int arg1, unsigned int slot);
extern int Func_801eadc(unsigned int a, unsigned int b, unsigned int c, unsigned int d, unsigned int e);

unsigned int Func_801eb90(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4) {
    unsigned int slot;

    slot = AllocSpriteSlot();
    if (slot == 0x60)
        return 0;
    LoadInventoryIcon(arg0, arg1, slot);
    return Func_801eadc(slot, 0x80 << 23, arg2, arg3, arg4);
}
