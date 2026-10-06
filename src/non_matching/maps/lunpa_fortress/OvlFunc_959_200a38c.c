void OvlFunc_959_200a38c(void)
{
    if (*(short *)(iwram_3001ebc__a1 + 0xcb8) != 0 && __GetFlag(0x948) == 0) {
        __Func_801776c(0x1528, 1);
        __PlaySound(0xbc);
        __CutsceneWait(1);
        __Func_80105d4(6, 0x4d, 1, 2, 3, 0x37);
        __CutsceneWait(5);
        __Func_80105d4(7, 0x4d, 1, 2, 3, 0x37);
        __CutsceneWait(1);
        OvlFunc_959_200a2a0();
        __SetFlag(0x948);
    }
}
