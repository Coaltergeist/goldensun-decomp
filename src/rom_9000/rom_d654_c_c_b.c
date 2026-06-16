/* Cluster ActorCmd_Sound..ActorCmd_Sound extracted from goldensun/asm/rom_9000/rom_d654_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_c_c_a.o and asm/rom_9000/rom_d654_c_c_c.o in
 * goldensun/stage1.ld.
 */
int ActorCmd_Sound(unsigned char *r5_arg)
{
    unsigned char *r5;
    int r3;
    int r2;
    r5 = r5_arg;
    r3 = *(short *)((char *)r5 + 4);
    r2 = *(int *)r5;
    r3 = (r3 << 2) + r2;
    _PlaySound(*(int *)((char *)r3 + 4));
    r3 = *(unsigned short *)((char *)r5 + 4);
    r3 += 2;
    *(unsigned short *)((char *)r5 + 4) = r3;
    return 1;
}
