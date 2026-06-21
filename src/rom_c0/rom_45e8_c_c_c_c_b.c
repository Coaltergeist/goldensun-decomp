/* Cluster ClearVRAM..ClearVRAM extracted from goldensun/asm/rom_c0/rom_45e8_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_45e8_c_c_c_c_a.o and asm/rom_c0/rom_45e8_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001cbc[];

void ClearVRAM(void)
{
  unsigned int src;
  register unsigned int *r0 asm("r0") = &src;
  *r0 = 0xf000f000;
  {
    register unsigned int d asm("r1") = 0x6002000;
    register unsigned int *p asm("r3") = (unsigned int *) 0x040000d4;
    register unsigned int c asm("r2") = 0x85000140;
    asm volatile("stmia %0!, {%1, %2, %3}\n\tsub %0, #0xc" : "+r"(p) : "r"(r0), "r"(d), "r"(c) : "memory");
  }
  *((unsigned int *) iwram_3001cbc) = 0x6002000;
  {
    unsigned int r2;
    volatile unsigned short *r3;
 do { r2 = 0x80; r2 <<= 3; r3 = (volatile unsigned short *) 0x04000008; } while (0);
    *r3 = (unsigned short) r2;
  }
}
