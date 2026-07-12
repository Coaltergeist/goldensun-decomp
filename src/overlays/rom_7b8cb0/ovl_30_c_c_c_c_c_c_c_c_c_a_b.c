typedef struct MapActor {
    unsigned char padding00[6];
    unsigned short facing;
} MapActor;

extern MapActor *__MapActor_GetActor(int actor);
extern void __Func_80b3284(int actor, int target);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __Func_8093054(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_931_20084bc(void)
{
    MapActor *player = __MapActor_GetActor(0);

    if (((unsigned int)(player->facing + 0x5fff) << 16) <= 0x3ffe0000) {
        __Func_80b3284(6, 0x12);
        return;
    }

    __CutsceneStart();
    if (__GetFlag(0x909) != 0) {
        __MessageID(0x1947);
        __ActorMessage(0x12, 0);
    } else {
        __MessageID(0x18f5);
        __Func_8093054(0x12, 0);
    }
    __CutsceneEnd();
}
