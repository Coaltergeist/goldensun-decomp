extern unsigned char *__MapActor_GetActor(int actor);
extern void __UI_Sanctum(int actor);
extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_940_200816c(void) {
    unsigned char *actor = __MapActor_GetActor(0);

    if ((unsigned int)(*(unsigned short *)(actor + 6) + 0xffff5fff) <= 0x3ffe) {
        __UI_Sanctum(0x15);
        return;
    }
    if (__GetFlag(0x941) != 0) {
        __CutsceneStart();
        __MessageID(0x2507);
        __ActorMessage(0x15, 0);
        __CutsceneEnd();
        return;
    }
    __CutsceneStart();
    __MessageID(0x1bdc);
    __ActorMessage(0x15, 0);
    __CutsceneEnd();
}
