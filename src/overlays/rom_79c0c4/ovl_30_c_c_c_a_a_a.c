extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_80b0278(int arg0, int arg1);
extern int __GetFlag(int flag);
extern void __MessageID(int id);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __Func_8093054(int actor, int arg1);
extern void __Func_8092adc(int actor, int arg1, int arg2);
extern void __ActorMessage(int actor, int arg1);

void OvlFunc_908_2008124(void)
{
    register unsigned int r5 asm("r5");

    r5 = *(unsigned short *)(__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(8, 0x11);
    } else if (__GetFlag(0x845) == 0) {
        __MessageID(0x13e5);
        {
            register int r0 asm("r0");
            register int r1 asm("r1");
            register int r2 asm("r2");

            r2 = 0;
            asm volatile("" : "+r"(r2));
            r1 = 0;
            asm volatile("" : "+r"(r1), "+r"(r2));
            r0 = 0x11;
            asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
            __Func_809280c(r0, r1, r2);
        }
        __CutsceneWait(0xa);
        {
            register int r0 asm("r0");
            register int r1 asm("r1");

            r1 = 0;
            asm volatile("" : "+r"(r1));
            r0 = 0x11;
            asm volatile("" : "+r"(r0), "+r"(r1));
            __Func_8093054(r0, r1);
        }
        {
            register int r0 asm("r0");
            register int r1 asm("r1");
            register int r2 asm("r2");

            r1 = 0xc0;
            asm volatile("" : "+r"(r1));
            r0 = 0x11;
            asm volatile("" : "+r"(r0), "+r"(r1));
            r1 <<= 6;
            asm volatile("" : "+r"(r0), "+r"(r1));
            r2 = 0xa;
            asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
            __Func_8092adc(r0, r1, r2);
        }
    } else {
        __MessageID(0x16f7);
        __ActorMessage(0x11, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_908_20081a8(void)
{
    __CutsceneStart();
    __MessageID(0x13ed);
    __Func_809280c(0x15, 0, 0);
    __ActorMessage(0x15, 0);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");

        r1 = 0xc0;
        asm volatile("" : "+r"(r1));
        r0 = 0x15;
        asm volatile("" : "+r"(r0), "+r"(r1));
        r1 <<= 8;
        asm volatile("" : "+r"(r0), "+r"(r1));
        r2 = 0xa;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        __Func_8092adc(r0, r1, r2);
    }
    __CutsceneEnd();
}
