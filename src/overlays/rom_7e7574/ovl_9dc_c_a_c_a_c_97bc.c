typedef unsigned char u8;

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern int __GetFlag(int flag);
extern int OvlFunc_959_20098e4(int arg);
extern void __SetFlag(int flag);
extern void __StopTask(void (*task)(void));
extern void OvlFunc_959_200975c(void);

void OvlFunc_959_20097bc(void)
{
    register u8 *base asm("r5");
    register unsigned int value asm("r3");
    register unsigned int offset asm("r2");
    register unsigned int arg asm("r0");

    value = (unsigned int)&iwram_3001ebc;
    asm volatile("" : "+r"(value));
    arg = 0x225;
    asm volatile("" : "+r"(arg), "+r"(value));
    base = *(u8 **)value;
    asm volatile("" : "+r"(base), "+r"(arg));
    if (__GetFlag(arg) != 0)
        return;

    if (OvlFunc_959_20098e4(0x15) == 0)
        return;

    value = (unsigned int)gState;
    asm volatile("" : "+r"(value));
    offset = 0x93;
    asm volatile("" : "+r"(value), "+r"(offset));
    offset <<= 2;
    value += offset;
    asm volatile("" : "+r"(value));
    offset = 0;
    asm volatile("" : "+r"(value), "+r"(offset));
    if (*(short *)(value + offset) != 0)
        return;

    arg = 0x225;
    asm volatile("" : "+r"(arg));
    __SetFlag(arg);
    __StopTask(OvlFunc_959_20097bc);
    __StopTask(OvlFunc_959_200975c);

    value = 0xc1;
    asm volatile("" : "+r"(value), "+r"(base));
    value <<= 1;
    offset = (unsigned int)base + value;
    asm volatile("" : "+r"(offset));
    value = 0x60;
    asm volatile("" : "+r"(value), "+r"(offset));
    *(short *)offset = value;
}
