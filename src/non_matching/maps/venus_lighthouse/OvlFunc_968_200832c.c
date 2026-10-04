extern unsigned char iwram_3001ebc[];

unsigned int OvlFunc_968_200832c(unsigned int *arg0)
{
    unsigned int *base;
    unsigned char *p;
    unsigned int i;
    int x;

    base = *(unsigned int **)iwram_3001ebc;
    x = (int)arg0[0] >> 20;
    i = 8;
    p = (unsigned char *)base + 0x34;
    for (; i <= 0x41; i++) {
        unsigned int *q = *(unsigned int **)p;
        p += 4;
        if (x == ((int)*(unsigned int *)((char *)q + 8) >> 20) &&
            ((int)arg0[1] >> 20) == ((int)*(unsigned int *)((char *)q + 0xc) >> 20) &&
            ((int)arg0[2] >> 20) == ((int)*(unsigned int *)((char *)q + 0x10) >> 20))
            return (unsigned int)q;
    }
    return 0;
}
