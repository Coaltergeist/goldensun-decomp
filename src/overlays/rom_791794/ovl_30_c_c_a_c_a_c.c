extern void __CopyMapTiles(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void __Func_800fe9c(void);

void OvlFunc_897_200a84c(int alternate)
{
    if (alternate != 0) {
        __CopyMapTiles(8, 0x2f, 0x40, 7, 1, 1);
        __CopyMapTiles(7, 0x30, 0x3f, 8, 2, 1);
        __CopyMapTiles(7, 0x31, 0x3f, 9, 2, 1);
    } else {
        __CopyMapTiles(0x38, 0, 0x40, 7, 1, 1);
        __CopyMapTiles(0x38, 0, 0x3f, 8, 1, 1);
        __CopyMapTiles(0x38, 0, 0x3f, 9, 2, 1);
        __CopyMapTiles(0x3a, 0x19, 0x40, 8, 1, 1);
    }
    __Func_800fe9c();
}

void OvlFunc_897_200a8dc(int alternate)
{
    if (alternate != 0) {
        __CopyMapTiles(9, 0x2d, 0x41, 5, 2, 2);
        __CopyMapTiles(0xb, 0x2e, 0x43, 6, 1, 2);
    } else {
        __CopyMapTiles(0x59, 2, 0x41, 5, 2, 2);
        __CopyMapTiles(0x66, 0x20, 0x43, 6, 1, 2);
    }
    __Func_800fe9c();
}
