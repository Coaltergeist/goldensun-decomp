/* Cluster Func_8093710..Func_8093710 extracted from goldensun/asm/rom_8a000/rom_93304_a_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_a_c_a_a_a.o and asm/rom_8a000/rom_93304_a_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e70;
extern void *galloc_ewram(unsigned int index, unsigned int size);
extern void WaitFrames(unsigned int nframes);

void Func_8093710(void)
{
    unsigned char *pFVar1;
    void *pvVar2;
    int iVar3;

    pFVar1 = (unsigned char *)iwram_3001e70;
    pvVar2 = galloc_ewram(0x1b, 0xccc);
    if (*(short *)((int)pvVar2 + (0xcf << 1)) == 3 &&
        (iVar3 = 0, *(short *)(pFVar1 + (0xd6 << 2)) != 0))
    {
        do
        {
            WaitFrames(1);
            iVar3 = iVar3 + 1;
            if (iVar3 > 0x12b)
            {
                return;
            }
        } while (*(short *)(pFVar1 + (0xd6 << 2)) != 0);
    }
}
