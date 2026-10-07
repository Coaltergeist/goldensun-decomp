void OvlFunc_897_2008e30(int arg0)
{
    extern unsigned char *__MapActor_GetActor(int);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_8092950(int, int);

    unsigned char *actor8;
    unsigned char *actor;
    unsigned char i;

    actor8 = __MapActor_GetActor(8);
    *(int *)(actor8 + 0x18) = 0x10000;
    *(int *)(actor8 + 0x1c) = 0x10000;
    __MapActor_TravelToAnimWait(arg0, 0x1d7, 0x122);
    __Func_8092adc(arg0, 0xc000, 0);
    __CutsceneWait(10);
    __MapActor_SetPos(8, 0x1d70000, 0x1220000);
    actor = __MapActor_GetActor(arg0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(arg0), 0);
    __Func_8092950(arg0, 0x100);
    actor[0x55] = 0;
    __PlaySound(0xc9);
    for (i = 0; i < 60; i++) {
        *(int *)(actor + 0xc) += 0x8000;
        __CutsceneWait(1);
    }
    __PlaySound(0xbe);
    for (i = 0; i < 90; i++) {
        *(int *)(actor + 0xc) += 0x1999;
        *(int *)(actor + 0x18) -= 655;
        *(int *)(actor + 0x1c) -= 655;
        *(int *)(actor8 + 0x18) -= 655;
        *(int *)(actor8 + 0x1c) -= 655;
        __CutsceneWait(1);
    }
    __MapActor_SetPos(arg0, 0, 0);
    __MapActor_SetPos(8, 0, 0);
}
