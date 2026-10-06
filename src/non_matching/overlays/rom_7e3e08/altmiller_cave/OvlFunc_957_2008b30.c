#define REG_BLDCNT (*(volatile unsigned short *)0x04000050)

#define REG_BLDALPHA (*(volatile unsigned short *)0x04000052)

void OvlFunc_957_2008b30(void)
{
    unsigned char *base;
    unsigned char *p;
    unsigned short v1;
    unsigned int w1;
    unsigned short v2;
    unsigned int w2;
    unsigned short v3;
    unsigned int w3;
    unsigned int w4;

    base = *(unsigned char **)iwram_3001ebc;
    *(unsigned int *)(base + 0x1c0) = 0x100;
    *(unsigned int *)(base + 0x1c8) = 0x18;
    __WaitFrames(1);
    __Func_808fe38(0x4d);
    p = *(unsigned char **)(iwram_3001ebc + 0x10);
    v1 = 5;
    *(unsigned short *)(p + 0x52a) = v1;
    if (__GetFlag(0x201)) {
        w1 = 0x1d1d;
        *(unsigned short *)(p + 0x534) = (unsigned short)w1;
        v2 = 0x3f;
        *(unsigned short *)(p + 0x536) = v2;
        OvlFunc_957_2008a54();
    } else {
        w2 = 0x3f3f;
        *(unsigned short *)(p + 0x534) = (unsigned short)w2;
        v3 = 0x1f;
        *(unsigned short *)(p + 0x536) = v3;
        w3 = 0x3f42;
        REG_BLDCNT = (unsigned short)w3;
        w4 = 0xc04;
        REG_BLDALPHA = (unsigned short)w4;
    }
}
