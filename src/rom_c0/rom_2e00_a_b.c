/* Cluster Func_8002ee4..Func_8002ee4 extracted from goldensun/asm/rom_c0/rom_2e00_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_2e00_a_a.o and asm/rom_c0/rom_2e00_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80030f8(unsigned int nframes);
extern volatile unsigned int iwram_3001c94;

void Func_8002ee4(void)
{
    volatile unsigned int *p = &iwram_3001c94;
    for (;;) {
        unsigned int dummy = *p;
        (void)dummy;
        Func_80030f8(1);
    }
}
