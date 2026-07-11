/* Cluster ActorCmd_Unused..ActorCmd_Unused extracted from goldensun/asm/rom_9000/rom_d924_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d924_c_a.o and asm/rom_9000/rom_d924_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Actor_TravelTo(void *actor, int x, int y, int z);

int ActorCmd_Unused(void *r0)
{
    void *r5 = r0;
    int stack[3];
    int x = *(int *)((char *)r5 + 8) + stack[0];
    int y = *(int *)((char *)r5 + 12) + stack[1];
    int z = *(int *)((char *)r5 + 16) + stack[2];

    Actor_TravelTo(r5, x, y, z);
    *(unsigned short *)((char *)r5 + 4) = *(unsigned short *)((char *)r5 + 4) + 3;
    return 1;
}
