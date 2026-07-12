extern unsigned char iwram_3001ebc[];
extern unsigned char gState[];
extern int __GetFlag(int flag);
extern int OvlFunc_959_2009660(void);
extern int OvlFunc_959_20098e4(int actor);
extern void __SetFlag(int flag);

void OvlFunc_959_200969c(void) {
    register unsigned char *base asm("r5");
    register unsigned int value asm("r3");
    register unsigned int offset asm("r2");
    register unsigned int arg asm("r0");

    value = (unsigned int)iwram_3001ebc;
    asm volatile("" : "+r"(value));
    arg = 0x85;
    arg <<= 2;
    asm volatile("" : "+r"(arg), "+r"(value));
    base = *(unsigned char **)value;
    asm volatile("" : "+r"(base), "+r"(arg));
    if (__GetFlag(arg) != 0)
        return;
    if (OvlFunc_959_2009660() != 0)
        return;

    value = (unsigned int)gState;
    asm volatile("" : "+r"(value));
    offset = 0x93;
    offset <<= 2;
    asm volatile("" : "+r"(value), "+r"(offset));
    value += offset;
    asm volatile("" : "+r"(value));
    offset = 0;
    asm volatile("" : "+r"(value), "+r"(offset));
    value = *(short *)(value + offset);
    if (value == 0 && OvlFunc_959_20098e4(0x11) != 0) {
        __SetFlag(0x215);
        arg = 0x85;
        arg <<= 2;
        asm volatile("" : "+r"(arg));
        __SetFlag(arg);
    }

    arg = 0x85;
    arg <<= 2;
    asm volatile("" : "+r"(arg));
    if (__GetFlag(arg) != 0) {
        value = 0xc1;
        value <<= 1;
        asm volatile("" : "+r"(value), "+r"(base));
        offset = (unsigned int)base + value;
        asm volatile("" : "+r"(offset));
        value = 0x5e;
        asm volatile("" : "+r"(value), "+r"(offset));
        *(unsigned short *)offset = value;
    }
}
