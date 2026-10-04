extern unsigned char gState[];
extern unsigned char gScript_923__0200a7c4[];

void OvlFunc_923_2009df8(void)
{
    unsigned char *target;
    unsigned char *actor;
    unsigned char *sprite;

    target = ((unsigned char **)(*(char **)iwram_3001ebc + 0x14))[*(int *)(gState + 0x1f4)];

    actor = (unsigned char *)__CreateActor(0x1a, *(int *)(target + 8), *(int *)(target + 0xc), *(int *)(target + 0x10));
    if (actor != 0) {
        *(int *)(actor + 0x14) = *(int *)(target + 0x14);
        sprite = *(unsigned char **)(actor + 0x50);
        __Actor_SetScript(actor, gScript_923__0200a7c4);
        actor[0x55] = 0;
        *(unsigned short *)(actor + 0x64) = 0;
        *(unsigned char **)(actor + 0x68) = target;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 2);
            sprite[0x26] = 0;
            sprite[9] = (sprite[9] & -0xd) | 4;
        }
    }

    actor = (unsigned char *)__CreateActor(0x1a, *(int *)(target + 8), *(int *)(target + 0xc), *(int *)(target + 0x10));
    if (actor != 0) {
        *(int *)(actor + 0x14) = *(int *)(target + 0x14);
        sprite = *(unsigned char **)(actor + 0x50);
        __Actor_SetScript(actor, gScript_923__0200a7c4);
        actor[0x55] = 0;
        *(unsigned short *)(actor + 0x64) = 0;
        *(unsigned char **)(actor + 0x68) = target;
        actor[0x23] = 2;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 1);
            sprite[0x26] = 0;
        }
    }

    __PlaySound(0x82);
}
