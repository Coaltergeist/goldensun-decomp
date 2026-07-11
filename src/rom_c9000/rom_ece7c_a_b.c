/* Cluster Anim_Thrash..Anim_Thrash extracted from goldensun/asm/rom_c9000/rom_ece7c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ece7c_a_a.o and asm/rom_c9000/rom_ece7c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void _Func_80b82c4(int, int, int, int);
extern void WaitFrames(int);
extern void BaseAnim_Nova(void *, int);

void Anim_Thrash(unsigned char *r5)
{
  int r3;
  r3 = 0x24;
  _Func_80b82c4(*(int *)(r5 + 8), *(short *)(r5 + r3), 0x18, 0xc3333);
  WaitFrames(0x1d);
  *(int *)(r5 + 0x18) = 4;
  BaseAnim_Nova(r5, 2);
}
