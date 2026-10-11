int OvlFunc_947_20099f0(unsigned char *a, unsigned char *b)
{
    unsigned int val;
    unsigned char *s;
    int mask;
    int ret = 0;

    if (*(int *)(b + 8) == *(int *)(a + 8)
     && *(int *)(b + 0xc) == *(int *)(a + 0xc)
     && *(int *)(b + 0x10) == *(int *)(a + 0x10))
        return ret;

    if (*(int *)(a + 8) - 0x100000 < *(int *)(b + 8)
     && *(int *)(b + 8) < *(int *)(a + 8) + 0x100000
     && *(int *)(b + 0xc) / 0x10000 == *(int *)(a + 0xc) / 0x10000
     && *(int *)(a + 0x10) > *(int *)(b + 0x10)
     && *(int *)(a + 0x10) - 0x200000 < *(int *)(b + 0x10)) {
        val = (unsigned int)*(*(unsigned char **)(a + 0x50) + 9) << 28;
        if ((val >> 30) > (unsigned int)(*(*(unsigned char **)(b + 0x50) + 9) << 28) >> 30) {
            b[0x23] &= 0xfe;
            s = *(unsigned char **)(b + 0x50);
            mask = ~0xc;
            s[9] = (s[9] & mask) | ((val >> 30) << 2);
            s = *(unsigned char **)(b + 0x50);
            s[0x15] = (s[0x15] & mask) | (*(*(unsigned char **)(a + 0x50) + 0x15) & 0xc);
        }
        ret = 1;
    }
    return ret;
}
