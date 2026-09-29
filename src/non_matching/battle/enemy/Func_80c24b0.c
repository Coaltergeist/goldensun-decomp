typedef struct { unsigned char _bytes[704]; } GlobalState;

extern unsigned char iwram_3001e74[];

extern GlobalState gState;

void Func_80c24b0(void)
{
    unsigned int base;
    unsigned int *p;
    unsigned short *h;
    int i;

    base = *(unsigned int *)iwram_3001e74;
    p = (unsigned int *)(base + (0xa6 << 3));
    *(unsigned short *)((char *)&gState + (0x8f << 2)) = 0;
    p[0] = 0;
    p[1] = 0;
    p[2] = 0;
    h = (unsigned short *)(base + 0x542);
    i = 3;
    do {
        i--;
        *h = 0;
        h--;
    } while (i >= 0);
}
