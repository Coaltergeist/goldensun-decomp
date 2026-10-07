int __Func_80198dc(void);
int __Func_8019908(int, int);

int OvlFunc_971_2008d68(int actor)
{
    unsigned int r2;
    unsigned int r3;
    unsigned int r5;
    unsigned int r6;
    unsigned int msg;

    r5 = *(unsigned short *)(__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r6 = (unsigned int)&gState;
    r2 = 0xfa;
    r2 <<= 1;
    r3 = r6 + r2;
    __MapActor_Face(actor, *(int *)r3, 0);

    r5 -= 0xa001;
    if (r5 <= 0x3ffe) {
        r2 = 0xab;
        msg = 0x297b;
        r2 <<= 2;
        r5 = r6 + r2;
        if (*(unsigned short *)r5 == 0) {
            msg = 0x2988;
            goto show_msg;
        }
    } else {
        r5 = r6 + 0x2b2;
        msg = 0x297d;
        if (*(unsigned short *)r5 == 0) {
            __MessageID(0x2989);
            return __ActorMessage(actor, 0);
        }
    }

    __Func_80198dc();
    __Func_8019908(*(unsigned short *)r5, 5);
    msg++;
show_msg:
    __MessageID(msg);
    return __ActorMessage(actor, 0);
}
