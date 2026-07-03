/* Cluster Func_8017364..Func_8017364 extracted from goldensun/asm/rom_15000/rom_15e8c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_c_a_a_a.o and asm/rom_15000/rom_15e8c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001e8c[];

unsigned int Func_8017364(void)
{
    char *p;
    void *obj;
    int i;

    p = (char *)(*(unsigned int *)iwram_3001e8c) + 0x620;
    i = 0;
    do {
        obj = *(void **)p;
        if (obj != 0) {
            if (*(unsigned short *)((char *)obj + 0x14) == 0) {
                return 0;
            }
        }
        i++;
        p += 0x28;
    } while (i != 3);
    return 1;
}
