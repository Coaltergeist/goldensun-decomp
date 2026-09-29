void OvlFunc_951_20088f8(int arg0)
{
    int msg;
    int var;
    int ret;

    var = __Func_8078b60(0xe4);
    __Func_808ba38();
    if (arg0 == 0) {
        msg = 0xe23;
        __MessageID(msg);
        __ActorMessage(8, 0);
        if (var == 0) {
            __ActorMessage(8, 0);
            return;
        }
        __MessageID(msg + 2);
        __Func_8019908(var, 5);
        __ShowActorMessage_NoWait(8, 0);
        if (__Func_8091c7c(0, 0) != 0) {
            __ActorMessage(8, 0);
            return;
        }
        ret = __Func_8078550();
        if (ret == 0) {
            __MessageID(msg + 4);
            __ShowActorMessage_NoWait(8, 0);
        } else {
            if (ret > 6)
                goto fail;
            __MessageID(msg + 5);
            __ShowActorMessage_NoWait(8, 0);
        }
        if (ret > 6)
            goto fail;
        if (__Func_8091c7c(0, 0) == 0)
            goto fail;
        msg = 0xe29;
    } else if (var == 0) {
        msg = 0xe32;
    } else {
        __MessageID(0xe33);
        __ShowActorMessage_NoWait(8, 0);
        if (__Func_8091c7c(0, 0) == 0)
            goto fail;
        msg = 0xe31;
    }
    __MessageID(msg);
    __ActorMessage(8, 0);
    return;

fail:
    __MessageID(0xe2a);
    __ActorMessage(8, 0);
    __SetDestMap2(0x1fc, 0);
    __Func_8091f90(0x89, 0xc);
}
