extern unsigned char iwram_3001ebc[];

extern int __GetFlag(int flag);
extern void __Func_8091ff0(int arg0);
extern void __Func_8012330(int arg0, int arg1, int arg2);
extern void __StartEarthquake(void);

int OvlFunc_893_2008054(void) {
    register unsigned int value asm("r3") = (unsigned int)iwram_3001ebc;
    register unsigned char *base asm("r1");
    register unsigned int *field asm("r2");
    register int arg0 asm("r0");

    asm volatile("" : "+r"(value));
    base = *(unsigned char **)value;
    value = 0xe0;
    value <<= 1;
    field = (unsigned int *)(base + value);
    value += 0x44;
    *field = value;
    value -= 0x3c;
    field = (unsigned int *)(base + value);
    value = 0x10;
    *field = value;

    arg0 = 0x814;
    asm volatile("" : "+r"(arg0));
    if (__GetFlag(arg0) != 0) {
        register int arg1 asm("r1");
        register int arg2 asm("r2");

        __Func_8091ff0(0x8d);
        arg0 = 0x80;
        arg1 = 0x80;
        arg2 = 0x80;
        arg0 <<= 9;
        arg1 <<= 9;
        arg2 <<= 9;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        __Func_8012330(arg0, arg1, arg2);
        __StartEarthquake();
    }
    return 0;
}
