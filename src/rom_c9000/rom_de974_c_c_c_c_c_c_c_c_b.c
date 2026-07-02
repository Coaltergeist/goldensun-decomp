/* Cluster Anim_Blizzard..Anim_Blizzard extracted from goldensun/asm/rom_c9000/rom_de974_c_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_de974_c_c_c_c_c_c_c_c_a.o and asm/rom_c9000/rom_de974_c_c_c_c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *_GetBattleActor(int a);
extern void _Actor_SetAnim(void *a, int b);
extern void _Actor_SetAnimSpeed(void *a, int b);
extern void BaseAnim_ParticleSpray(void *context, int subanim);

void Anim_Blizzard(void *context)
{
    unsigned char *ctx = (unsigned char *)context;
    void *actor;

    actor = *(void **)_GetBattleActor(*(int *)(ctx + 8));
    _Actor_SetAnim(actor, 2);
    _Actor_SetAnimSpeed(actor, 0x30);
    BaseAnim_ParticleSpray(ctx, 9);
    _Actor_SetAnimSpeed(actor, 0x10);
}
