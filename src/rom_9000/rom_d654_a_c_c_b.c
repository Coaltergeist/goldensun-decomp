/* Cluster ActorCmd_Anim..ActorCmd_Anim extracted from goldensun/asm/rom_9000/rom_d654_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_c_c_a.o and asm/rom_9000/rom_d654_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Actor_SetAnim(void *actor, unsigned int anim);

int ActorCmd_Anim(void *actor)
{
    int r3;
    int r2;
    unsigned short r3h;

    r3 = *(short *)((char *)actor + 4);
    r2 = *(int *)actor;
    r3 = r3 << 2;
    r3 = r3 + r2;
    Actor_SetAnim(actor, *(unsigned int *)(r3 + 4));
    r3h = *(unsigned short *)((char *)actor + 4);
    r3h += 2;
    *(unsigned short *)((char *)actor + 4) = r3h;
    return 1;
}
