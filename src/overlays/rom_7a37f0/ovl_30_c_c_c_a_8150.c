extern short *state_ptr asm(".L12c4");
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_916_2008150(void)
{
    register int fifth asm("r3");
    register int sixth asm("r2");

    if (*state_ptr == 1) {
        sixth = 9;
        fifth = 4;
        asm volatile("" : "+r" (sixth), "+r" (fifth) : : "memory");
        __Func_8010704(0, 0, 1, fifth, fifth, sixth);
    } else {
        fifth = 6;
        sixth = 9;
        asm volatile("" : "+r" (fifth), "+r" (sixth) : : "memory");
        __Func_8010704(0, 0, 1, 4, fifth, sixth);
    }
}
