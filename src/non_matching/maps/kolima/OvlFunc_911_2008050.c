unsigned int OvlFunc_911_2008050(unsigned int arg0)
{
    extern unsigned int __Random(void);
    extern int __Func_80929d8(int a, int b);
    short *counter = (short *)(arg0 + 0x64);

    *counter += (__Random() * 100) >> 16;
    if (*counter > 1000) {
        __Func_80929d8(arg0, 7);
    } else {
        __Func_80929d8(arg0, 0xa);
    }
    if (*counter > 1200) {
        *counter = 0;
    }
    return 1;
}
