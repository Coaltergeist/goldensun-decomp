/* Cluster Debug_StartGame..Debug_StartGame extracted from goldensun/asm/rom_77000/rom_77320_a_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_77320_a_a_a.o and asm/rom_77000/rom_77320_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void GameInit(void);
extern void _GameStart(int);

void Debug_StartGame(void)
{
	GameInit();
	_GameStart(0);
}
