extern struct {
    char pad[0x1f4];
    int target_idx;
} gState;

extern unsigned char gScript_923__0200a7c4[];

void OvlFunc_923_2009df8(void)
{
    int offset;
    int mask;
    char *base;
    unsigned char *target;
    unsigned char *actor;
    unsigned char *sprite;
    unsigned char *p;

    base = *(char **)iwram_3001ebc;
    offset = (gState.target_idx << 2) + 0x14;
    target = *(unsigned char **)(base + offset);

    actor = (unsigned char *)__CreateActor(0x1a, *(int *)(target + 8), *(int *)(target + 0xc), *(int *)(target + 0x10));
    if (actor != 0) {
        *(int *)(actor + 0x14) = *(int *)(target + 0x14);
        sprite = *(unsigned char **)(actor + 0x50);
        __Actor_SetScript(actor, gScript_923__0200a7c4);
        p = actor + 0x55;
        *p = 0;
        *(unsigned short *)(p + 15) = 0;
        *(unsigned char **)(actor + 0x68) = target;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 2);
            sprite[0x26] = 0;
            mask = -0xd;
            sprite[9] = (sprite[9] & mask) | 4;
        }
    }

    actor = (unsigned char *)__CreateActor(0x1a, *(int *)(target + 8), *(int *)(target + 0xc), *(int *)(target + 0x10));
    if (actor != 0) {
        *(int *)(actor + 0x14) = *(int *)(target + 0x14);
        sprite = *(unsigned char **)(actor + 0x50);
        __Actor_SetScript(actor, gScript_923__0200a7c4);
        p = actor + 0x55;
        *p = 0;
        *(unsigned short *)(p + 15) = 0;
        *(unsigned char **)(actor + 0x68) = target;
        actor[0x23] = 2;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 1);
            sprite[0x26] = 0;
        }
    }

    __PlaySound(0x82);
}
