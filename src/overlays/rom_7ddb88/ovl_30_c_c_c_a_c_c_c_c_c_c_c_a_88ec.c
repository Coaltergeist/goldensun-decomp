extern unsigned int L4838 __asm__(".L4838");
extern unsigned int L4834 __asm__(".L4834");
extern void OvlFunc_955_2008714(void);
extern void __StopTask(void (*task)(void));
extern void __MapActor_SetPos(int actor, int x, int y);
extern void __MapActor_SetAnim(int actor, int anim);

void OvlFunc_955_20088ec(void)
{
    L4838 = 0;
    L4834 = 0;
    __StopTask(OvlFunc_955_2008714);
    {
        register int x asm("r1") = 0xea;
        register int y asm("r2") = 0xd8;
        register int actor asm("r0") = 0x16;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        x <<= 18;
        y <<= 16;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        __MapActor_SetPos(actor, x, y);
    }
    {
        register int x asm("r1") = 0xf2;
        register int y asm("r2") = 0xd8;
        register int actor asm("r0") = 0x17;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        x <<= 18;
        y <<= 16;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        __MapActor_SetPos(actor, x, y);
    }
    {
        register int x asm("r1") = 0xfa;
        register int y asm("r2") = 0xd8;
        register int actor asm("r0") = 0x18;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        x <<= 18;
        y <<= 16;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        __MapActor_SetPos(actor, x, y);
    }
    {
        register int x asm("r1") = 0x81;
        register int y asm("r2") = 0xd8;
        register int actor asm("r0") = 0x19;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        x <<= 19;
        y <<= 16;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        __MapActor_SetPos(actor, x, y);
    }
    __MapActor_SetAnim(0x1f, 0xa);
}
