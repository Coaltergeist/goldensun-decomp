/* Cluster MapActor_WaitMovement..MapActor_WaitMovement extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_a_a_a.o and asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern int GetFieldActor(int);

void MapActor_WaitMovement(int arg0)
{
    int r5;
    r5 = GetFieldActor(arg0);
    if (r5 == 0) {
        return;
    }
    _Actor_WaitMovement();
    _Actor_SetAnim(r5, 1);
}
