/* Cluster ActorCmd_GetFlag..ActorCmd_GetFlag extracted from goldensun/asm/rom_9000/rom_d654_a_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_c_a_c_a.o and asm/rom_9000/rom_d654_a_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int _GetFlag(int);

int ActorCmd_GetFlag(unsigned char *r5)
{
    short idx;
    int *base;
    unsigned short cnt;

    idx = *(short *)(r5 + 4);
    base = *(int **)r5;
    *(unsigned char *)(r5 + 0x57) = (unsigned char)_GetFlag(base[idx + 1]);
    cnt = *(unsigned short *)(r5 + 4);
    *(unsigned short *)(r5 + 4) = cnt + 2;
    return 1;
}
