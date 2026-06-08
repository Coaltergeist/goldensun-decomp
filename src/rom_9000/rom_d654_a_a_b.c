/* Cluster ActorCmd_Wait..ActorCmd_Wait extracted from goldensun/asm/rom_9000/rom_d654_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_a_a.o and asm/rom_9000/rom_d654_a_a_c.o in
 * goldensun/stage1.ld.
 */
int ActorCmd_Wait(unsigned char *actor)
{
    int idx;
    int val;
    idx = *(short *)(actor + 4);
    val = *(int *)((idx << 2) + *(int *)actor + 4);
    val = val - 1;
    *(unsigned short *)(actor + 0x5e) = val;
    *(unsigned short *)(actor + 4) = *(unsigned short *)(actor + 4) + 2;
    return 0;
}
