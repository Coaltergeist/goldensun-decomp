extern void __MessageID(int id);
extern void __ActorMessage(int actor, int value);
extern void __Func_80925cc(int actor, int value);
extern void __MapActor_DoAnim(int actor, int anim);

void OvlFunc_959_2009ca4(int actor)
{
    int message = 0x2421;

    __MessageID(message);
    __ActorMessage(actor, 0);
    __Func_80925cc(actor, 1);
    __MessageID(message + 1);
    __ActorMessage(actor, 0);
    message += 2;
    __MapActor_DoAnim(actor, 4);
    __MessageID(message);
    __ActorMessage(actor, 0);
}
