/* Cluster MapActor_SetAnim..MapActor_SetAnim extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_a_a.o and asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void *GetFieldActor(int actorID);
extern void _Actor_SetAnim(void *actor, int anim);

void MapActor_SetAnim(int actorID, int anim)
{
    void *r5;
    void *actor;

    r5 = (void *)anim;
    actor = GetFieldActor(actorID);
    if (actor != 0) {
        _Actor_SetAnim(actor, (int)r5);
    }
}
