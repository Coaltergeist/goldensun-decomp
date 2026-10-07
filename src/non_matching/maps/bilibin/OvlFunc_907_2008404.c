extern void __Func_80925cc(int, int);
extern void __MapActor_Surprise(int, int);
extern void __MapActor_TravelToWait(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __Field_MindRead(int, int);
extern void __WaitFrames(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __Func_8097608(void);
extern void __SetFlag(int);

void OvlFunc_907_2008404(void)
{
    unsigned char *actor0;
    unsigned char *actor11;

    actor0 = (unsigned char *)__MapActor_GetActor(0);
    actor11 = (unsigned char *)__MapActor_GetActor(11);
    if (*(int *)(actor11 + 8) >> 20 == 6) {
        __CutsceneStart();
        __Func_8092b08(11, 1);
        __Func_80925cc(0, 2);
        __CutsceneWait(20);
        __MapActor_SetSpeed(0, 0x3333, 0x1999);
        __MapActor_SetSpeed(11, 0x3333, 0x1999);
        ((unsigned char *)__MapActor_GetActor(0))[0x5a] &= 0xfe;
        actor11[0x55] = 0;
        *(int *)(actor0 + 0x18) = 0xffff0000;
        __MapActor_Surprise(0, 0x102);
        __MapActor_SetAnim(0, 0x10);
        __MapActor_TravelToWait(11, 0x6f, 0xc4);
        *(int *)(actor0 + 0x18) = 0x10000;
        __MapActor_TravelToAnimWait(0, 0x80, 0xb9);
        __CutsceneWait(20);
        *(int *)(actor0 + 0x18) = 0xffff0000;
        __MapActor_Surprise(0, 0x102);
        __MapActor_SetAnim(0, 0x10);
        __MapActor_TravelToWait(11, 0x79, 0xbe);
        *(int *)(actor0 + 0x18) = 0x10000;
        __MapActor_TravelToAnimWait(0, 0x8d, 0xbd);
        __CutsceneWait(20);
        *(int *)(actor0 + 0x18) = 0xffff0000;
        __MapActor_Surprise(0, 0x102);
        __MapActor_SetAnim(0, 0x10);
        __MapActor_TravelToWait(11, 0x84, 0xba);
        *(int *)(actor0 + 0x18) = 0x10000;
        ((unsigned char *)__MapActor_GetActor(0))[0x5a] |= 1;
        __MapActor_SetSpeed(0, 0x9999, 0x4ccc);
        __MapActor_TravelToAnimWait(0, 0xa6, 0xb9);
        __Func_8092adc(0, 0x8000, 0x14);
        __Func_8092b08(11, 2);
        __Field_MindRead(0, 11);
        __WaitFrames(10);
        __MessageID(0x1774);
        __ActorMessage(11, 0);
        __Func_8097608();
        __WaitFrames(10);
        __SetFlag(0x848);
        __CutsceneEnd();
    }
}
