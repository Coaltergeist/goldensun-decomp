extern unsigned char gState[];
extern unsigned char Value_31[] asm("0x31");
extern unsigned char Value_30[] asm("0x30");
extern unsigned char Value_2f[] asm("0x2f");
extern unsigned char Result_a31[] asm(".Lc2c");
extern unsigned char Result_a30[] asm(".Lc5c");
extern unsigned char Result_a2f[] asm(".Lcbc");
extern unsigned char Result_a_default[] asm(".Lc14");
extern unsigned char Result_b31[] asm(".Lea8");
extern unsigned char Result_b30[] asm(".Lefc");
extern unsigned char Result_b2f[] asm("gOvl_02008f80");
extern unsigned char Result_b_default[] asm(".Le9c");

void *OvlFunc_920_20080a0(void)
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
    address = (unsigned int)Value_31;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_a31;
        goto done;
    }
    address = (unsigned int)Value_30;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_a30;
        goto done;
    }
    address = (unsigned int)Value_2f;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Result_a2f;
    else
        result = Result_a_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}

void *OvlFunc_920_20080f4(void)
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
    address = (unsigned int)Value_31;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_b31;
        goto done;
    }
    address = (unsigned int)Value_30;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_b30;
        goto done;
    }
    address = (unsigned int)Value_2f;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Result_b2f;
    else
        result = Result_b_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
