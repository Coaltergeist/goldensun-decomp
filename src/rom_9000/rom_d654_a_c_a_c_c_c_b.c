/* Cluster ActorCmd_ClearFlag..ActorCmd_ClearFlag extracted from goldensun/asm/rom_9000/rom_d654_a_c_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_c_a_c_c_c_a.o and asm/rom_9000/rom_d654_a_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int _GetFlag(int flag);
extern void _ClearFlag(int flag);

int ActorCmd_ClearFlag(unsigned char *arg0)
{
    short idx;
    int *arr;
    int flag;

    idx = *(short *)(arg0 + 4);
    arr = *(int **)arg0;
    flag = *(int *)((char *)arr + idx * 4 + 4);
    *(unsigned char *)(arg0 + 0x57) = _GetFlag(flag);
    _ClearFlag(flag);
    *(unsigned short *)(arg0 + 4) += 2;
    return 1;
}
