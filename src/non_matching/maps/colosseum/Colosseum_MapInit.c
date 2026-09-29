extern void OvlFunc_953_2009a4c(void);

extern void OvlFunc_953_2009c6c(void);

int Colosseum_MapInit(void)
{
    unsigned int r3;
    unsigned int r1;
    short r2;

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r2 = *(short *)((char *)r3 + 0);
    if (r2 == 0x8c) {
        OvlFunc_953_2009a4c();
    } else if (r2 == 0x8e) {
        OvlFunc_953_2009c6c();
    }
    return 0;
}
