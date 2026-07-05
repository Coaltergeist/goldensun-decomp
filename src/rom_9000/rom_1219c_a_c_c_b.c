/* Cluster SpriteTest_ChangeVar..SpriteTest_ChangeVar extracted from goldensun/asm/rom_9000/rom_1219c_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_1219c_a_c_c_a.o and asm/rom_9000/rom_1219c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *_GetSpriteInfo(int spriteId);

unsigned int SpriteTest_ChangeVar(int arg0, int arg1)
{
  int r5;
  int r6;
  unsigned char *r0;
  r5 = arg0;
  r6 = arg1;
  L12afe:
  r5 = r5 + r6;

  if (r5 < 0)
  {
    r6++;
    r6--;
    r5 = 0x200;
    goto L12afe;
  }
  if (r5 >= 0x200)
  {
    r5 = -1;
    goto L12afe;
  }
  r0 = (unsigned char *) _GetSpriteInfo(r5);
  if (r0[0] == 0)
  {
    goto L12afe;
  }
  return (unsigned int) r5;
}
