extern unsigned char iwram_3001e94[];

extern unsigned char L308a0[] __asm__(".L308a0");

extern void LoadIcon(unsigned char *, int);

void DecompressStatusIcon(int param)
{
    unsigned char *r1;
    unsigned char *r2;
    unsigned int r3;
    int r0;
    unsigned short v2;
    r1 = *(unsigned char **)iwram_3001e94;
    r2 = r1 + 0x604;
    r3 = *(unsigned int *)(L308a0 + (param << 2));
    r0 = 0xc0;
    r0 <<= 3;
    *(unsigned int *)r2 = r3;
    r3 = (unsigned int)(r1 + r0);
    v2 = 2;
    r0 += 2;
    *(unsigned short *)r3 = v2;
    r3 = (unsigned int)(r1 + r0);
    *(unsigned short *)r3 = v2;
    LoadIcon(r1, 0);
}
