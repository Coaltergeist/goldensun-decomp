/* Cluster Func_800d880..Func_800d880 extracted from goldensun/asm/rom_9000/rom_d654_a_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_c_a.o and asm/rom_9000/rom_d654_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int _Func_8079338(int);
extern void _Func_8079374(int);
extern void _Func_8079358(int);

int Func_800d880(unsigned char *actor)
{
    int idx;
    unsigned int *base;
    int r5;
    int result;

    idx = *(short *)(actor + 4);
    base = *(unsigned int **)actor;
    r5 = (int)((unsigned int *)((char *)base + idx * 4))[1];

    result = _Func_8079338(r5);
    *(unsigned char *)(actor + 0x57) = (unsigned char)result;

    if ((result << 24) == (0x80 << 17))
        _Func_8079374(r5);
    else
        _Func_8079358(r5);

    *(unsigned short *)(actor + 4) = *(unsigned short *)(actor + 4) + 2;
    return 1;
}
