/* Cluster Func_8093570..Func_8093570 extracted from goldensun/asm/rom_8a000/rom_93304_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_a_a_c_a.o and asm/rom_8a000/rom_93304_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *galloc_ewram(int index, unsigned int size);
extern void _Camera_SetTarget(unsigned char *ptr, int arg);

void Func_8093570(unsigned int arg0, unsigned int arg1) {
    unsigned char *base;
    unsigned char *obj;

    base = galloc_ewram(0x1b, 0xccc);
    obj = *(unsigned char **)(base + 0x1e0);
    if (arg0 != 0) {
        _Camera_SetTarget(obj, 0);
        *(unsigned int *)(obj + 0x68) = arg0;
        if (arg1 == 0) {
            *(unsigned int *)(obj + 8) = *(unsigned int *)(arg0 + 8);
            *(unsigned int *)(obj + 0xc) = *(unsigned int *)(arg0 + 0xc);
            *(unsigned int *)(obj + 0x10) = *(unsigned int *)(arg0 + 0x10);
        }
    }
}
