/* Cluster Func_800d880..Func_800d880 extracted from goldensun/asm/rom_9000/rom_d654_a_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_c_a.o and asm/rom_9000/rom_d654_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int _GetFlag(int);
extern void _ClearFlag(int);
extern void _SetFlag(int);

int Func_800d880(unsigned char *actor)
{
    int idx;
    unsigned int *base;
    int r5;
    int result;

    idx = *(short *)(actor + 4);
    base = *(unsigned int **)actor;
    r5 = (int)((unsigned int *)((char *)base + idx * 4))[1];

    result = _GetFlag(r5);
    *(unsigned char *)(actor + 0x57) = (unsigned char)result;

    if ((result << 24) == (0x80 << 17))
        _ClearFlag(r5);
    else
        _SetFlag(r5);

    *(unsigned short *)(actor + 4) = *(unsigned short *)(actor + 4) + 2;
    return 1;
}
