/* Cluster Func_8095240..Func_8095240 extracted from goldensun/asm/rom_8a000/rom_944ec_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_a_a.o and asm/rom_8a000/rom_944ec_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void *galloc_ewram(int, int);

void Func_8095240(void)
{
  int new_var;
  unsigned char *base = (unsigned char *)galloc_ewram(0x1e, 0x1f88);
  int new_var2;
  unsigned short *r2 = (unsigned short *)(base + ((0xfc << 1) << 4));
  new_var = 0;
  new_var2 = 0xc;
  *r2 = new_var2;
  *((unsigned short *)(base + 0x1f82)) = new_var;
}
