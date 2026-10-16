extern unsigned char Lm943_5208[] __asm__(".Lm943_5208");
extern unsigned char gScript_943__0200c4ec[];
extern void __Func_800c5b4(void);
extern void __Func_800c5fc(void);
extern void __Func_8093304(int);
extern void __Func_8019aa0(int, int, int);

void OvlFunc_943_2009db0(void)
{
    extern void *__MapActor_GetActor(int);
    extern unsigned char *iwram_3001ebc_db0 __asm__("iwram_3001ebc");

    API_CutsceneStart();
    __LoadFieldActors(Lm943_5160);
    API_WaitFrames(1);
    __LoadFieldActors(Lm943_5208);
    API_WaitFrames(1);
    API_MapActor_SetPos(0x15, 0xf8 << 16, 0xb6 << 18);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    *(int *)(iwram_3001ebc_db0 + (0xe0 << 1)) = (0xe0 << 1) + 0x42;
    API_MapTransitionIn();
    API_MapActor_SetSpeed(0x15, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(0x15, 0xf2, 0xad << 2);
    API_MapActor_TravelToAnimWait(0x15, 0xc4, 0x2a6);
    API_MapActor_TravelToAnimWait(0x15, 0xb6, 0x28e);
    API_Func_80925cc(0x15, 2);
    __MessageID(0x1e44);
    OvlFunc_943_200b9ec(0xa015);
    API_MapActor_SetSpeed(0, 0x26666, 0x13333);
    API_MapActor_TravelTo(0, 0x9a, 0x261);
    API_PlaySound(0x92);
    ((struct Actor *)__MapActor_GetActor(0x18))->waveCounter = 0;
    ((struct Actor *)__MapActor_GetActor(0x19))->waveCounter = 0;
    ((struct Actor *)__MapActor_GetActor(0x1a))->waveCounter = 0;
    API_MapActor_SetPos(0x18, 0x80 << 14, 0xf2 << 17);
    API_MapActor_SetPos(0x19, 0xa8 << 15, 0xf8 << 17);
    API_MapActor_SetPos(0x1a, 0x80 << 13, 0x95 << 18);
    API_MapActor_SetSpeed(0x18, 0x26666, 0x13333);
    API_MapActor_SetSpeed(0x19, 0x26666, 0x13333);
    API_MapActor_SetSpeed(0x1a, 0x26666, 0x13333);
    API_MapActor_SetBehavior(0x18, (int)gScript_943__0200c4ec);
    API_MapActor_SetBehavior(0x19, (int)gScript_943__0200c4ec);
    API_MapActor_SetBehavior(0x1a, (int)gScript_943__0200c4ec);
    __Func_8092950(0x18, 3);
    __Func_8092950(0x19, 3);
    __Func_8092950(0x1a, 3);
    do {
        API_WaitFrames(1);
    } while (((struct Actor *)__MapActor_GetActor(0x18))->waveCounter == 0);
    OvlFunc_943_2008bb8();
    API_MapActor_TravelToAnim(0x15, 0xc4, 0x99 << 2);
    API_MapActor_WaitScript(0x18);
    API_CutsceneWait(0xa);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_CutsceneWait(0xa);
    __Func_800c5b4();
    __Func_8093304(0x15);
    __Func_8019aa0(0x1e45, 1, 0);
    __Func_800c5fc();
    API_Func_8091e9c(0xc);
}
