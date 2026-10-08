extern void __Func_8092950(int, int);

void OvlFunc_957_2008bc8(void)
{
    short v = *(short *)(gState._bytes + 0x1c0);

    if (v == 0x92)
        REG_BLDALPHA = 0x1000;
    if (v == 0x97) {
        __Func_8092950(0x10, 1);
        __Func_8092950(0x11, 4);
        __Func_8092950(0x12, 0xb);
        __Func_8092950(0x13, 2);
        __Func_8092950(0x14, 3);
    }
}
