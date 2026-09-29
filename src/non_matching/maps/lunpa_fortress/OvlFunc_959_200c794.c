extern int __Func_8091c7c(int, int);
extern void __ShowActorMessage_NoWait(int, int);

void OvlFunc_959_200c794(void)
{
    int msg;

    __CutsceneStart();
    if (__GetFlag(0x941)) {
        __MessageID(0x2566);
        __ActorMessage(0x12, 0);
        __CutsceneEnd();
        return;
    }
    if (__GetFlag(0x313)) {
        __MessageID(0x2457);
        __ShowActorMessage_NoWait(0x19, 0);
        __CutsceneEnd();
        return;
    }

    __MapActor_Emote(0x19, 0x102, 0x1e);
    __MapActor_Face(0x19, 0, 0);

    msg = 0x244f;
    __MessageID(msg);
    __ActorMessage(0x19, 0);

    __MapActor_Face(0x19, 0x18, 0);
    __Func_8093500(0x18, 1);
    __Func_8093530();
    __CutsceneWait(0x3c);
    __Func_8093500(0, 1);
    __CutsceneWait(0x14);

    __MapActor_Emote(0x19, 0x105, 0x3c);
    __MessageID(msg + 1);
    __ActorMessage(0x19, 0);

    __MapActor_Emote(0x19, 0x107, 0x3c);
    __MessageID(msg + 2);
    __ActorMessage(0x19, 0);

    __CutsceneWait(0x46);
    __MapActor_Emote(0x19, 0x100, 0x3c);
    __MapActor_Face(0x19, 0, 0);

    __MessageID(msg + 3);
    __ShowActorMessage_NoWait(0x19, 0);

    if (!__Func_8091c7c(0, 0)) {
        __MessageID(msg + 4);
        __ShowActorMessage_NoWait(0x19, 0);
    } else {
        __MessageID(msg + 5);
        __ShowActorMessage_NoWait(0x19, 0);
    }

    __CutsceneWait(0x3c);
    __MapActor_Emote(0x19, 0x105, 0x3c);

    msg = 0x2455;
    __MessageID(msg);
    __ShowActorMessage_NoWait(0x19, 0);

    __Func_80925cc(0x19, 1);
    __MessageID(msg + 1);
    __ShowActorMessage_NoWait(0x19, 0);

    msg += 2;
    __MapActor_DoAnim(0x19, 3);
    __MessageID(msg);
    __ShowActorMessage_NoWait(0x19, 0);

    __SetFlag(0x313);
    __CutsceneEnd();
}
