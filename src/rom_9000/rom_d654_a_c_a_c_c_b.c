/* Cluster ActorCmd_SetFlag..ActorCmd_SetFlag extracted from goldensun/asm/rom_9000/rom_d654_a_c_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_c_a_c_c_a.o and asm/rom_9000/rom_d654_a_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int _GetFlag(int);
extern void _SetFlag(int);

int ActorCmd_SetFlag(void *actor)
{
    short idx;
    int *base;
    int flagId;
    unsigned short cnt;

    idx = *(signed short *)((char *)actor + 4);
    base = *(int **)actor;
    flagId = *(int *)((char *)base + (int)idx * 4 + 4);
    *((unsigned char *)actor + 0x57) = _GetFlag(flagId);
    _SetFlag(flagId);
    cnt = *(unsigned short *)((char *)actor + 4);
    cnt += 2;
    *(unsigned short *)((char *)actor + 4) = cnt;
    return 1;
}
