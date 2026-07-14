extern int __GetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __Func_8010704(int, int, int, int, int, int);
extern unsigned char iwram_3001e70[];
extern unsigned char gState[];

void OvlFunc_932_200a428(void)
{
    if (__GetFlag(0x8fe) != 0) {
        unsigned char *base = *(unsigned char **)iwram_3001e70;
        *(unsigned short *)(base + 0x14) = 0xfdff & *(unsigned short *)(base + 0x14);
    } else {
        register int stack0 asm("r3");
        register int stack1 asm("r2");

        stack0 = 0x35;
        stack1 = 0x2a;
        asm volatile("" : "+r"(stack0), "+r"(stack1));
        __Func_8010704(0x34, 0x2a, 1, 1, stack0, stack1);
    }

    {
        register unsigned char *addr asm("r3") = gState;
        register unsigned int index asm("r2") = 0xe1;
        register unsigned int value asm("r3");
        register unsigned int threshold asm("r2");

        asm volatile("" : "+r"(addr), "+r"(index));
        index <<= 1;
        asm volatile("" : "+r"(addr), "+r"(index));
        addr += index;
        asm volatile("" : "+r"(addr));
        value = *(unsigned short *)addr;
        threshold = 0x80;
        asm volatile("" : "+r"(value), "+r"(threshold));
        value -= 6;
        asm volatile("" : "+r"(value), "+r"(threshold));
        value <<= 16;
        threshold <<= 9;
        asm volatile("" : "+r"(value), "+r"(threshold));
        if (value <= threshold) {
            __ClearFlag(0x12f);
        }
    }
}
