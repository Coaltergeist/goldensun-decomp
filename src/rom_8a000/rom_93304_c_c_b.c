/* Cluster Player_EnterStairsDown..Player_EnterStairsDown extracted from goldensun/asm/rom_8a000/rom_93304_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_c_c_a.o and asm/rom_8a000/rom_93304_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_942e0(unsigned int anim);
extern void _SetFlag(int x);

void Player_EnterStairsDown(void) {
    Func_942e0(0x19);
    _SetFlag(0x121);
}
