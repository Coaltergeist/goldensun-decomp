extern unsigned char gState[];
extern unsigned char Value_1[] asm("0x36");
extern unsigned char Value_2[] asm("0x37");
extern unsigned char Value_3[] asm("0x38");
extern unsigned char Result_1[] asm("OvlData_924_6ad8");
extern unsigned char Result_2[] asm("OvlData_924_6c10");
extern unsigned char Result_3[] asm("OvlData_924_6d60");
extern unsigned char Result_default[] asm("OvlData_924_6ec8");

void *OvlFunc_924_2008f30(void) {
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
    address = (unsigned int)Value_1;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_1;
        goto done;
    }
    address = (unsigned int)Value_2;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_2;
        goto done;
    }
    address = (unsigned int)Value_3;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_3;
        goto done;
    }
    result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
