extern unsigned char gState[];
extern int __GetFlag(int);

extern unsigned char Value_98[] asm("0x98");
extern unsigned char Value_9d[] asm("0x9d");
extern unsigned char Value_9e[] asm("0x9e");
extern unsigned char Flag_96f[] asm("0x96f");

extern unsigned char Result_1a[] asm(".L19d4");
extern unsigned char Result_1b[] asm(".L1974");
extern unsigned char Result_1c[] asm("gScript_970__02009a4c");
extern unsigned char Result_1d[] asm(".L1aac");
extern unsigned char Result_1e[] asm(".L195c");

void *OvlFunc_958_2008d20(void)
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
    address = (unsigned int)Value_98;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        if (__GetFlag((int)Flag_96f))
            result = Result_1a;
        else
            result = Result_1b;
        goto done;
    }
    address = (unsigned int)Value_9d;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_1c;
        goto done;
    }
    address = (unsigned int)Value_9e;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_1d;
        goto done;
    }
    result = Result_1e;
done:
    asm volatile("" : "+r"(result));
    return result;
}

extern unsigned char Result_2a[] asm(".L1bcc");
extern unsigned char Result_2b[] asm(".L1b48");
extern unsigned char Result_2c[] asm(".L1c80");
extern unsigned char Result_2d[] asm("gScript_885__02009ce0");
extern unsigned char Result_2e[] asm(".L1b3c");

void *OvlFunc_958_2008d88(void)
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
    address = (unsigned int)Value_98;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        if (__GetFlag((int)Flag_96f))
            result = Result_2a;
        else
            result = Result_2b;
        goto done;
    }
    address = (unsigned int)Value_9d;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_2c;
        goto done;
    }
    address = (unsigned int)Value_9e;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_2d;
        goto done;
    }
    result = Result_2e;
done:
    asm volatile("" : "+r"(result));
    return result;
}
