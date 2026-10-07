extern void __Func_8092adc(int, int, int);

extern void __MapActor_SetSpeed(unsigned int, int, int);

extern void __MapActor_TravelToAnim(int, int, int);

extern void *__Func_8093554(void);

extern void __Func_80933d4(unsigned int, unsigned int);

extern void __Func_80933f8(int, int, int, int);

extern int __MapTransitionIn(void);

extern void __MapActor_WaitMovement(int);

extern void __MapActor_SetPos(int, int, int);

extern void __MapActor_TravelToAnimWait(int, int, int);

extern void __Func_809259c(int, int);

extern void __Func_80925cc(int, int);

extern void __CutsceneWait(int);

extern void __ActorMessage_Wait(int, int, int);

extern void __MapActor_DoAnim(int, int);

extern void __MapActor_Surprise(int, int);

extern void __MapActor_Emote(int, int, int);

void OvlFunc_921_20099e8(void)
{
    unsigned char *actor;
    unsigned char *p;

    __CutsceneStart();
    __Func_8092adc(3, 0xa0 << 8, 0);
    __MapActor_SetSpeed(0, 0x9999, 0x4ccc);
    __MapActor_TravelToAnim(0, 0x2b2, 0xc8);
    actor = (unsigned char *)__Func_8093554();
    actor[0x55] = 0;
    __Func_80933d4(0xcccc, 0x1999);
    __Func_80933f8(0x2b20000, 0, 0xa4 << 16, 1);

    p = *(unsigned char **)iwram_3001ebc;
    *(int *)(p + (0xe0 << 1)) = 0x30 - 0xc0;
    *(int *)(p + (0xe0 << 1) + 0xc8) = 0x30;

    __MapTransitionIn();
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 1);
    __MapActor_SetSpeed(3, 0x9999, 0x4ccc);

    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_SetPos(3, *(int *)(actor + 8), *(int *)(actor + 0x10));
    }

    __MapActor_TravelToAnimWait(3, 0x2a1, 0xb7);
    __Func_8092adc(3, 0xc0 << 8, 0);
    __Func_809259c(0x13, 2);
    __Func_80925cc(0x14, 2);
    __CutsceneWait(0x28);
    __MessageID(0x165b);
    __ActorMessage_Wait(0x13, 0, 0xa);
    __Func_8092adc(3, 0xe0 << 8, 0x28);
    __MapActor_DoAnim(3, 3);
    __MapActor_Surprise(0x14, 0x81 << 1);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0x4014, 0, 0xa);
    __Func_8092adc(3, 0xa0 << 8, 0x28);
    __MapActor_DoAnim(3, 4);
    __ActorMessage_Wait(0x2003, 0, 0xa);
    __MapActor_DoAnim(0x14, 3);
    __CutsceneWait(0x14);
    __MapActor_Surprise(0x13, 0x81 << 1);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0x13, 0, 0xa);
    __Func_8092adc(0, 0xa0 << 8, 0);
    __Func_8092adc(3, 0xf0 << 8, 0xa);
    __Func_8092adc(3, 0x80 << 6, 0x28);
    __Func_8092adc(0, 0xc0 << 8, 0);
    __Func_8092adc(3, 0xc0 << 8, 0x28);
    __Func_80925cc(0x14, 2);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0x4014, 0, 0x14);
    __Func_8092adc(3, 0xa0 << 8, 0x14);
    __MapActor_DoAnim(3, 3);
    __CutsceneWait(0x3c);
    __MapActor_Emote(3, 0x105, 0x3c);
    __MapActor_Emote(0x13, 0x101, 0);
    __MapActor_Emote(0x14, 0x101, 0x3c);
    __Func_80925cc(0x13, 1);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0x13, 0, 0xa);
    __Func_8092adc(3, 0xe0 << 8, 0x28);
    __Func_8092adc(3, 0xa0 << 8, 0x28);
    __Func_8092adc(3, 0xe0 << 8, 0x14);
    __Func_8092adc(3, 0xc0 << 7, 0x50);
    __ActorMessage_Wait(0x2003, 0, 0x14);
    __Func_8092adc(0x14, 0xf0 << 8, 0);
    __Func_8092adc(0x13, 0xe0 << 7, 0x28);
    __Func_8092adc(0x13, 0xa0 << 7, 0);
    __Func_8092adc(0x14, 0xc0 << 6, 0x14);
    __MapActor_SetSpeed(0x14, 0x80 << 9, 0x80 << 8);

    actor = (unsigned char *)__MapActor_GetActor(0x14);
    actor[0x5a] &= 0xfe;
    __MapActor_TravelToAnimWait(0x14, 0xa4 << 2, 0xa6);
    __CutsceneWait(1);
    actor = (unsigned char *)__MapActor_GetActor(0x14);
    actor[0x5a] |= 1;
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0x4014, 0, 0xa);
    __Func_80925cc(3, 2);
    __CutsceneWait(0x28);
    __Func_8092adc(3, 0xa0 << 8, 0xa);
    __ActorMessage_Wait(0x2003, 0, 0x28);
    __Func_8092adc(3, 0x80 << 6, 0x14);
    __ActorMessage_Wait(0x4003, 0, 0xa);
    __MapActor_Surprise(0x13, 0x81 << 1);
    __MapActor_Surprise(0x14, 0x81 << 1);
    __CutsceneWait(0x28);
    __Func_8092adc(3, 0xc0 << 8, 0x14);
    __MapActor_SetAnim(3, 4);
    __ActorMessage_Wait(0x2003, 0, 0x14);
    __Func_80925cc(0x13, 1);
    __ActorMessage_Wait(0x13, 0, 0xa);
    __Func_8092adc(3, 0x80 << 6, 0x28);
    __Func_8092adc(3, 0xc0 << 8, 0x14);
    __MapActor_DoAnim(3, 3);
    __CutsceneWait(0x14);
    __Func_80925cc(0x14, 1);
    __ActorMessage_Wait(0x4014, 0, 0x14);
    __Func_80925cc(3, 1);
    __CutsceneWait(0x14);
    __Func_8092adc(3, 0xa0 << 8, 0x14);
    __MapActor_DoAnim(3, 3);
    __ActorMessage_Wait(0x2003, 0, 0x50);
    __MapActor_Emote(0x13, 0x105, 0);
    __MapActor_Emote(0x14, 0x105, 0x3c);
    __MapActor_DoAnim(0x13, 4);
    __ActorMessage_Wait(0x13, 0, 0xa);
    __MapActor_SetAnim(0x14, 4);
    __ActorMessage_Wait(0x4014, 0, 0x14);
    __MapActor_Emote(3, 0x81 << 1, 0x3c);
    __ActorMessage_Wait(0x2003, 0, 0x28);
    __MapActor_DoAnim(0x13, 3);
    __ActorMessage_Wait(0x13, 0, 0xa);
    __Func_8092adc(3, 0xe0 << 8, 0x14);
    __MapActor_DoAnim(0x14, 3);
    __ActorMessage_Wait(0x4014, 0, 0xa);
    __Func_8092adc(3, 0xa0 << 8, 0x3c);
    __Func_8092adc(3, 0xe0 << 8, 0x14);
    __Func_8092adc(3, 0xa0 << 8, 0x14);
    __Func_8092adc(3, 0xc0 << 8, 0x28);
    __MapActor_DoAnim(3, 3);
    __ActorMessage_Wait(0x2003, 0, 0xa);
    __MapActor_SetAnim(0x13, 3);
    __MapActor_DoAnim(0x14, 3);
    __CutsceneWait(0x28);
    __Func_8092adc(3, 0x80 << 6, 0x14);
    __ActorMessage_Wait(0x4003, 0, 0x14);
    __Func_8092adc(0, 0xa0 << 8, 0x14);
    __MapActor_DoAnim(0, 3);
    __CutsceneWait(0x14);
    __MapActor_TravelToAnimWait(3, 0xac << 2, 0xc8);
    __MapActor_SetPos(3, 0, 0);

    actor = (unsigned char *)__MapActor_GetActor(0x14);
    actor[0x5a] &= 0xfe;
    __MapActor_TravelToAnimWait(0x14, 0xa1 << 2, 0xa6);
    __CutsceneWait(1);
    actor = (unsigned char *)__MapActor_GetActor(0x14);
    actor[0x5a] |= 1;

    p = *(unsigned char **)iwram_3001ebc;
    *(int *)(p + (0xe0 << 1)) = (0xe0 << 1) + 0x49;

    __SetFlag(0x82e);
    __ClearFlag(0x82d);
    __CutsceneEnd();
}
