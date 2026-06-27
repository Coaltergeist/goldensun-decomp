/* Cluster Func_80a1050..Func_80a1050 extracted from goldensun/asm/rom_a1000/rom_a1050_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1050_a_a.o and asm/rom_a1000/rom_a1050_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80043e0(void);
extern void _Func_80119a8(void);
extern void _ClearFlag(int);

unsigned int Func_80a1050(void) {
    Func_80043e0();
    _Func_80119a8();
    _ClearFlag(0xb3 << 1);
    _ClearFlag(0xa9 << 1);
}
