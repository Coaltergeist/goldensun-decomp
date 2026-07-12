extern unsigned char gState[];
extern unsigned char Value_22[] asm("0x22");
extern unsigned char Selected_script[] asm(".Lc7c");
extern unsigned char Default_script[] asm("gScript_889__02008c64");
extern int __GetFlag(int flag);

void *OvlFunc_910_200809c(void) {
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register unsigned int value asm("r2");
    register void *result asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    address = (unsigned int)Value_22;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        if (__GetFlag(0x84f) != 0) {
            address = (unsigned int)Selected_script;
            value = 1;
            asm volatile("" : "+r"(address), "+r"(value));
            address += 0x76;
            *(unsigned char *)address = value;
        }
        if (__GetFlag(0x845) != 0) {
            address = (unsigned int)Selected_script;
            value = 0;
            asm volatile("" : "+r"(address), "+r"(value));
            address += 0x46;
            *(unsigned char *)address = value;
        }
        result = Selected_script;
    } else {
        result = Default_script;
    }
    asm volatile("" : "+r"(result));
    return result;
}
