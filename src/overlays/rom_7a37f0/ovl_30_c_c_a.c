extern unsigned int OvlData_916_20092c0[] asm(".L12c0");

extern void OvlFunc_916_2008c2c(unsigned int arg0);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3);
extern void OvlFunc_916_2008b3c(unsigned int arg0, int arg1);
extern void OvlFunc_916_2008150(void);

void OvlFunc_916_2008054(void) {
    register unsigned int *table asm("r5") = OvlData_916_20092c0;
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register int arg3 asm("r3");
    register volatile int *stack asm("sp");
    volatile int stackArgs[2];

    OvlFunc_916_2008c2c(*table);

    arg3 = 0;
    asm volatile("" : "+r"(arg3));
    stack[0] = arg3;
    stack[1] = arg3;
    asm volatile("" : : : "memory");
    arg2 = 0x20;
    arg3 = 0x20;
    asm volatile("" : "+r"(arg2), "+r"(arg3));
    arg0 = 0;
    arg1 = 0x40;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    __Func_8010704(arg0, arg1, arg2, arg3);

    arg1 = 0xff;
    arg0 = *table;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    OvlFunc_916_2008b3c(arg0, arg1);
    OvlFunc_916_2008150();
}
