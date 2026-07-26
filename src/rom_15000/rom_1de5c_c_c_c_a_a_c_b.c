/* Cluster Func_801ec24..Func_801ec24 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_a_a_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_a_a_c_a.o and asm/rom_15000/rom_1de5c_c_c_c_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
int AllocSpriteSlot(void);
int LoadUIBanner(unsigned int, unsigned int, unsigned int);
int Func_801eadc(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

int Func_801ec24(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
	int slot;
	int ret;

	slot = AllocSpriteSlot();
	ret = 0;
	if (slot != 0x60) {
		LoadUIBanner(arg0, 0, slot);
		ret = Func_801eadc(slot, 0x40000000, arg1, arg2, arg3);
	}
	return ret;
}
