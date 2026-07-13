extern void __Func_8092adc(int, int, int);
extern void __CutsceneWait(int);

void OvlFunc_938_200940c(int wait)
{
    __Func_8092adc(0, 0x6000, 0);
    {
        register int value asm("r1") = 0xe0;
        register int actor asm("r0") = 1;
        asm volatile("" : "+r" (value), "+r" (actor));
        value <<= 8;
        __Func_8092adc(actor, value, 0);
    }
    {
        register int value asm("r1") = 0x80;
        register int actor asm("r0") = 2;
        asm volatile("" : "+r" (value), "+r" (actor));
        value <<= 6;
        __Func_8092adc(actor, value, 0);
    }
    {
        register int value asm("r1") = 0xa0;
        register int actor asm("r0") = 3;
        asm volatile("" : "+r" (value), "+r" (actor));
        value <<= 8;
        __Func_8092adc(actor, value, 0);
    }
    if (wait != 0)
        __CutsceneWait(wait);
}

void OvlFunc_938_2009450(int wait)
{
    __Func_8092adc(0, 0xc000, 0);
    {
        register int value asm("r1") = 0xc0;
        register int actor asm("r0") = 1;
        asm volatile("" : "+r" (value), "+r" (actor));
        value <<= 8;
        __Func_8092adc(actor, value, 0);
    }
    {
        register int value asm("r1") = 0xc0;
        register int actor asm("r0") = 2;
        asm volatile("" : "+r" (value), "+r" (actor));
        value <<= 8;
        __Func_8092adc(actor, value, 0);
    }
    {
        register int value asm("r1") = 0xc0;
        register int actor asm("r0") = 3;
        asm volatile("" : "+r" (value), "+r" (actor));
        value <<= 8;
        __Func_8092adc(actor, value, 0);
    }
    if (wait != 0)
        __CutsceneWait(wait);
}
