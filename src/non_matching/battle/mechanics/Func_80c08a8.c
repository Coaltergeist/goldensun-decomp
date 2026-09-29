extern void *galloc_ewram(int index, unsigned int size);

void Func_80c08a8(void) {
    unsigned int local;
    void *p;
    unsigned int *iw;
    unsigned int *r5;
    unsigned int *dma;

    local = 0;
    p = galloc_ewram(10, 0xa8 << 2);
    iw = (unsigned int *)iwram_3001f00;
    r5 = (unsigned int *)*iw;
    *(unsigned int *)&local = 0;

    dma = (unsigned int *)0x040000D4;
    dma[0] = (unsigned int)&local;
    dma[1] = (unsigned int)p;
    dma[2] = 0x850000a8;

    *(unsigned int *)((char *)r5 + 8) = 0;
}
