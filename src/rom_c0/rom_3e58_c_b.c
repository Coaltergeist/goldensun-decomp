/* Cluster Func_80040d0..Func_80040d0 extracted from goldensun/asm/rom_c0/rom_3e58_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3e58_c_a.o and asm/rom_c0/rom_3e58_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_8003fa4(int slot, unsigned int size, void *gfx);
extern unsigned short gSpriteSlots[];

int Func_80040d0(unsigned int param_1, void *param_2) {
    return Func_8003fa4(param_1, gSpriteSlots[param_1 << 1], param_2);
}
