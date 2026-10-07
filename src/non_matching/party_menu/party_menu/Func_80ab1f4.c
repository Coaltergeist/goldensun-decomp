extern unsigned int _Func_8022768(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4);

unsigned int Func_80ab1f4(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4, unsigned int arg5)
{
    unsigned int r4;
    unsigned int r6;
    r4 = arg0;
    r6 = arg3;
    return _Func_8022768(
        *(unsigned short *)((char *)r4 + 0xc) + arg1 + 1,
        *(unsigned short *)((char *)r4 + 0xe) + arg2 + 1,
        r6,
        arg4,
        arg5
    );
}
