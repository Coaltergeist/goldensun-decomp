/* Cluster MapActor_SetExtra..MapActor_SetExtra extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_a_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int *GetFieldActor(int actorID);
extern unsigned int MapActor_GetActor(int actorID);
extern void Actor_SetBehavior(unsigned int *actor, void *behavior);
extern unsigned int Data_9ff40[];

void MapActor_SetExtra(int arg0, int arg1) {
    unsigned int *r5;

    r5 = GetFieldActor(arg0);
    if (r5 != 0) {
        *(unsigned int *)((unsigned char *)r5 + 0x68) = MapActor_GetActor(arg1);
        Actor_SetBehavior(r5, Data_9ff40);
    }
}
