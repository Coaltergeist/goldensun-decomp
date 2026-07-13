extern unsigned int _RPGRandom(void);

int Func_80bd3e4(const unsigned char *weights)
{
    register unsigned int high asm("r9");
    register const unsigned char *table asm("r5");
    register int random asm("r0");
    register int index asm("r1") = 0;
    register int total asm("r2");
    register int mask asm("r3");
    register int selected asm("r4") = 0;

    asm volatile (
        "mov\tr3, r9\n\t"
        "sub\tsp, #4\n\t"
        "str\tr3, [sp]"
        : "+r"(high)
        :
        : "r3", "memory");
    table = weights;
    asm volatile ("" : "+r"(table));
    random = _RPGRandom();
    mask = 0xff;
    total = table[0];
    asm volatile ("" : "+r"(mask), "+r"(total));
    random &= mask;
    selected = 0;
    index = 0;
    asm volatile ("" : "+r"(selected), "+r"(index));
    if (random >= total) {
        for (;;) {
            ++index;
            if (index > 7)
                goto done;
            total += table[index];
            if (random < total) {
                selected = index;
                break;
            }
        }
    }
done:
    random = selected;
    asm volatile ("" : "+r"(random));
    asm volatile ("add\tsp, #4" : : : "memory");
    return random;
}

/* Original two-byte inter-function padding. */
asm(".short 0");
