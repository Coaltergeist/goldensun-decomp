/* Cluster MapActor_WaitScript..MapActor_WaitScript extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetFieldActor(int actorID);
extern void _Actor_WaitScript(void);

void MapActor_WaitScript(int actorID)
{
    if (GetFieldActor(actorID) != 0) {
        _Actor_WaitScript();
    }
}
