extern void OvlFunc_968_200ab14(void);

void OvlFunc_968_200aee4(void)
{
    int a;
    int b;
    __CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0) {
        a = 5;
        b = 0x30;
        __Func_8010704(0x45, 0x30, 4, 2, a, b);
        a = 9;
        b = 0x25;
        __Func_8010704(0x49, 0x25, 9, 0xd, a, b);
        OvlFunc_968_2008374();
    }
    __CutsceneEnd();
    OvlFunc_968_200ab14();
}
