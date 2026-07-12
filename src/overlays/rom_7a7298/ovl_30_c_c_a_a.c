extern unsigned char gState[];
extern unsigned char Value_33[] asm("0x33");
extern unsigned char Selected_script[] asm(".L2ad0");
extern unsigned char Flagged_script[] asm("gOvl_0200aa58");
extern unsigned char Default_script[] asm(".L29e0");
extern void __Func_808b868(void *script);
extern int __GetFlag(int flag);

void *OvlFunc_921_200816c(void) {
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register unsigned int value asm("r2");
    register unsigned char *selected asm("r5");
    register void *result asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    address = (unsigned int)Value_33;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        selected = Selected_script;
        asm volatile("" : "+r"(selected));
        __Func_808b868(selected);
        if (__GetFlag(0x881) != 0) {
            address = 0x83;
            address <<= 1;
            asm volatile("" : "+r"(address), "+r"(selected));
            value = (unsigned int)selected + address;
            address = 0;
            asm volatile("" : "+r"(address), "+r"(value));
            *(unsigned char *)value = address;

            address = 0xb6;
            address <<= 16;
            asm volatile("" : "+r"(address), "+r"(selected));
            *(unsigned int *)(selected + 0x50) = address;
            address = 0x8d;
            address <<= 18;
            asm volatile("" : "+r"(address), "+r"(selected));
            *(unsigned int *)(selected + 0x58) = address;
            address = 2;
            asm volatile("" : "+r"(address), "+r"(selected));
            *(unsigned int *)(selected + 0x4c) = address;
        }
        result = selected;
    } else if (__GetFlag(0x881) != 0) {
        result = Flagged_script;
    } else {
        result = Default_script;
    }
    asm volatile("" : "+r"(result));
    return result;
}
