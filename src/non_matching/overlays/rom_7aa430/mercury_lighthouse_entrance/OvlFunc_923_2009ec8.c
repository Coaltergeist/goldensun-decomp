extern unsigned char gState[];
extern unsigned int iwram_3001edc;
extern unsigned char gScript_923__0200a7e8[];
extern void OvlFunc_923_2009df8(void);
extern void *__CreateActor(int, int, int, int);
extern void __WaitFrames(int);

void OvlFunc_923_2009ec8(void)
{
    int *r8;
    unsigned char *actor;
    unsigned char *target;
    unsigned char *sprite;
    int i;
    int mask;

    r8 = *(int **)iwram_3001edc;
    target = ((unsigned char **)(*(char **)((char *)&iwram_3001edc - 0x20) + 0x14))[*(int *)(gState + 0x1f4)];
    if ((unsigned int)*r8 > 2)
        return;

    __CutsceneStart();
    if (*(void **)((char *)r8 + 0x14) == 0) {
        actor = (unsigned char *)__CreateActor(0x1a, *(int *)(target + 8), *(int *)(target + 0xc) + (0xc0 << 13), *(int *)(target + 0x10));
        if (actor != 0) {
            sprite = *(unsigned char **)(actor + 0x50);
            *(int *)(actor + 0x14) = *(int *)(target + 0x14);
            __Actor_SetScript(actor, gScript_923__0200a7e8);
            *(void **)(actor + 0x68) = target;
            actor[0x55] = 4;
            *(int *)(actor + 0xc) += 0xffff8000;
            if (sprite != 0) {
                sprite[0x26] = 0;
                mask = -0xd;
                sprite[9] = (sprite[9] & mask) | 4;
            }
            actor[0x54] = 0;
            *(void **)((char *)r8 + 0x14) = actor;
        }
    }
    actor = *(unsigned char **)((char *)r8 + 0x14);

    for (i = *r8; i <= 2; i++) {
        OvlFunc_923_2009df8();
        __WaitFrames(30);
        actor[0x54] = 1;
        __Actor_SetAnim(actor, 5 - i);
    }

    *r8 = 3;
    *(int *)((char *)r8 + 0xc) = (*(int *)(actor + 8) & 0xfff00000) + (0x80 << 12);
    *(int *)((char *)r8 + 0x10) = (*(int *)(actor + 0x10) & 0xfff00000) + (0x80 << 12);
    __SetFlag(0x161);
    __CutsceneEnd();
}
