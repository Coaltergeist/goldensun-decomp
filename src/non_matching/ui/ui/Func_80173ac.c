void Func_80173ac(void)
{
    unsigned char *base;

    base = *(unsigned char **)iwram_3001e8c;
    *(unsigned short *)(base + 0xeae) = 0xf;
    *(unsigned short *)(base + 0xea8) = 0xa;
    *(unsigned short *)(base + 0x12b0) = 9;
    *(unsigned short *)(base + 0xeac) = 0;
    *(unsigned short *)(base + 0xeaa) = 1;
}
