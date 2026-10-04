extern void __Func_8079664(int);
extern void __AddPartyMember(int);
extern void __Func_8078ad0(int, int);

int MenuTest_MapInit(void) {
    __Func_8079664(5);
    __AddPartyMember(1);
    __AddPartyMember(3);
    __AddPartyMember(2);
    __Func_8078ad0(5, 1);
    __Func_8078ad0(5, 1);
    __Func_8078ad0(5, 1);
    __Func_8078ad0(6, 1);
    __Func_8078ad0(6, 1);
    __Func_8078ad0(7, 1);
    __Func_8078ad0(0x6a, 1);
    __Func_8078ad0(0x6c, 1);
    __Func_8078ad0(0x6d, 1);
    __Func_8078ad0(0x71, 1);
    __Func_8078ad0(0x7b, 1);
    __Func_8078ad0(0x82, 1);
    __Func_8078ad0(0x8c, 1);
    __Func_8078ad0(0x97, 1);
    __SetMinLevel(0, 0x32);
    __SetMinLevel(1, 0x1e);
    __SetMinLevel(3, 0x1e);
    __SetMinLevel(2, 0x1e);
    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
    return 0;
}
