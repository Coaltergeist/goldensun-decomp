void Func_800c548(unsigned char *arg0, unsigned int arg1)
{
    unsigned char *p;

    if (arg0 == (unsigned char *)0) return;
    if (arg0[0x54] != 1) return;
    p = *(unsigned char **)(arg0 + 0x50);
    p[5] = (p[5] & -13) | ((arg1 & 3) << 2);
}
