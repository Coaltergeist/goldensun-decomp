extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __SetFlag(int flag);
extern void __CutsceneWait(int frames);
extern void __Func_8010560(unsigned int *script, int arg1, int arg2);
extern void __Func_8092208(int actor_id, int arg1, int arg2);
extern void __Func_8091e9c(int actor_id);
extern void __CutsceneEnd(void);

void OvlFunc_946_2009494(void)
{
    __CutsceneStart();
    {
        register int x asm("r1");
        register int actor_id asm("r0");
        register int y asm("r2");

        asm volatile("ldr %0, .LOvlFunc_946_2009494_literals" : "=r"(x));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id), "+r"(x));
        asm volatile("ldr %0, .LOvlFunc_946_2009494_literals+4"
                     : "=r"(y) : "r"(actor_id), "r"(x));
        __MapActor_SetSpeed(actor_id, x, y);
    }
    __MapTransitionIn();
    __WaitMapTransition();
    {
        register short *ptr asm("r3");
        register int offset asm("r2");
        int idx;

        asm volatile("ldr %0, .LOvlFunc_946_2009494_literals+8" : "=r"(ptr));
        offset = 0xe0;
        asm volatile("" : "+r"(offset), "+r"(ptr));
        offset <<= 1;
        asm volatile("" : "+r"(offset), "+r"(ptr));
        ptr = (short *)((char *)ptr + offset);
        asm volatile("" : "+r"(ptr));
        idx = *ptr;
        {
            register int a asm("r2");
            register int b asm("r3");

            asm volatile("ldr %0, .LOvlFunc_946_2009494_literals+12" : "=r"(a));
            asm volatile("ldr %0, .LOvlFunc_946_2009494_literals+16"
                         : "=r"(b) : "r"(a));
            asm volatile("" : "+r"(a), "+r"(b));
            b -= a;
            asm volatile("" : "+r"(b));
            __SetFlag(idx + b);
        }
    }
    __CutsceneWait(0x1e);
    {
        register unsigned int *script asm("r0");

        asm volatile("ldr %0, .LOvlFunc_946_2009494_literals+20" : "=r"(script));
        __Func_8010560(script, 0x2c, 7);
    }
    {
        register int offset asm("r2") = 0x10;
        register int mode asm("r1") = 3;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(mode), "+r"(offset));
        offset = -offset;
        asm volatile("" : "+r"(mode), "+r"(offset));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id), "+r"(mode), "+r"(offset));
        __Func_8092208(actor_id, mode, offset);
    }
    __Func_8091e9c(3);
    __CutsceneEnd();
}

asm(
    ".text\n"
    ".align 2, 0\n"
    ".LOvlFunc_946_2009494_literals:\n"
    ".word 0x6666\n"
    ".word 0x3333\n"
    ".word gState\n"
    ".word 0x7e\n"
    ".word 0x8c8\n"
    ".word gOvl_0200b2bc\n"
    ".size OvlFunc_946_2009494, .-OvlFunc_946_2009494\n");
