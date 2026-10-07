extern unsigned char iwram_3001ebc[];
extern unsigned char gState[];

void OvlFunc_923_20091b4(void)
{
    extern void __Func_80925cc(int, int);
    extern void __Func_8091f90(int, int);
    extern void __StartMapBattle(int, int);

    __CutsceneStart();
    __Func_80925cc(8, 2);
    __CutsceneWait(20);
    *(int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x200;
    __Func_8091f90(0x35, 0x1f);
    gState[0x22b] = 3;
    __StartMapBattle(0x24, 1);
    __CutsceneEnd();
}
