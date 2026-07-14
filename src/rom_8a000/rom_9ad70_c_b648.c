extern unsigned int gState[];
extern void _Func_8019908(unsigned int arg0, unsigned int arg1);
extern void _Func_801776c(unsigned int message, unsigned int arg1);

void Func_809b648(void)
{
    unsigned int idx;
    signed char flag;

    idx = 0x91 << 2;
    *(unsigned int *)((char *)gState + idx) = 0;
    idx = 0x92 << 2;
    flag = *((char *)gState + idx);
    if (flag == 0) {
        _Func_8019908(0x96, 4);
        _Func_801776c(0x923, 1);
    } else {
        _Func_8019908(0xec, 2);
        _Func_801776c(0x925, 1);
    }
}
