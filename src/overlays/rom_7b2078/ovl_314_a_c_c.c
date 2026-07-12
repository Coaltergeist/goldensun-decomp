extern unsigned char gState[];
extern unsigned char gScript_943__0200c7a8[];
extern unsigned char Script_4838[] asm(".L4838");
extern unsigned char Value_3c[] asm("0x3c");

void *OvlFunc_926_200834c(void) {
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
    address = (unsigned int)Value_3c;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = gScript_943__0200c7a8;
    else
        result = Script_4838;
    asm volatile("" : "+r"(result));
    return result;
}
