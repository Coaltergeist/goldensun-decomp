extern unsigned char iwram_3001e70[];
extern unsigned char gState[];
extern unsigned char Lm943_5418[] __asm__(".Lm943_5418");
extern void __DeleteFieldActor(int);
extern void OvlFunc_943_200bf30(void);

void OvlFunc_943_20099c0(void)
{
    struct Actor *actor;

    *(unsigned int *)(*(char **)iwram_3001e70 + 0xec) = 0x410000;
    __CutsceneStart();
    __LoadFieldActors(Lm943_5418);
    __WaitFrames(1);
    __DeleteFieldActor(0x18);
    __MapActor_SetPos(0x17, 0xee0000, 0x2720000);
    actor = (struct Actor *)__MapActor_GetActor(0x17);
    actor->facing = 0x3000;

    if (__GetFlag(0x903) != 0) {
        __MapActor_SetPos(0x16, 0xa20000, 0x27a0000);
        actor = (struct Actor *)__MapActor_GetActor(0x16);
        actor->facing = 0x3000;
        __MapActor_SetPos(0x15, 0xa20000, 0xa9 << 18);
        actor = (struct Actor *)__MapActor_GetActor(0x15);
        actor->facing = 0xd000;
    } else {
        __MapActor_SetPos(0x16, 0xa00000, 0xa3 << 18);
        actor = (struct Actor *)__MapActor_GetActor(0x16);
        actor->facing = 0x3000;
        __MapActor_SetPos(0x15, 0xa60000, 0xa7 << 18);
        actor = (struct Actor *)__MapActor_GetActor(0x15);
        actor->facing = 0xb000;
    }

    if (*(short *)(gState + 0x1c2) == 6) {
        OvlFunc_943_200bf30();
    }
    __CutsceneEnd();
}
