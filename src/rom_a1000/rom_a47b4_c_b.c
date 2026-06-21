/* Cluster Func_80a4e44..Func_80a4e44 extracted from goldensun/asm/rom_a1000/rom_a47b4_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a47b4_c_a.o and asm/rom_a1000/rom_a47b4_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern void Func_80a23f4(int, int, int, int, int);

void Func_80a4e44(void)
{
	unsigned int *r3 = *(unsigned int **)iwram_3001f2c;
	Func_80a23f4(*(int *)((char *)r3 + 0x20), 0xd, 3, 0x11, 0xa);
}
