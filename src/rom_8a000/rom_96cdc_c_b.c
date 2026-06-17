/* Cluster Func_8097174..Func_8097174 extracted from goldensun/asm/rom_8a000/rom_96cdc_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_96cdc_c_a.o and asm/rom_8a000/rom_96cdc_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f30[];
extern void WaitFrames(int nframes);

void Func_8097174(void)
{
    int *r3;
    int *r0;

    r3 = *(int **)iwram_3001f30;
    r0 = *(int **)((char *)r3 + 0x10);
    *(int *)((char *)r0 + 0x6c) = 0;
    _Actor_SetColorswap(r0, 0);
    WaitFrames(1);
}
