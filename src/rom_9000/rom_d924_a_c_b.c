/* Cluster ActorCmd_TravelTo..ActorCmd_TravelTo extracted from goldensun/asm/rom_9000/rom_d924_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d924_a_c_a.o and asm/rom_9000/rom_d924_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Actor_TravelTo(void *, int, int, int);

int ActorCmd_TravelTo(void *a)
{
    short idx;
    int *table;
    int *entry;
    int x, y, z;

    idx = *(short *)((char *)a + 4);
    table = *(int **)a;
    entry = (int *)((char *)table + (int)idx * 4 + 4);
    x = *entry++;
    y = *entry++;
    z = *entry;
    Actor_TravelTo(a, x, y, z);
    *(unsigned short *)((char *)a + 4) += 4;
    return 1;
}
