extern void Func_807a3a8(void);

extern unsigned int Func_8077330(unsigned int flag);

void Func_807a458(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int flag;
    unsigned int base;
    unsigned int *countPtr;
    unsigned char *arr;
    unsigned int idx;

    Func_807a3a8();
    flag = (arg0 <= 7) ? 0 : 1;
    base = Func_8077330(flag);
    countPtr = (unsigned int *)(base + 0x108);
    idx = *countPtr;
    arr = (unsigned char *)(base + 8) + (idx << 2);
    arr[0] = arg1;
    arr[1] = arg2;
    arr[2] = arg0;
    arr[3] = 0xff;
    *countPtr = idx + 1;
}
