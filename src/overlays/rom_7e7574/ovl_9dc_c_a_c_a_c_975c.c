extern unsigned char iwram_3001ebc[];
extern unsigned char gState[];
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern int OvlFunc_959_20098e4(int arg);
extern void __StopTask(void (*task)(void));
extern void OvlFunc_959_20097bc(void);

void OvlFunc_959_200975c(void) {
    register unsigned char *state asm("r5");
    register unsigned int value asm("r3");
    register unsigned int offset asm("r2");
    register unsigned int arg asm("r0");

    value = (unsigned int)iwram_3001ebc;
    asm volatile("" : "+r"(value));
    arg = 0x225;
    asm volatile("" : "+r"(arg), "+r"(value));
    state = *(unsigned char **)value;
    asm volatile("" : "+r"(state), "+r"(arg));
    if (__GetFlag(arg) != 0)
        return;
    if (OvlFunc_959_20098e4(0xd) == 0)
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
    if (value != 0)
        return;

    arg = 0x225;
    asm volatile("" : "+r"(arg));
    __SetFlag(arg);
    __StopTask(OvlFunc_959_200975c);
    __StopTask(OvlFunc_959_20097bc);

    value = 0xc1;
    value <<= 1;
    asm volatile("" : "+r"(value), "+r"(state));
    offset = (unsigned int)state + value;
    asm volatile("" : "+r"(offset));
    value = 0x60;
    asm volatile("" : "+r"(value), "+r"(offset));
    *(unsigned short *)offset = value;
}
