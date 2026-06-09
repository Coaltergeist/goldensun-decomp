/* Cluster GetBattleActorPos3..GetBattleActorPos3 extracted from goldensun/asm/rom_c9000/rom_e3958_c_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e3958_c_c_a.o and asm/rom_c9000/rom_e3958_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _Func_80b7f20(int unit, int *dest);

void GetBattleActorPos3(int unit, int *dest)
{
	_Func_80b7f20(unit, dest);
	dest[1] -= 0x10;
}
