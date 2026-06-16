/* Cluster Func_8018790..Func_8018790 extracted from goldensun/asm/rom_15000/rom_17e88.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_17e88_a.o and asm/rom_15000/rom_17e88_c.o in
 * goldensun/stage1.ld.
 */
extern int BufferString(unsigned int, int);
extern void Func_8018850(int, unsigned int, unsigned int, int);

void Func_8018790(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int r5 = arg1;
    unsigned int r6 = arg2;
    Func_8018850(BufferString(arg0, 0), r5, r6, 0);
}
