extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void __SetFlag(int flag);

void OvlFunc_939_2008fa0(void)
{
    __Func_8010704(6, 11, 1, 1, 7, 11);
    __Func_8010704(6, 11, 1, 1, 8, 11);
    __Func_8010704(6, 11, 1, 1, 9, 11);
    __SetFlag(0x241);
}
