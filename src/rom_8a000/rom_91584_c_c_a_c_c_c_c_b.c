/* Cluster Func_8092304..Func_8092304 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_c_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetFieldActor(unsigned int actorID);
extern void Func_80922c4(unsigned int a, unsigned int b, unsigned int c);
extern void _Func_800ca6c(int actor);
extern void _Actor_SetAnim(int actor, int b);

void Func_8092304(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    int actor;

    actor = GetFieldActor(arg0);
    Func_80922c4(arg0, arg1, arg2);
    if (actor != 0) {
        _Func_800ca6c(actor);
        _Actor_SetAnim(actor, 1);
    }
}
