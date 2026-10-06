extern unsigned char iwram_3001ad0[];

void Func_80c90e4(void) {
    unsigned int *base;
    unsigned int *p;

    base = *(unsigned int **)iwram_3001eec;
    p = (unsigned int *)((char *)base + 0x7790);
    *p = *p + 1;
    if (*p == *(unsigned int *)((char *)base + 0x7794)) {
        *(unsigned short *)(iwram_3001ad0 + 4) =
            *(unsigned short *)(iwram_3001ad0 + 4) + *(unsigned int *)((char *)base + 0x7798);
        *(unsigned short *)(iwram_3001ad0 + 6) =
            *(unsigned short *)(iwram_3001ad0 + 6) + *(unsigned int *)((char *)base + 0x779c);
        *p = 0;
    }
}
