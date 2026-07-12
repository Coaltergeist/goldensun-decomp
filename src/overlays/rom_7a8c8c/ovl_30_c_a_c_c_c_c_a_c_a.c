extern unsigned char iwram_3001ebc[];
extern unsigned char gState[];
extern unsigned char Value_34[] asm("0x34");
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void OvlFunc_922_20097a8(void);
extern void OvlFunc_922_20097e4(void);

int OvlFunc_922_2009750(void) {
    register unsigned int address asm("r3") = (unsigned int)iwram_3001ebc;
    register unsigned int offset asm("r1") = 0xe0;
    register unsigned int value asm("r2");
    register unsigned int arg asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    address = *(unsigned int *)address;
    offset <<= 1;
    value = 0x81;
    asm volatile("" : "+r"(address), "+r"(offset), "+r"(value));
    address += offset;
    value <<= 2;
    asm volatile("" : "+r"(address), "+r"(value));
    *(unsigned int *)address = value;

    if (__GetFlag(0x109) == 0) {
        address = (unsigned int)gState;
        asm volatile("" : "+r"(address));
        value = 0xe0;
        value <<= 1;
        asm volatile("" : "+r"(address), "+r"(value));
        address += value;
        offset = 0;
        asm volatile("" : "+r"(address), "+r"(offset));
        value = *(short *)(address + offset);
        address = (unsigned int)Value_34;
        asm volatile("" : "+r"(address), "+r"(value));
        if (value == address) {
            arg = 0xa2;
            arg <<= 1;
            asm volatile("" : "+r"(arg));
            __SetFlag(arg);
            OvlFunc_922_20097a8();
            goto done;
        }
    }
    OvlFunc_922_20097e4();
done:
    return 0;
}
