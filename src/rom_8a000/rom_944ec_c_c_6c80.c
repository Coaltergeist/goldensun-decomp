extern void *_CreateActor(int actorId, int x, int y, int z);
extern void _DeleteActor(void);
extern void _Actor_SetSpriteFlags(void *actor, int flags);
extern void _Actor_SetAnim(void *actor, int animation);
extern unsigned char iwram_3001f30[];

void *CreateParticleActor(int actorId, int x, int y, int z)
{
    unsigned char *base = *(unsigned char **)iwram_3001f30;
    unsigned char *actor = _CreateActor(actorId, x, y, z);

    if (actor != 0) {
        unsigned char *sprite;
        unsigned int flags;

        if (actor[0x54] == 0) {
            _DeleteActor();
            return 0;
        }

        *(unsigned int *)(actor + 0x14) = *(unsigned int *)(*(unsigned int *)(base + 0x10) + 0x14);
        {
            register unsigned int four asm("r3") = 4;

            actor[0x55] = four;
            actor[0x23] = four;
            asm volatile("" : "+r"(four));
            sprite = *(unsigned char **)(actor + 0x50);
            flags = sprite[9];
            four -= 0x11;
            four &= flags;
            sprite[9] = four;
        }

        _Actor_SetSpriteFlags(actor, 0);
        _Actor_SetAnim(actor, 1);
    }

    return actor;
}
