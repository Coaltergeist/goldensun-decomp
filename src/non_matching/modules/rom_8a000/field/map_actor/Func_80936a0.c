extern int _call_via_r3(void);

extern int StartTask(void *task, unsigned int priority);

extern int Func_80008ac(int num, int denom);

extern void Func_80935d4(void);

struct Pair {
    unsigned short lo;
    unsigned short hi;
};

void Func_80936a0(unsigned int arg0, unsigned int arg1)
{
    unsigned char *pFVar1;
    void *pvVar2;

    pFVar1 = (unsigned char *)iwram_3001e70;
    pvVar2 = galloc_ewram(0x1b, 0xccc);
    if (*(short *)((int)pvVar2 + (0xcf << 1)) == 3)
    {
        int (*divide)(int, int);
        int ret;
        unsigned int *arr;
        volatile struct Pair *parr;

        divide = Func_80008ac;
        ret = divide(arg0, 0x10000);
        arr = (unsigned int *)pFVar1;
        parr = (volatile struct Pair *)pFVar1;
        arr[0xd4] = arr[0xd5];
        arr[0xd5] = ret;
        parr[0xd6].lo = arg1;
        parr[0xd6].hi = 0;
        StartTask((void *)Func_80935d4, 0xc94);
    }
}
