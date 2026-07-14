typedef unsigned char u8;

extern u8 *Func_8077330(int);

int Func_807a550(u8 *argument)
{
    register u8 *counts asm("r5") = argument;
    register u8 *base asm("r2") = Func_8077330(0);
    register u8 *entry asm("r1") = base;
    register int result asm("r6") = 0;
    register int i asm("r4");
    register volatile int *limit asm("r0");
    register int minus_one asm("r7");
    register u8 *clear asm("r3");

    entry += 8;
    if (counts != 0) {
        clear = counts + 3;
        *clear = result;
        clear = counts + 2;
        *clear = result;
        clear = counts + 1;
        *clear = result;
        *counts = result;
    }

    limit = (volatile int *)(base + 0x108);
    i = 0;
    if (*limit != 0) {
        minus_one = -1;
        do {
            if ((signed char)entry[3] == minus_one) {
                if (counts != 0) {
                    register int index asm("r2") = entry[0];
                    counts[index]++;
                }
                result++;
            }
            i++;
            entry += 4;
        } while (i != *limit);
    }
    return result;
}
