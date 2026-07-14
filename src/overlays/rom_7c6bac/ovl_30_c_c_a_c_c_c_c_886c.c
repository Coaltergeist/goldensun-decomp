extern unsigned char gState[];
extern void __SetFlag(int flag);
extern void OvlFunc_942_20088cc(void);
extern void OvlFunc_942_2008958(void);
extern void OvlFunc_942_2008ad4(void);
extern unsigned char Value_6b[] asm("0x6b");
extern unsigned char Value_70[] asm("0x70");
extern unsigned char Value_6c[] asm("0x6c");

int OvlFunc_942_200886c(void) {
    register unsigned char *base asm("r5") = gState;
    register unsigned int offset asm("r1");
    register unsigned char *address asm("r3");
    register int value asm("r2");

    asm volatile("" : "+r"(base));
    offset = 0xe1;
    asm volatile("" : "+r"(base), "+r"(offset));
    offset <<= 1;
    address = base + offset;
    value = 0;
    asm volatile("" : "+r"(address), "+r"(value));
    if (*(short *)(address + value) == 0x5a) {
        __SetFlag(0x95 << 4);
    }

    offset = 0xe0;
    asm volatile("" : "+r"(base), "+r"(offset));
    offset <<= 1;
    address = base + offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    address = Value_6b;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == (int)address) {
        OvlFunc_942_20088cc();
    } else {
        address = Value_70;
        asm volatile("" : "+r"(address), "+r"(value));
        if (value == (int)address) {
            OvlFunc_942_2008958();
        } else {
            address = Value_6c;
            asm volatile("" : "+r"(address), "+r"(value));
            if (value == (int)address) {
                OvlFunc_942_2008ad4();
            }
        }
    }

    return 0;
}
