void OvlFunc_924_200b788(void)
{
    extern int OvlFunc_924_2008cd0(struct Actor *);
    extern void __Func_8092950(int, int);
    extern void __Func_8092304(unsigned int, unsigned int, unsigned int);
    extern void __MapTransitionIn(void);

    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(0);
    if (__GetFlag(0x109) == 0) {
        __CutsceneStart();
        __Func_80933f8(-1, -1, -1, 0);
        actor->__unk55 = 0;
        __MapActor_SetPos(0, ((s16 *)&actor->pos.x)[1] << 16,
                          (((s16 *)&actor->pos.z)[1] << 16) + (int)0xfff00000);
        __Func_8092950(0, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
        __MapTransitionIn();
        __WaitMapTransition();
        __PlaySound(0xe4);
        actor->update = (actorfun_t *)OvlFunc_924_2008cd0;
        __MapActor_SetSpeed(0, 0x6666, 0x3333);
        __Func_8092304(0, 0, 8);
        __Func_8092950(0, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0), 1);
        actor->sprite->oam.priority = 1;
        __Func_8092304(0, 0, 10);
        actor->__unk55 = 3;
        actor->update = 0;
        __MapActor_PlayPendingSound();
        __CutsceneEnd();
    }
}
