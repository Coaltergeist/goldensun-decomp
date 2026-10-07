void Func_800c570(unsigned char *arg0, unsigned int arg1)
{
    unsigned char *p;

    if (arg0 == (unsigned char *)0) return;
    if (arg0[0x54] != 1) return;
    p = *(unsigned char **)(arg0 + 0x50);
    p[0x1d] = (p[0x1d] & -3) | ((arg1 & 1) << 1);
}
