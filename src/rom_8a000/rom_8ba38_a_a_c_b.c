/* Cluster Func_808c44c..Func_808c44c extracted from goldensun/asm/rom_8a000/rom_8ba38_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ba38_a_a_c_a.o and asm/rom_8a000/rom_8ba38_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *galloc_ewram(unsigned int index, unsigned int size);
extern void _Func_8011590(void);

void Func_808c44c(void)
{
    void *pvVar1;
    void *pvVar2;

    pvVar1 = galloc_ewram(0x1b, 0xccc);
    if (*(short *)((int)pvVar1 + (0xcf << 1)) == 3)
    {
        pvVar2 = galloc_ewram(0x1f, 0xa8 << 3);
        if (pvVar2 != 0 && *(signed char *)((int)pvVar2 + 0x53d) != 0)
        {
            *(unsigned char *)((int)pvVar2 + 0x53a) = 0;
            *(unsigned char *)((int)pvVar2 + 0x53b) = 0;
            *(unsigned char *)((int)pvVar2 + 0x53c) = 1;
            *(unsigned char *)((int)pvVar2 + 0x53d) = 0;
        }
        *(unsigned char *)(*(int *)((int)pvVar1 + (0xf0 << 1)) + 0x5b) = 1;
        _Func_8011590();
    }
}
