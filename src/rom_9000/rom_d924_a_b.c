/* Cluster ActorCmd_SetPos..ActorCmd_SetPos extracted from goldensun/asm/rom_9000/rom_d924_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d924_a_a.o and asm/rom_9000/rom_d924_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Actor_SetPos(void *, int, int, int);

int ActorCmd_SetPos(void *r5)
{
    short idx;
    int *p;
    int x;
    int y;
    int z;
    idx = *(short *)((char *)r5 + 4);
    p = (int *)(*(int *)r5 + idx * 4 + 4);
    x = *p++;
    y = *p++;
    z = *p;
    Actor_SetPos(r5, x, y, z);
    *(unsigned short *)((char *)r5 + 4) = *(unsigned short *)((char *)r5 + 4) + 4;
    return 1;
}
