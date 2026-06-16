/* Cluster Func_8095214..Func_8095214 extracted from goldensun/asm/rom_8a000/rom_944ec_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_a_a_a.o and asm/rom_8a000/rom_944ec_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void *galloc_ewram(int index, unsigned int size);

void Func_8095214(void)
{
  unsigned char *base = (unsigned char *)galloc_ewram(0x1e, 0x1f88);
  unsigned short *r2 = (unsigned short *)(base + (0xfc << 5));
  unsigned short v = 0x7fff;
  unsigned short z = 0;
  *r2 = v;
  *((unsigned short *)(base + 0x1f82)) = z;
}
