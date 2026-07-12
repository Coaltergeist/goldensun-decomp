extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_80b3284(int actor, int destination);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __Func_8093054(int actor, int message);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_937_200818c(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned int adjusted = *(unsigned short *)(actor + 6) - 0x6001;

    if ((adjusted << 16) <= 0x3ffe0000) {
        __Func_80b3284(7, 8);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x911)) {
            __MessageID(0x1afb);
            __ActorMessage(8, 0);
        } else {
            __MessageID(0x1ad7);
            __Func_8093054(8, 0);
            __SetFlag(0x910);
        }
        __CutsceneEnd();
    }
}
