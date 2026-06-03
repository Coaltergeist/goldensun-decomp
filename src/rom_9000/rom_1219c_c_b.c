/* Cluster Func_8012de8..Func_8012de8 extracted from goldensun/asm/rom_9000/rom_1219c_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_1219c_c_a.o and asm/rom_9000/rom_1219c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int *iwram_3001e60;
extern void _Func_8185008(unsigned int arg0);
extern void Func_800b868(unsigned int layer);

void Func_8012de8(unsigned int arg0, unsigned int arg1)
{
    unsigned char *p;
    int off;
    int i;

    p = (unsigned char *)iwram_3001e60;
    _Func_8185008(arg1);
    off = ((arg0 & 3) << 2) + 0x28;
    for (i = 9; i >= 0; i--) {
        unsigned short *t = *(unsigned short **)(p + off);
        *t = arg1;
        Func_800b868(*(unsigned int *)(p + off));
        p += 0x38;
    }
}
