/* Cluster Func_8092548..Func_8092548 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void MapActor_SetAnim(int actorID, int anim);
extern void Func_8092504(int actorID);

void Func_8092548(int actorID, int anim) {
    MapActor_SetAnim(actorID, anim);
    Func_8092504(actorID);
}
