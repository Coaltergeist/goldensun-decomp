int Kalay_MapInit(void)
{
    extern void __SetFlag(int);
    extern void OvlFunc_936_20096bc(void);
    extern void OvlFunc_936_20097e8(void);
    extern void OvlFunc_936_2009858(void);
    extern void OvlFunc_936_20098a4(void);
    extern void OvlFunc_936_2009930(void);
    GlobalState *p;
    int ev;

    __SetFlag(0x87a);
    p = &gState;
    ev = *(short *)((char *)p + 0x1c0);
    if (ev == 0x63)
        OvlFunc_936_20096bc();
    else if (ev == 0x66)
        OvlFunc_936_20097e8();
    else if (ev == 0x99)
        OvlFunc_936_2009858();
    else if (ev == 0x9b)
        OvlFunc_936_20098a4();
    else if (ev == 0x9c)
        OvlFunc_936_2009930();
    return 0;
}
