extern unsigned char *iwram_3001e74;
extern int Func_80b6a60(unsigned short *values);

unsigned int Func_80b6378(void)
{
    unsigned short values[8];
    register unsigned char *state asm("r6") = iwram_3001e74;
    register unsigned int value asm("r2");
    register int output asm("r3");
    register unsigned int result asm("r0");
    int count;
    int i;

    count = Func_80b6a60(values);
    for (i = 0; i < count; i++) {
        value = values[i];
        output = i;
        value += 0x48;
        output -= 0x80;
        state[value] = output;
    }
    asm volatile ("" : "=r" (result));
    return result;
}
