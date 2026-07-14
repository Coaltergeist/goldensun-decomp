extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message_id);
extern short gState[];
extern void __MapActor_SetIdle(int actor);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __CutsceneWait(int frames);
extern void __ActorMessage(int actor, int mode);
extern void __MapActor_SetBehavior(int actor, int behavior);
extern void __CutsceneEnd(void);

void OvlFunc_888_20082ec(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x128b);
    } else {
        __MessageID(0x1379);
    }
    if (gState[0xe1] == 0xb) {
        __MessageID(0x1ceb);
    }
    __MapActor_SetIdle(9);
    __MapActor_SetAnim(9, 1);
    __CutsceneWait(2);
    __ActorMessage(9, 0);
    __MapActor_SetBehavior(9, 2);
    __CutsceneEnd();
}
