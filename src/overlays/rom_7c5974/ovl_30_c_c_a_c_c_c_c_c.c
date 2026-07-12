extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_80b0278(int actor, int arg1);
extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_940_2008224(void) {
    unsigned char *actor = __MapActor_GetActor(0);

    if ((unsigned int)(*(unsigned short *)(actor + 6) + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(0x19, 0x10);
        return;
    }
    if (__GetFlag(0x941) != 0) {
        __CutsceneStart();
        __MessageID(0x24f9);
        __ActorMessage(0x10, 0);
        __CutsceneEnd();
        return;
    }
    __CutsceneStart();
    __MessageID(0x1bcf);
    __ActorMessage(0x10, 0);
    __CutsceneEnd();
}
