extern void OvlFunc_895_200892c(void);

extern void OvlFunc_895_2008a24(void);

int Sol_MapInit(void) {
    unsigned int r3;
    unsigned int r1;
    short r2;

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r1 = 0;
    r2 = *(short *)((char *)r3 + r1);
    if (r2 == 0x13) {
        OvlFunc_895_200892c();
    } else if (r2 == 0x10) {
        OvlFunc_895_2008a24();
    }
    return 0;
}
