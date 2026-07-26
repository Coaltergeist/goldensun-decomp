/* Cluster Func_80ae958..Func_80ae958 extracted from goldensun/asm/rom_a1000/rom_ae88c_c_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_ae88c_c_c_a.o and asm/rom_a1000/rom_ae88c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int AllocSpriteSlot(void);
extern void Func_80ae908(unsigned int, unsigned int);
extern unsigned int _Func_801eadc(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

unsigned int Func_80ae958(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
	unsigned int slot;

	slot = AllocSpriteSlot();
	if (slot == 0x60)
		return;
	Func_80ae908(arg3, slot);
	return _Func_801eadc(slot, 0x40000000, arg0, arg1, arg2);
}
