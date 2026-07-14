extern void __Func_801776c(int message, int arg1);
extern void __SetMinLevel(int, int);
extern void __CalcStats(int);
extern int L1684 asm(".L1684");

void OvlFunc_974_2008244(void)
{
    __Func_801776c(0xc1a, 1);
    __SetMinLevel(0, L1684);
    __SetMinLevel(1, L1684);
    __SetMinLevel(3, L1684);
    __SetMinLevel(2, L1684);
    L1684 += 10;
    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
}
