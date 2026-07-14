extern unsigned char gState[];
extern unsigned char Value_64[] asm("0x64");
extern unsigned char Value_65[] asm("0x65");
extern unsigned char Result_L8d4[] asm(".L8d4");
extern unsigned char Result_La0c[] asm(".La0c");
extern unsigned char Result_L784[] asm(".L784");
extern unsigned char gScript_906__0200879c[];
extern void __Func_808b868(void *script);

void *OvlFunc_937_200807c(void) {
    register unsigned int address asm("r1") = (unsigned int)gState;
    register unsigned int offset asm("r0") = 0xe0;
    register int value asm("r2");
    register void *result asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    {
        register unsigned int addr2 asm("r3") = address + offset;

        asm volatile("" : "+r"(addr2));
        offset = 0;
        asm volatile("" : "+r"(addr2), "+r"(offset));
        value = *(short *)(addr2 + offset);
    }

    {
        register unsigned int cmpval asm("r3") = (unsigned int)Value_64;

        asm volatile("" : "+r"(cmpval), "+r"(value));
        if (value == cmpval) {
            register unsigned int offset2 asm("r2") = 0xe1;
            register unsigned int addr2 asm("r3");
            register int value2 asm("r3");
            register void *r5 asm("r5");

            asm volatile("" : "+r"(offset2));
            offset2 <<= 1;
            addr2 = address + offset2;
            offset = 0;
            asm volatile("" : "+r"(addr2), "+r"(offset));
            value2 = *(short *)(addr2 + offset);
            asm volatile("" : "+r"(value2));
            switch (value2) {
            case 9: case 10: case 11: case 12: case 13: case 14: case 15: case 17:
                r5 = Result_L8d4;
                break;
            default:
                r5 = gScript_906__0200879c;
                break;
            }
            asm volatile("" : "+r"(r5));
            result = r5;
            __Func_808b868(result);
            result = r5;
        } else {
            register unsigned int cmpval2 asm("r3") = (unsigned int)Value_65;

            asm volatile("" : "+r"(cmpval2), "+r"(value));
            if (value == cmpval2) {
                result = Result_La0c;
            } else {
                result = Result_L784;
            }
        }
    }

    asm volatile("" : "+r"(result));
    return result;
}
