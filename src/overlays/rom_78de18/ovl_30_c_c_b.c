extern unsigned char iwram_3001ebc[];
extern int __GetFlag(int flag);
extern void __Func_8091ff0(int arg);
extern void __Func_8012330(int x, int y, int z);
extern void __StartEarthquake(void);

int OvlFunc_894_2008054(void) {
    register unsigned int value asm("r3");
    register unsigned int address asm("r2");
    register unsigned int base asm("r1");
    register unsigned int arg0 asm("r0");

    value = (unsigned int)iwram_3001ebc;
    asm volatile("" : "+r"(value));
    base = *(unsigned int *)value;
    asm volatile("" : "+r"(base));
    value = 0xe0;
    value <<= 1;
    asm volatile("" : "+r"(value), "+r"(base));
    address = base + value;
    value += 0x44;
    asm volatile("" : "+r"(value), "+r"(address));
    *(unsigned int *)address = value;
    value -= 0x3c;
    address = base + value;
    asm volatile("" : "+r"(value), "+r"(address));
    value = 0x10;
    asm volatile("" : "+r"(value), "+r"(address));
    *(unsigned int *)address = value;

    if (__GetFlag(0x814) != 0) {
        __Func_8091ff0(0x8d);
        arg0 = 0x80;
        base = 0x80;
        address = 0x80;
        asm volatile("" : "+r"(arg0), "+r"(base), "+r"(address));
        arg0 <<= 9;
        base <<= 9;
        address <<= 9;
        asm volatile("" : "+r"(arg0), "+r"(base), "+r"(address));
        __Func_8012330(arg0, base, address);
        __StartEarthquake();
    }
    return 0;
}
