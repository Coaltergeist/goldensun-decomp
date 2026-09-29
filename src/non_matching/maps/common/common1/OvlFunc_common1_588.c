void OvlFunc_common1_588(unsigned int arg0, unsigned int arg1)
{
    unsigned int r3;
    unsigned int r1;
    short r2;
    int msg;

    __Func_8019908(arg1, 5);

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r1 = 0;
    r2 = *(short *)((char *)r3 + r1);

    if (r2 == 0x8f) {
        msg = 0x2076;
    } else if (r2 == 0x90) {
        msg = 0x2078;
    } else {
        msg = 0x207a;
    }

    __MessageID(msg + 1);
    __ActorMessage(arg0, 0);
}
