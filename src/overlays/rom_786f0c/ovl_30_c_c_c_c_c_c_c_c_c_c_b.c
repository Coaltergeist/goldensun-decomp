typedef struct MapActor {
    unsigned char padding00[6];
    unsigned short facing;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern void __Func_80b0278(int actorId, int target);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actorId, int message);
extern void __CutsceneEnd(void);

void OvlFunc_886_200855c(void)
{
    MapActor *player = __MapActor_GetActor(0);

    if ((unsigned int)(player->facing + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(2, 0x16);
        return;
    }

    __CutsceneStart();
    if (__GetFlag(0x87a) != 0) {
        __MessageID(0x1c09);
    } else if (__GetFlag(0x815) != 0) {
        __MessageID(0x11a3);
    } else {
        __MessageID(0xf54);
    }
    __ActorMessage(0x16, 0);
    __CutsceneEnd();
}
