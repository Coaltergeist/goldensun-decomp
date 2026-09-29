unsigned int Func_80c23a0(int n)
{
    unsigned char *r3;
    if (n > 0xab)
        return *(unsigned short *)Lc7420;
    r3 = Lc7420;
    return ((unsigned int)r3[n * 8 + 3] << 27) >> 28;
}
