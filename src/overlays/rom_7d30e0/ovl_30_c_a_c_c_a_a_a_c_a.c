extern unsigned char gState[];
extern unsigned char Value_75[] asm("0x75");
extern unsigned char Value_76[] asm("0x76");
extern unsigned char Value_78[] asm("0x78");
extern unsigned char Result_75[] asm(".L2bb4");
extern unsigned char Result_76[] asm(".L2cb0");
extern unsigned char Result_78[] asm("gScript_953__0200adac");
extern unsigned char Result_default[] asm(".L2ba8");

void *OvlFunc_948_2008ee0(void)
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
    address = (unsigned int)Value_75;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_75;
        goto done;
    }
    address = (unsigned int)Value_76;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_76;
        goto done;
    }
    address = (unsigned int)Value_78;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Result_78;
    else
        result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
