extern void __PlaySound(int);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __Func_8012330(int, int, int);
extern void __CutsceneWait(int);
extern void __Func_8010704(int, int, int, int, int, int);

static __inline__ void CallFunc_8012330Narrow(int first, signed short second,
                                              int third)
{
    __Func_8012330(first, second, third);
}

static __inline__ void CallFunc_8012330Equal(int value, int third)
{
    __Func_8012330(value, value, third);
}

void OvlFunc_924_20095e0(int wait, unsigned int first, unsigned int end)
{
    unsigned int i;

    if (wait != 0) {
        __PlaySound(0xdb);
    }
    i = first;
    while (i < end) {
        int next;
        int right;

        next = i + 1;
        __CopyMapTiles(0x2d - i * 2, 0x20, 0x2c - i * 2, 0x20,
                       next, 6);
        __CopyMapTiles(0x2d - i, 0x33, 0x2d - i, 0x20, 1, 6);
        right = 0x6d - i;
        __CopyMapTiles(right, 0x20, 0x6c - i, 0x20, 1, 4);
        __CopyMapTiles(right, 0x33, right, 0x20, 1, 4);
        if (wait != 0) {
            CallFunc_8012330Equal(0x50000, 0x10000);
            CallFunc_8012330Narrow(-1, -1, 0xe666);
            __CutsceneWait(wait);
        }
        i = next;
    }
    {
        int fortyTwo;
        int thirtyThree;

        fortyTwo = 0x2a;
        thirtyThree = 0x21;
        __Func_8010704(0x2a, 0x34, 4, 5, fortyTwo, thirtyThree);
    }
}
