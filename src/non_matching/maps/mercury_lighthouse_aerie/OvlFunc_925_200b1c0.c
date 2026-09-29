extern unsigned char iwram_3001ebc[];

void OvlFunc_925_200b1c0(unsigned int *out, unsigned int arg1)
{
    unsigned int **p;
    int base, hi, lo;
    unsigned int i;

    base = 0x40 - ((int)arg1 >> 20);
    hi = base + 8;
    lo = base + 11;
    p = (unsigned int **)(*(unsigned int **)iwram_3001ebc);
    p = (unsigned int **)((char *)p + 0x14);

    for (i = 0; i <= 0x41; i++) {
        unsigned int *elem;
        elem = *p++;
        if (elem != 0) {
            int f8, f10;
            f8 = (*(int *)((char *)elem + 8) >> 20) - 4;
            f10 = *(int *)((char *)elem + 0x10) >> 20;
            if ((unsigned int)f8 <= 4 && hi <= f10 && f10 < lo) {
                *out++ = i;
            }
        }
    }
}
