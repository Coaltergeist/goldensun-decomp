/* Cluster Func_801ba34..Func_801ba34 extracted from goldensun/asm/rom_15000/rom_1aeec_a_a_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1aeec_a_a_c_a.o and asm/rom_15000/rom_1aeec_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _Func_80c10e8(unsigned short *buf, int arg);

void Func_801ba34(unsigned int base) {
    unsigned short list[6];
    unsigned int *p;
    int count;

    p = *(unsigned int **)(base + 0x348);
    count = 0;
    while (p != (unsigned int *)0) {
        p = *(unsigned int **)((char *)p + 4);
        count++;
    }
    list[count] = 0xff;
    _Func_80c10e8(list, 0);
}
