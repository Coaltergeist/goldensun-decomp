extern unsigned char gState[];
extern unsigned char Script_1fc0[] asm(".L1fc0");
extern unsigned char Script_1fd8[] asm(".L1fd8");
extern unsigned char Script_2050[] asm(".L2050");
extern unsigned char Script_21b8[] asm(".L21b8");
extern unsigned char Script_22a8[] asm(".L22a8");
extern unsigned char Value_10[] asm("0x10");
extern unsigned char Value_13[] asm("0x13");
extern void __Func_808b868(void *script);

void *OvlFunc_895_200807c(void) {
    register unsigned char *base asm("r1") = gState;
    register unsigned int tmp asm("r0");
    register int addr asm("r3");
    register int value asm("r2");
    register unsigned char *selected asm("r5");
    register void *result asm("r0");

    tmp = 0xe0;
    asm volatile("" : "+r"(base), "+r"(tmp));
    tmp <<= 1;
    addr = (int)base + tmp;
    tmp = 0;
    asm volatile("" : "+r"(base), "+r"(addr), "+r"(tmp));
    value = *(short *)(addr + tmp);
    addr = (int)Value_10;
    asm volatile("" : "+r"(base), "+r"(value), "+r"(addr));
    if (value == addr) {
        value = 0xe1;
        asm volatile("" : "+r"(base), "+r"(value));
        value <<= 1;
        addr = (int)base + value;
        tmp = 0;
        asm volatile("" : "+r"(addr), "+r"(tmp));
        addr = *(short *)(addr + tmp);
        asm volatile("" : "+r"(addr));
        switch (addr) {
        case 0xb:
        case 0xc:
        case 0xd:
            result = Script_2050;
            break;
        case 0xe:
        case 0xf:
        case 0x10:
            result = Script_21b8;
            break;
        default:
            selected = Script_1fd8;
            asm volatile("" : "+r"(selected));
            result = selected;
            asm volatile("" : "+r"(result));
            __Func_808b868(result);
            result = selected;
            break;
        }
    } else {
        addr = (int)Value_13;
        asm volatile("" : "+r"(value), "+r"(addr));
        if (value == addr) {
            result = Script_22a8;
        } else {
            result = Script_1fc0;
        }
    }
    asm volatile("" : "+r"(result));
    return result;
}
