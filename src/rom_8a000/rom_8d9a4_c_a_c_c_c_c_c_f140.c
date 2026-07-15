typedef unsigned char u8;
typedef unsigned int u32;

extern u8 gState[];
extern u8 *GetFieldActor(int actor_id);
extern void _Actor_SetSpriteFlags(u8 *actor, int flags);
extern void _Actor_SetScript(u8 *actor, const void *script);
extern void _Actor_SetAnim(u8 *actor, int animation);
extern void WaitFrames(int frames);
extern void Func_808f0d8(u8 *actor);
extern void Func_808eee4(void);
extern const u8 gActorScript[] asm(".L9e6c0");

void Func_808f140(u8 *actor, u32 flags)
{
    register u8 *saved_actor asm("r5") = actor;
    register u32 saved_flags asm("r6") = flags;
    register u8 *field_actor asm("r7");

    if (saved_actor == 0)
        return;
    {
        register u8 *state asm("r3") = gState;
        register int offset asm("r2") = 0xfa;
        offset <<= 1;
        state += offset;
        field_actor = GetFieldActor(*(int *)state);
    }
    if (saved_flags & 1) {
        _Actor_SetSpriteFlags(saved_actor, 0);
        _Actor_SetScript(saved_actor, gActorScript);
        *(u32 *)(saved_actor + 0x28) = 0x20000;
        *(u32 *)(saved_actor + 0x48) = 0x4000;
        *(void (**)(void))(saved_actor + 0x6c) = Func_808eee4;
    }
    if (saved_flags == 3)
        WaitFrames(0x3c);
    if (saved_flags & 2)
        Func_808f0d8(saved_actor);
    if (saved_flags == 3)
        WaitFrames(0x50);
    _Actor_SetAnim(field_actor, 1);
}
