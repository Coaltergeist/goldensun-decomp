/* Cluster Func_8006358..Func_8006358 extracted from goldensun/asm/rom_c0/rom_5cf8_a_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_5cf8_a_a_a.o and asm/rom_c0/rom_5cf8_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern volatile unsigned short iwram_3001cb0;
extern void Func_800307c(int intr, unsigned int dispstat, void *vector);

void Func_8006358(void)
{
    iwram_3001cb0 = 0;
    Func_800307c(7, 0, (void *)0);
    Func_800307c(6, 0, (void *)0);
}
