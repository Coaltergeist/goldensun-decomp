extern unsigned char iwram_3001f2c[];
extern void Func_80a9bd8(unsigned char *p, int idx, int yoff, int xoff, int arg4);

void Func_80a9b94(int yoff, int xoff, int arg4)
{
    unsigned char *base;
    unsigned char **arr;
    int i;

    base = *(unsigned char **)iwram_3001f2c;
    i = 0;
    arr = (unsigned char **)(base + 0x48);
    do {
        unsigned char *p = *arr++;
        if (p != 0) {
            Func_80a9bd8(p, i, yoff, xoff, arg4);
        }
        i++;
    } while (i <= 0x1f);
}
