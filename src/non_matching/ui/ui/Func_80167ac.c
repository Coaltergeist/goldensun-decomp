void Func_80167ac(int a)
{
    unsigned char *base = *(unsigned char **)iwram_3001e8c;
    int offset = 0xeae;
    *(unsigned short *)(base + offset) = *(unsigned short *)((char *)a + 0x16);
    *(unsigned short *)(base + (offset - 2)) = *(unsigned short *)((char *)a + 0x18);
    *(unsigned short *)(base + 0xea8) = *(unsigned short *)((char *)a + 0x1a);
}
