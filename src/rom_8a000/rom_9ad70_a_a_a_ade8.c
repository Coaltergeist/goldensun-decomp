extern unsigned char *GetFieldActor(void);
extern void _Actor_SetColorswap(unsigned char *actor, int color);
extern void _Actor_SetAnimSpeed(unsigned char *actor, int speed);
extern void Func_809ad70(unsigned char *actor);
extern unsigned char gState[];

void Func_809ade8(void)
{
    unsigned char *actor;
    unsigned char *base;
    unsigned int *slot;

    actor = GetFieldActor();
    if (actor == 0) {
        return;
    }
    if (*(void **)(actor + 0x6c) == (void *)Func_809ad70) {
        base = gState;
        slot = (unsigned int *)base + 0x94;
        *(unsigned int *)(actor + 0x6c) = *slot;
        *slot = 0;
        _Actor_SetColorswap(actor, *(signed char *)(base + 0x249));
    }
    actor[0x5b] = 0;
    _Actor_SetAnimSpeed(actor, 0x10);
}
