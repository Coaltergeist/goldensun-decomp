extern unsigned char gState[];
extern unsigned char *L2018[] asm(".L2018");
extern unsigned int __Random(void);
extern int _modsi3_RAM(int value, int divisor);

unsigned char *OvlFunc_951_2008d70(int index)
{
    unsigned char *base;
    register int offset asm("r6");
    register int state asm("r5");
    unsigned int rnd;
    int mod;

    if (index < 0)
        return 0;

    if (index == 5) {
        rnd = __Random();
        index = (rnd * 5) >> 16;
    }

    base = gState;
    offset = index + 0x134;

    state = *(signed char *)(base + offset);
    rnd = __Random();
    rnd = rnd << 1;
    rnd = rnd >> 16;
    state = state + rnd;
    state = state + 4;
    mod = _modsi3_RAM(state, 3);
    base[offset] = (unsigned char)mod;

    return L2018[index * 3 + mod];
}
