extern unsigned char gState[];
extern unsigned char Selected_script[] asm(".L1df4");
extern unsigned char Default_script[] asm("gScript_918__02009ddc");
extern unsigned char Value_67[] asm("0x67");
extern void __Func_808b868(void *script);

void *OvlFunc_938_200806c(void) {
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register int value asm("r2");
    register void *selected asm("r5");
    register void *result asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    address = (unsigned int)Value_67;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        selected = Selected_script;
        asm volatile("" : "+r"(selected));
        __Func_808b868(selected);
        result = selected;
    } else {
        result = Default_script;
    }
    asm volatile("" : "+r"(result));
    return result;
}
