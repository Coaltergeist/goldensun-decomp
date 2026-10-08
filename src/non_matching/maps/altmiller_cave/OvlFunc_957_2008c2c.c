extern unsigned char *iwram_3001f30;
extern void OvlFunc_957_2008b30(void);
extern void __Func_8092950(int, int);

void OvlFunc_957_2008c2c(void)
{
    unsigned char *p = iwram_3001f30;

    if (API_GetFlag(0x200)) {
        OvlFunc_957_2008b30();
        p[0x34] = 1;
    }
    if (*(short *)(gState._bytes + 0x1c0) == 0x97) {
        __Func_8092950(0x10, 6);
        __Func_8092950(0x11, 6);
        __Func_8092950(0x12, 6);
        __Func_8092950(0x13, 6);
        __Func_8092950(0x14, 6);
    }
}
