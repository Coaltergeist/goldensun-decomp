extern unsigned char iwram_3001e70[];
extern int __cos(int);
extern int __sin(int);
extern int Lm943_5b58 __asm__(".Lm943_5b58");
extern int Lm943_5b38 __asm__(".Lm943_5b38");
extern int Lm943_5b50[2] __asm__(".Lm943_5b50");
extern int Lm943_5b60[2] __asm__(".Lm943_5b60");

void OvlFunc_943_200b1a8(void)
{
    char *base = *(char **)iwram_3001e70;
    int *pos = *(int **)base;
    int c = __cos(Lm943_5b58);
    int s = __sin(Lm943_5b38);

    pos[0] += c >> 1;
    pos[1] += s;

    Lm943_5b58 += (__Random0() * 0x180) >> 16;
    Lm943_5b38 += (__Random0() << 9) >> 16;
    Lm943_5b58 &= 0xffff;
    Lm943_5b38 &= 0xffff;

    *(int *)(base + 0x10c) = Lm943_5b50[0];
    Lm943_5b50[0] -= Lm943_5b60[0];
    if (Lm943_5b50[0] < 0)
        Lm943_5b50[0] += 0x200000;
    if (Lm943_5b50[0] > 0x200000)
        Lm943_5b50[0] -= 0x200000;

    *(int *)(base + 0x110) = Lm943_5b50[1];
    Lm943_5b50[1] -= Lm943_5b60[1];
    if (Lm943_5b50[1] < 0)
        Lm943_5b50[1] += 0x200000;
}
