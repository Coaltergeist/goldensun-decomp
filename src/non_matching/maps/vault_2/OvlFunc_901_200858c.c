struct Actor58c {
    char pad[6];
    short facing;
    char pad2[0x64 - 8];
    unsigned short flags;
};

extern void *__MapActor_GetActor(unsigned int);

void OvlFunc_901_200858c(void)
{
    struct Actor58c *actor;
    short facing;
    int msg;

    actor = (struct Actor58c *)__MapActor_GetActor(0xe);
    facing = actor->facing;
    actor->flags |= 2;
    API_CutsceneStart();
    msg = 0x1cb1;
    API_MessageID(msg);
    API_MapActor_SetAnim(0xe, 0);
    API_MapActor_TurnToFaceActor(0xe, 0, 2);
    if (API_GetFlag(0xc0 << 2) == 0) {
        API_MapActor_Emote(0xe, 0x80 << 1, 0x3c);
        API_ActorMessage_Wait(0xe, 0, 0xa);
        API_ActorMessage_Wait(0xe, 0, 0xa);
        API_SetFlag(0xc0 << 2);
    }
    API_MessageID(msg + 2);
    API_ActorMessage_Wait(0xe, 0, 0xa);
    actor->facing = facing;
    API_WaitFrames(1);
    API_CutsceneEnd();
    actor->flags = 1;
    API_SetFlag(0x307);
}
