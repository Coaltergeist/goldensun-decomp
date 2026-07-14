typedef unsigned char u8;

extern u8 *iwram_3001eec;
extern void Func_80d6888(int a, int b, int c, int d, int e);

void Func_80cd52c(void)
{
    register int negOne asm("r8");
    u8 *base;
    u8 *counters;
    int i;
    int offset;

    base = iwram_3001eec;
    i = 0;
    negOne = -1;

    offset = 0x24;
    counters = base + 0x7818;
    do {
        if (*counters != 0) {
            u8 v = (*counters -= 1);
            if (v == 0) {
                int *ctx = *(int **)(base + 0x7828);
                Func_80d6888(*(short *)((u8 *)ctx + offset), 0, negOne, negOne, v);
            }
        }
        i++;
        offset += 2;
        counters++;
    } while (i != 8);
}
