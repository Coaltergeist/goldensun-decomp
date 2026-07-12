extern unsigned char gState[];
extern unsigned char Value_73[] asm("0x73");
extern unsigned char Value_74[] asm("0x74");
extern unsigned char Value_77[] asm("0x77");
extern unsigned char Value_79[] asm("0x79");
extern unsigned char Value_7a[] asm("0x7a");
extern unsigned char Result_73[] asm(".L33a8");
extern unsigned char Result_74[] asm(".L3438");
extern unsigned char Result_77[] asm(".L3498");
extern unsigned char Result_79[] asm(".L351c");
extern unsigned char Result_7a[] asm(".L3618");
extern unsigned char Result_default[] asm(".L339c");

void *OvlFunc_947_200a580(void)
{
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register int value asm("r2");
    register void *result asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    address = (unsigned int)Value_73;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_73;
        goto done;
    }
    address = (unsigned int)Value_74;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_74;
        goto done;
    }
    address = (unsigned int)Value_77;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_77;
        goto done;
    }
    address = (unsigned int)Value_79;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_79;
        goto done;
    }
    address = (unsigned int)Value_7a;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Result_7a;
    else
        result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
