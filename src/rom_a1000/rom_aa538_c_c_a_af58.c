extern unsigned char iwram_3001f2c[];
extern int Func_80ac8fc(unsigned char *param1, unsigned short param2, int param3);

int Func_80aaf58(unsigned char *param_1)
{
    register unsigned char **global asm("r3");
    register unsigned char *state asm("r8");
    register int offset asm("r3");
    register unsigned char *countPointer asm("r3");
    register int count asm("r3");
    int i;

    global = (unsigned char **)iwram_3001f2c;
    state = *global;
    offset = 0x219;
    countPointer = state + offset;
    count = *countPointer;
    i = 0;
    if (i < count) {
        unsigned char *outPtr = param_1 + 0xa0;
        unsigned short *shortPtr = (unsigned short *)(state + 0x208);
        unsigned char *structPtr = param_1;
        do {
            int result = Func_80ac8fc(structPtr, *shortPtr, -1);
            offset = 0x219;
            asm volatile("" : "+r"(offset));
            countPointer = state + offset;
            count = *countPointer;
            i++;
            *outPtr = result;
            shortPtr++;
            outPtr++;
            structPtr += 0x14;
        } while (i < count);
    }
}
