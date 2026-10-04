unsigned int OvlFunc_971_2008f8c(int actor)
{
    unsigned int msg;
    int party0;
    int party_actor;
    int flag;
    int off;
    unsigned char *p;

    msg = 0x294e;
    party0 = OvlFunc_971_2008f30(0);
    party_actor = OvlFunc_971_2008f30(actor);
    __CutsceneStart();

    off = 0xfa;
    off <<= 1;
    p = (unsigned char *)&gState + off;
    __MapActor_Face(actor, *(int *)p, 0);

    if (__GetFlag(0xc1 << 2) != 0) {
        __GetFlag(0xbc << 2);
        flag = __GetFlag((0xbc << 2) + actor);
        if (__GetFlag(0x305) != 0) {
            if (flag != 0) {
                msg = 0x2967;
            } else {
                msg = 0x296c;
            }
        } else {
            if (flag != 0) {
                msg = 0x2971;
            } else {
                msg = 0x2976;
            }
        }
    } else {
        if (party0 != 0) {
            if (party_actor == 0) {
                msg = 0x2953;
            }
        } else {
            msg = 0x2958;
        }
    }

    __MessageID(msg + actor - 1);
    __ActorMessage(actor, 0);
    return __CutsceneEnd();
}
