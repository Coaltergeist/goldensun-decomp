extern unsigned char iwram_3001f30[];

extern void Func_8098698(void);
extern void _Actor_SetAnim(void *actor, int animation);
extern void _Actor_SetSpriteFlags(void *actor, int flags);
extern void WaitFrames(int frames);
extern void _PlaySound(int sound);
extern void Func_809748c(void);

void Field_Growth_Target(void)
{
    unsigned char *actor = *(unsigned char **)iwram_3001f30;
    unsigned char *target = *(unsigned char **)(actor + 0x14);

    if (target != 0) {
        unsigned char *flagAddr;
        unsigned int old_flags;
        unsigned int flags;

        Func_8098698();
        _Actor_SetAnim(target, 2);
        target[0x59] = 0;
        _Actor_SetSpriteFlags(target, 0);
        flagAddr = target + 0x23;
        old_flags = *flagAddr;
        flags = 2;
        flags |= old_flags;
        *flagAddr = flags;
        WaitFrames(10);
        _PlaySound(0x7e);
        WaitFrames(0x28);
        Func_809748c();
    }
}
