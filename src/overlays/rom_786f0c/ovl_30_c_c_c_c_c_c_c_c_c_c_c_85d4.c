typedef struct MapActor {
    unsigned char padding00[6];
    unsigned short facing;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern void __Func_80b0278(int actorId, int target);
extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actorId, int message);
extern void __CutsceneEnd(void);
extern void OvlFunc_886_20081e8(void);

void OvlFunc_886_20085d4(void)
{
    MapActor *player = __MapActor_GetActor(0);

    if ((unsigned int)(player->facing + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(3, 0x14);
        return;
    }

    if (__GetFlag(0x87a) != 0) {
        __CutsceneStart();
        __MessageID(0x1c0a);
        __ActorMessage(0x14, 0);
        __CutsceneEnd();
        return;
    }

    if (__GetFlag(0x815) != 0) {
        OvlFunc_886_20081e8();
        return;
    }

    __CutsceneStart();
    __MessageID(0xf55);
    __ActorMessage(0x14, 0);
    __CutsceneEnd();
}
