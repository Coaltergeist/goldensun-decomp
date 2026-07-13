extern void __Func_80105d4(
    int actor, int x, int y, int mode, int palette, int frame);
extern void __Func_8010704(
    int actor, int x, int y, int mode, int palette, int frame);

/* 右側の二人へ立ち位置と表示設定を与える */
void OvlFunc_959_200a468(void)
{
    __Func_80105d4(8, 0x4d, 1, 2, 0x11, 0x52);
    __Func_80105d4(8, 0x4d, 1, 2, 3, 0x37);
    __Func_8010704(0x12, 0x23, 1, 1, 0x11, 0x23);
    __Func_8010704(2, 0xa, 1, 1, 3, 0xa);
}
