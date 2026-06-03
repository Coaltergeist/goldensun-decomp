/* Cluster Func_8015ec0..Func_8015ef4 extracted from goldensun/asm/rom_15000/rom_15e8c_a.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_a_a.o and asm/rom_15000/rom_15e8c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e8c;

void Func_8015ec0(unsigned int arg0)
{
    unsigned char *base;
    unsigned int *slot;
    unsigned int *prev;

    base = (unsigned char *)iwram_3001e8c;
    if (arg0 < (unsigned int)(base + 0x698))
        return;
    if (arg0 >= (unsigned int)(base + 0xd98))
        return;
    slot = (unsigned int *)(base + 0xd9c);
    prev = (unsigned int *)*slot;
    *slot = arg0;
    *prev = arg0;
    *(unsigned int *)arg0 = 0;
}
void Func_8015ef4(void)
{
    unsigned int base;
    unsigned int *p;
    int i;

    base = iwram_3001e8c;
    p = (unsigned int *)(base + 0x698);
    *(unsigned int **)(base + 0xd98) = p;
    for (i = 0x3e; i >= 0; i--) {
        unsigned int *next = (unsigned int *)((char *)p + 0x1c);
        *p = (unsigned int)next;
        p = next;
    }
    *p = 0;
    *(unsigned int **)(base + 0xd9c) = p;
}
