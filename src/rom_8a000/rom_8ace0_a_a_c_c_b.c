typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned int L9e270[] __asm__(".L9e270");

void Func_808b25c(unsigned int param_1, unsigned int weakness)
{
    unsigned int base;
    unsigned int r3;
    unsigned int r2;
    short level;
    unsigned int *table;
    unsigned int entry;

    base = (unsigned int)&gState;
    r3 = 0xe0;
    r3 <<= 1;
    r3 += base;
    r2 = 0;
    level = *(short *)((char *)r3 + r2);

    table = L9e270;
    entry = *table++;
    while (entry != 0 && entry != (unsigned int)level) {
        if (entry & 0x80000000u) {
            weakness = entry & 0xffffu;
        }
        entry = *table++;
    }

    r3 = 0xeb;
    r3 <<= 1;
    r3 += base;
    *(unsigned short *)r3 = (unsigned short)weakness;
}
