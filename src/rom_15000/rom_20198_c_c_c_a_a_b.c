extern int _GetFlag(int flag);
extern const short disabledValues[] asm(".L37206");
extern const short enabledValues[] asm(".L37216");

int Func_8021360(unsigned int index)
{
    int result = 0;

    if (index <= 8) {
        if (_GetFlag(0x20) == 0) {
            register const short *table asm("r3") = disabledValues;
            register unsigned int offset asm("r2") = index << 1;

            asm volatile("@ disabled table path" : "+r"(table), "+r"(offset));
            result = *(const short *)((const char *)table + offset);
            asm volatile("@ disabled table value" : "+r"(result));
        } else {
            register const short *table asm("r3") = enabledValues;
            register unsigned int offset asm("r2") = index << 1;

            asm volatile("@ enabled table path" : "+r"(table), "+r"(offset));
            result = *(const short *)((const char *)table + offset);
            asm volatile("@ enabled table value" : "+r"(result));
        }
    }
    return result;
}
