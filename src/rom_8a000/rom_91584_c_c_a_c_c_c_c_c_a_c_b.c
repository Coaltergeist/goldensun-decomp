/* Cluster MapActor_SetAnimSpeed..MapActor_SetAnimSpeed extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_a_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetFieldActor(int actorID);
extern void _Actor_SetAnimSpeed(int actor, int speed);

void MapActor_SetAnimSpeed(int actorID, int speed)
{
    int r5;
    int r0;

    r5 = speed;
    r0 = GetFieldActor(actorID);
    if (r0 == 0) {
        return;
    }
    _Actor_SetAnimSpeed(r0, r5);
}
