extern unsigned char iwram_3001ea0[];

extern void _Func_80b08b8(unsigned char *arg0);

extern void Func_80217a4(unsigned char *arg0);

void Func_801d94c(void)
{
    unsigned char *base;
    unsigned short idx;

    base = *(unsigned char **)iwram_3001ea0;
    _Func_80b08b8(base + 0x5a4);
    idx = *(unsigned short *)(base + 0x574);
    Func_80217a4(*(unsigned char **)(base + idx * 4 + 0x9c));
}
