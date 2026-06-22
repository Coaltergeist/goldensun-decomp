/* Cluster Func_80944ec..Func_80944ec extracted from goldensun/asm/rom_8a000/rom_944ec_a_a_a_a.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_a_a_a_a.o and asm/rom_8a000/rom_944ec_a_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ed8[];

void Func_80944ec(void)
{
  unsigned int ptr;
  volatile unsigned int *new_var2;
  unsigned char idx;
  unsigned int off;
  unsigned int src;
  volatile unsigned short *dmareg;
  unsigned short r4;
  volatile unsigned int *bgofs;
  unsigned int v;
  unsigned int new_var;
  ptr = *((unsigned int *) iwram_3001ed8);
  idx = *((unsigned char *) (ptr + (0xf0 << 4)));
  new_var = ((unsigned int) idx) << 4;
  off = new_var - idx;
  off <<= 7;
  new_var2 = (volatile unsigned int *) 0x04000014;
  src = ptr + off;
  dmareg = (volatile unsigned short *) 0x040000b0;
  {
    unsigned int m1 = 0xc5ff;
    r4 = dmareg[5];
    dmareg[5] = m1 & r4;
  }
  {
    unsigned int m2 = 0x7fff;
    r4 = dmareg[5];
    dmareg[5] = m2 & r4;
  }
  bgofs = new_var2;
  {
    unsigned short scratch = dmareg[5];
    v = *((unsigned int *) src);
    src += 4;
    bgofs[0] = v;
    v = *((unsigned int *) src);
    src += 4;
    bgofs[0] = v;
    v = *((unsigned int *) src);
    src += 4;
    bgofs[0] = v;
    (void) scratch;
  }
  {
    register unsigned int s asm("r0") = src;
    register unsigned int d asm("r1") = (unsigned int) bgofs;
    register unsigned int c asm("r2") = 0xa6600003;
    register volatile unsigned short *p asm("r3") = dmareg;
    asm volatile("stmia %0!, {%1, %2, %3}\n\tsub %0, #0xc" : "+r"(p) : "r"(s), "r"(d), "r"(c) : "memory");
  }
}
