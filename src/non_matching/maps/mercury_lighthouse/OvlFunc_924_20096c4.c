void OvlFunc_924_20096c4(int arg0)
{
    extern void __CopyMapTiles(int, int, int, int, int, int);

    unsigned int i;

    __PlaySound(0xdb);
    for (i = 0; i <= 2; i++) {
        __CopyMapTiles(0x28 + i * 2, 0x20, 0x29 + i * 2, 0x20, 3 - i, 6);
        __CopyMapTiles(0x27, 0x33, 0x28 + i * 2, 0x20, 1, 6);
        __CopyMapTiles(0x69, 0x33, i + 0x6a, 0x20, 2, 4);
        if (arg0 != 0) {
            __Func_8012330(0xa0 << 11, 0xa0 << 11, 0x80 << 9);
            __Func_8012330(-1, -1, 0xe666);
            __CutsceneWait(arg0);
        }
    }
    __PlaySound(0x120);
    __Func_8010704(0x6a, 0x21, 4, 5, 0x2a, 0x21);
    __Func_8012350();
}
