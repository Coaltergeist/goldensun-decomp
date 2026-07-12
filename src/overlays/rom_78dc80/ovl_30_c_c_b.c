extern unsigned char iwram_3001ebc[];
extern void __SetFlag(int flag);
extern int __GetFlag(int flag);
extern void __Func_8091ff0(int arg);
extern void __Func_8012330(int x, int y, int z);
extern void __StartEarthquake(void);

int OvlFunc_892_2008054(void) {
    register unsigned int value asm("r3");
    register unsigned int offset asm("r2");
    register unsigned int arg0 asm("r0");
    register unsigned int arg1 asm("r1");

    value = (unsigned int)iwram_3001ebc;
    asm volatile("" : "+r"(value));
    offset = 0xe0;
    asm volatile("" : "+r"(value), "+r"(offset));
    value = *(unsigned int *)value;
    asm volatile("" : "+r"(value), "+r"(offset));
    offset <<= 1;
    value += offset;
    asm volatile("" : "+r"(value), "+r"(offset));
    arg0 = 0xa2;
    offset += 0x44;
    arg0 <<= 1;
    asm volatile("" : "+r"(value), "+r"(offset), "+r"(arg0));
    *(unsigned int *)value = offset;
    __SetFlag(arg0);

    if (__GetFlag(0x814) != 0) {
        __Func_8091ff0(0x8d);
        arg0 = 0x80;
        arg1 = 0x80;
        offset = 0x80;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(offset));
        arg0 <<= 9;
        arg1 <<= 9;
        offset <<= 9;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(offset));
        __Func_8012330(arg0, arg1, offset);
        __StartEarthquake();
    }
    return 0;
}
