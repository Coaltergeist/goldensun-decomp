typedef struct { unsigned char _bytes[704]; } GlobalState;

extern GlobalState gState;

unsigned int OvlFunc_880_2008384(void)
{
    unsigned int result;
    short a;

    result = 0;
    if (__GetFlag(0x144)) {
        a = *(short *)((char *)&gState + 0x23e);
        if (a == 2) {
            result = 0;
        } else {
            short b = *(short *)((char *)&gState + 0x1c0);
            result = -(unsigned int)((b ^ 2) != 0);
        }
    }
    return result;
}
