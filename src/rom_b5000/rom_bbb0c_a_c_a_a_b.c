/* Cluster Func_80bd808..Func_80bd808 extracted from goldensun/asm/rom_b5000/rom_bbb0c_a_c_a_a.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bbb0c_a_c_a_a_a.o and asm/rom_b5000/rom_bbb0c_a_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001e74[];
extern void Func_80bd898(void);
extern short StartTask(void *task, unsigned int priority);

volatile unsigned int Func_80bd808(unsigned int arg0)
{
  unsigned char *base;
  base = *((unsigned char **) iwram_3001e74);
  *((unsigned int *) (base + 0x7fc)) = 0;
  *((unsigned int *) (base - -0x804)) = 0;
  *((unsigned int *) (base + 0x808)) = arg0;
  *((unsigned int *) (base + 0x800)) = 2;
  base[0x655] = 0;
  StartTask((void *) Func_80bd898, 0xc80);
}
