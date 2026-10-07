int OvlFunc_947_20099f0(unsigned char *a, unsigned char *b)
{
    unsigned int av;
    unsigned char *s;

    if (*(int *)(b + 8) == *(int *)(a + 8)
     && *(int *)(b + 0xc) == *(int *)(a + 0xc)
     && *(int *)(b + 0x10) == *(int *)(a + 0x10))
        return 0;

    if (*(int *)(a + 8) - 0x100000 < *(int *)(b + 8)
     && *(int *)(b + 8) < *(int *)(a + 8) + 0x100000
     && *(int *)(b + 0xc) / 0x10000 == *(int *)(a + 0xc) / 0x10000
     && *(int *)(a + 0x10) > *(int *)(b + 0x10)
     && *(int *)(a + 0x10) - 0x200000 < *(int *)(b + 0x10)) {
        av = (unsigned int)(*(*(unsigned char **)(a + 0x50) + 9) << 28) >> 30;
        if (av > (unsigned int)(*(*(unsigned char **)(b + 0x50) + 9) << 28) >> 30) {
            b[0x23] &= 0xfe;
            s = *(unsigned char **)(b + 0x50);
            s[9] = (s[9] & ~0xc) | (av << 2);
            s = *(unsigned char **)(b + 0x50);
            s[0x15] = (s[0x15] & ~0xc) | (*(*(unsigned char **)(a + 0x50) + 0x15) & 0xc);
        }
        return 1;
    }
    return 0;
}
