extern void Func_80a17c4(unsigned char *);

void Func_a1c6c(unsigned char **pp, int idx, int arg2, int arg3, int arg4)
{
    unsigned char *p;

    if (idx > 0xf)
        idx = 0;
    p = *pp;
    *(unsigned short *)(p + 8) = ((idx / arg4) << 4) + arg3;
    *(unsigned short *)(p + 6) = ((idx % arg4) * 3 << 3) + arg2;
    Func_80a17c4(p);
}
