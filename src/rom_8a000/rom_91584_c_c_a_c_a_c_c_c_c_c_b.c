/* Cluster MapActor_RunScript..MapActor_RunScript extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *GetFieldActor(int actorID);
extern void Actor_SetBehavior(void *actor, int behavior);
extern void _Actor_WaitScript(void *actor);

void MapActor_RunScript(int actorID, int behavior)
{
    unsigned char *r5;
    int r6;

    r6 = behavior;
    r5 = (unsigned char *)GetFieldActor(actorID);
    if (r5 == (unsigned char *)0)
        return;
    {
        unsigned char *r1;
        unsigned int r2;
        unsigned int r3;
        r1 = r5 + 0x5a;
        r2 = *r1;
        r3 = 1;
        r3 |= r2;
        *r1 = (unsigned char)r3;
    }
    Actor_SetBehavior(r5, r6);
    _Actor_WaitScript(r5);
}
