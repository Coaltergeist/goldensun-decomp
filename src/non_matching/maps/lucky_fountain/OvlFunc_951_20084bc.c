extern void __CopyMapTiles(int, int, int, int, int, int);

static inline void CopyTiles(int x, int y)
{
    __CopyMapTiles(x, y, 70, 0, 3, 8);
}

void OvlFunc_951_20084bc(int item)
{
    extern void __CutsceneStart(void);
    extern void __CutsceneEnd(void);
    extern void __CutsceneWait(int);
    extern void __PlaySound(int);
    extern void __Func_8092adc(int, int, int);
    extern void __Func_808f1c0(int, int);
    extern void __Func_8091a58(int, int);

    __CutsceneStart();
    __CutsceneWait(30);
    __PlaySound(0x94);
    __CutsceneWait(100);
    __Func_8092adc(0, 0xc000, 0);
    __CutsceneWait(40);

    CopyTiles(82, 20);
    __CutsceneWait(3);

    CopyTiles(85, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(88, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(91, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(94, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(97, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(100, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(79, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(82, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(85, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(88, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(91, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(94, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(97, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(100, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    __CutsceneWait(70);
    __PlaySound(0x7e);
    __Func_808f1c0(item, 3);
    __Func_8091a58(item, 0);
    __CutsceneWait(20);

    CopyTiles(97, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(94, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(91, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(88, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(85, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(82, 29);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(100, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(97, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(94, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(91, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(88, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(85, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(82, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    CopyTiles(79, 20);
    __PlaySound(0x9a);
    __CutsceneWait(8);

    __CutsceneEnd();
}
