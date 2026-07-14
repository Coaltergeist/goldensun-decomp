extern unsigned char gState[];
extern unsigned char Value_13[] asm("0x13");
extern unsigned char Value_10[] asm("0x10");
extern unsigned char Script_22e4[] asm(".L22e4");
extern unsigned char Script_22d8[] asm(".L22d8");
extern unsigned char Script_232c[] asm(".L232c");
extern unsigned char Script_241c[] asm(".L241c");
extern unsigned char Script_2524[] asm(".L2524");

void *OvlFunc_895_20080ec(void)
{
    register unsigned int base asm("r1") = (unsigned int)gState;
    register unsigned int offset asm("r0");
    register int address asm("r3");
    register int state1 asm("r2");
    register void *result asm("r0");

    asm volatile("" : "+r"(base));
    offset = 0xe0;
    asm volatile("" : "+r"(base), "+r"(offset));
    offset <<= 1;
    address = (int)(base + offset);
    offset = 0;
    asm volatile("" : "+r"(base), "+r"(address), "+r"(offset));
    state1 = *(short *)(address + (int)offset);

    address = (int)Value_13;
    asm volatile("" : "+r"(base), "+r"(address), "+r"(state1));
    if (state1 == address) {
        result = Script_22e4;
    } else {
        address = (int)Value_10;
        asm volatile("" : "+r"(base), "+r"(address), "+r"(state1));
        if (state1 == address) {
            state1 = 0xe1;
            asm volatile("" : "+r"(base), "+r"(state1));
            state1 <<= 1;
            address = (int)base + state1;
            offset = 0;
            asm volatile("" : "+r"(address), "+r"(offset));
            address = *(short *)(address + (int)offset);

            switch (address) {
            case 0xb:
            case 0xc:
            case 0xd:
                result = Script_241c;
                break;
            case 0xe:
            case 0xf:
            case 0x10:
                result = Script_2524;
                break;
            default:
                result = Script_232c;
                break;
            }
        } else {
            result = Script_22d8;
        }
    }

    asm volatile("" : "+r"(result));
    return result;
}
