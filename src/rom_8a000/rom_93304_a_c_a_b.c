/* Cluster Update_EmoteBubble..Update_EmoteBubble extracted from goldensun/asm/rom_8a000/rom_93304_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_a_c_a_a.o and asm/rom_8a000/rom_93304_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern short *Func_808d394(short arg0);
extern void *_GetSpriteInfo(short arg0);

int Update_EmoteBubble(unsigned char *r5)
{
  unsigned char *r6 = *((unsigned char **) (r5 + 0x68));
  if (r6 != 0)
  {
    short idx;
    short *p;
    void *sprite;
    unsigned short b;
    int val;
    *((unsigned char *) (r5 + 0x55)) = 0;
    *((int *) (r5 + 8)) = *((int *) (r6 + 8));
    idx = *((short *) (r5 + 0x66));
    p = Func_808d394(idx);
    sprite = _GetSpriteInfo(*p);
    b = *(((signed char *) sprite) + 8);
    val = *((int *) (r6 + 0xc));
    val += ((int) b) << 16;
    val += 0x80 << 12;
    *((int *) (r5 + 0xc)) = val;
    *((int *) (r5 + 0x14)) = *((int *) (r6 + 0x14));
    *((int *) (r5 + 0x10)) = *((int *) (r6 + 0x10));
  }
  return 0;
}
