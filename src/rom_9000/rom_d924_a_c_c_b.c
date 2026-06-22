/* Cluster ActorCmd_Travel..ActorCmd_Travel extracted from goldensun/asm/rom_9000/rom_d924_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d924_a_c_c_a.o and asm/rom_9000/rom_d924_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Actor_TravelTo(void *actor, int x, int y, int z);

int ActorCmd_Travel(void *actor)
{
    int idx;
    int *base;
    int e0, e1, r4;
    int x, y, z;

    idx = *(short *)((char *)actor + 4);
    base = *(int **)actor;
    base += idx;
    base++;
    e0 = *base++;
    x = *(int *)((char *)actor + 8) + e0;
    e1 = *base++;
    r4 = *base;
    y = *(int *)((char *)actor + 12) + e1;
    z = *(int *)((char *)actor + 16) + r4;
    Actor_TravelTo(actor, x, y, z);
    *(unsigned short *)((char *)actor + 4) += 4;
    return 1;
}
