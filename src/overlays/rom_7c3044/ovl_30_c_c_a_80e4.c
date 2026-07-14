extern unsigned char gState[];
extern unsigned char Value_64[] asm("0x64");
extern unsigned char Value_65[] asm("0x65");
extern unsigned char Result_Lc88[] asm(".Lc88");
extern unsigned char Result_La48[] asm(".La48");
extern unsigned char Result_Leb0[] asm(".Leb0");
extern unsigned char Result_La3c[] asm(".La3c");

void *OvlFunc_937_20080e4(void) {
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

            asm volatile("" : "+r"(offset2));
            offset2 <<= 1;
            addr2 = address + offset2;
            offset = 0;
            asm volatile("" : "+r"(addr2), "+r"(offset));
            value2 = *(short *)(addr2 + offset);
            asm volatile("" : "+r"(value2));
            switch (value2) {
            case 9: case 10: case 11: case 12: case 13: case 14: case 15: case 17:
                result = Result_Lc88;
                break;
            default:
                result = Result_La48;
                break;
            }
        } else {
            register unsigned int cmpval2 asm("r3") = (unsigned int)Value_65;

            asm volatile("" : "+r"(cmpval2), "+r"(value));
            if (value == cmpval2) {
                result = Result_Leb0;
            } else {
                result = Result_La3c;
            }
        }
    }

    asm volatile("" : "+r"(result));
    return result;
}
