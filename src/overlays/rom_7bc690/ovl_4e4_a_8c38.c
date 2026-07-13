extern unsigned char gState[];
extern void __Func_80925cc(int, int);
extern void __Func_8091f90(int, int);
extern void __Func_8091eb0(int, int);

void OvlFunc_933_2008c38(void)
{
    register unsigned char *state asm("r3");
    register unsigned int offset asm("r2");
    register int message asm("r0");

    __Func_80925cc(8, 2);
    asm volatile("ldr %0, =0x5b" : "=r" (message));
    __Func_8091f90(message, 5);
    asm volatile("ldr %0, =gState" : "=r" (state));
    asm volatile("ldr %0, =0x22b" : "=r" (offset));
    state += offset;
    asm("" : "+r" (state));
    *state = 3;
    __Func_8091eb0(0x35, 5);
}
