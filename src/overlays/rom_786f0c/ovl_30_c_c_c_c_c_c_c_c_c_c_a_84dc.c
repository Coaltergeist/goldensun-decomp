typedef struct MapActor {
    unsigned char padding00[6];
    unsigned short facing;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern void __Func_80b0278(int actorId, int target);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __Func_8093054(int actorId, int value);
extern void __ActorMessage(int actorId, int message);
extern void __CutsceneEnd(void);

void OvlFunc_886_20084dc(void)
{
    MapActor *player = __MapActor_GetActor(0);

    if ((unsigned int)(player->facing + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(1, 0x15);
        return;
    }

    __CutsceneStart();
    if (__GetFlag(0x87a) != 0) {
        __MessageID(0x1c06);
        __Func_8093054(0x15, 0);
    } else {
        if (__GetFlag(0x815) != 0) {
            __MessageID(0x11a2);
        } else {
            __MessageID(0xf53);
        }
        __ActorMessage(0x15, 0);
    }
    __CutsceneEnd();
}
