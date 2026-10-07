extern void OvlFunc_898_2008938(int);

void OvlFunc_898_2008cfc(void) {
    unsigned char *m;
    unsigned char *b;

    m = (unsigned char *)__MapActor_GetActor(0xe);
    m += 0x64;
    *(unsigned short *)m |= 2;
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x123c);
    } else {
        __MessageID(0x1349);
        if (__GetFlag(2) != 0) {
            b = iwram_3001ebc;
            b += 0xec << 1;
            *(unsigned short *)b = *(unsigned short *)b + 1;
        }
    }
    OvlFunc_898_2008938(0xe);
    __CutsceneEnd();
    m = (unsigned char *)__MapActor_GetActor(0xe);
    m += 0x64;
    *(unsigned short *)m &= 1;
}
