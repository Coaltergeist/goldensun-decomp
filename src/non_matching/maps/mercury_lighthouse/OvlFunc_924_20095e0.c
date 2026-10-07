void OvlFunc_924_20095e0(int arg0, unsigned int start, unsigned int end)
{
    extern void __CopyMapTiles(int, int, int, int, int, int);

    unsigned int i;

    if (arg0 != 0) {
        __PlaySound(0xdb);
    }

    for (i = start; i < end; i++) {
        __CopyMapTiles(0x2d - i * 2, 0x20, 0x2c - i * 2, 0x20, i + 1, 6);
        __CopyMapTiles(0x2d - i, 0x33, 0x2d - i, 0x20, 1, 6);
        __CopyMapTiles(0x6d - i, 0x20, 0x6c - i, 0x20, 1, 4);
        __CopyMapTiles(0x6d - i, 0x33, 0x6d - i, 0x20, 1, 4);
        if (arg0 != 0) {
            __Func_8012330(0x50000, 0x50000, 0x10000);
            __Func_8012330(-1, -1, 0xe666);
            __CutsceneWait(arg0);
        }
    }

    __Func_8010704(0x2a, 0x34, 4, 5, 0x2a, 0x21);
}