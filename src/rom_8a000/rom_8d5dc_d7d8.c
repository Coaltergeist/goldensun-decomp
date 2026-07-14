extern void *FindMapActorEvent(int type, int actor);
extern void CutsceneStart(void);
extern void MessageID(int message);
extern void ActorMessage(int actor, int message);
extern void CutsceneEnd(void);

int Func_808d7d8(int actor)
{
    void *event;
    int result;

    event = FindMapActorEvent(6, actor);
    result = -1;
    if (event != 0 && *(int *)((char *)event + 8) != 0) {
        int field = *(int *)((char *)event + 8);

        if (field < 0x10000) {
            CutsceneStart();
            MessageID(*(int *)((char *)event + 8));
            ActorMessage(result, 0);
            result = 0;
            CutsceneEnd();
        } else {
            ((void (*)(int))field)(actor);
            result = 0;
        }
    }
    return result;
}
