/* Cluster Anim_CuttingEdge..Anim_CuttingEdge extracted from goldensun/asm/rom_c9000/rom_de974_c_c_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_de974_c_c_c_c_c_c_a_a.o and asm/rom_c9000/rom_de974_c_c_c_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int _GetBattleActor(int a);
extern void _Actor_SetAnim(int actor, int anim);
extern void _Actor_SetAnimSpeed(int actor, int speed);
extern void BaseAnim_ParticleSpray(void *context, int subanim);

void Anim_CuttingEdge(void *context)
{
    int actorHolder = *(int *)((char *)context + 8);
    int actor = *(int *)_GetBattleActor(actorHolder);
    _Actor_SetAnim(actor, 2);
    _Actor_SetAnimSpeed(actor, 0x30);
    BaseAnim_ParticleSpray(context, 5);
    _Actor_SetAnimSpeed(actor, 0x10);
}
