extern unsigned short REG_DMA0SAD;

extern unsigned short REG_BG0HOFS;

void Func_8097868(void)
{
    unsigned char *base;
    char *io;

    base = *(unsigned char **)iwram_3001ea8;
    if (*(unsigned char *)(base + 0x294) == 0) {
        unsigned char cc;
        unsigned int idx;
        unsigned int *src;
        unsigned int *dst;
        unsigned int ctrl;
        unsigned int *p;

        cc = *(unsigned char *)(base + 0x28a);
        idx = cc * 81;
        io = (char *)&REG_DMA0SAD;
        *(unsigned short *)(io + 0xa) = 0xc5ff & *(unsigned short *)(io + 0xa);
        *(unsigned short *)(io + 0xa) = 0x7fff & *(unsigned short *)(io + 0xa);
        *(volatile unsigned short *)(io + 0xa);
        src = (unsigned int *)(base + idx * 4);
        dst = (unsigned int *)&REG_BG0HOFS;
        ctrl = 0xa2600001;
        p = (unsigned int *)io;
        p[0] = (unsigned int)src;
        p[1] = (unsigned int)dst;
        p[2] = ctrl;
    }
}
