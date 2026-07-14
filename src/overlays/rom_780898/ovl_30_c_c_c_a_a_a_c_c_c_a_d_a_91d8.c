extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __MessageID(int message);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __Func_801776c(int message, int arg1);
extern void __CutsceneWait(int frames);
extern void __Func_80921c4(int actor, int x, int y);
extern void __CutsceneEnd(void);

void OvlFunc_883_20091d8(void)
{
    if (__GetFlag(0x808) != 0)
        return;

    __CutsceneStart();
    {
        register int x asm("r1");
        register int y asm("r2");
        register int actor asm("r0");

        x = 0x80;
        asm volatile("" : "+r"(x));
        y = 0x80;
        asm volatile("" : "+r"(x), "+r"(y));
        x <<= 9;
        asm volatile("" : "+r"(x), "+r"(y));
        y <<= 8;
        asm volatile("" : "+r"(x), "+r"(y));
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(y));
        __MapActor_SetSpeed(actor, x, y);
    }
    asm volatile("" ::: "r5");
    {
        register int message asm("r5") = 0xf4d;

        __MessageID(message);
        __Func_8093040(0xf, 0, 2);
        message += 2;
        {
            register int actor asm("r0");
            register int arg1 asm("r1");
            register int arg2 asm("r2");

            arg2 = 2;
            asm volatile("" : "+r"(arg2));
            actor = 0x10;
            asm volatile("" : "+r"(actor), "+r"(arg2));
            arg1 = 0;
            asm volatile("" : "+r"(actor), "+r"(arg1), "+r"(arg2));
            __Func_8093040(actor, arg1, arg2);
        }
        {
            register int arg1 asm("r1") = 1;
            register int msg asm("r0") = message;

            asm volatile("" : "+r"(arg1));
            __Func_801776c(msg, arg1);
        }
    }
    __CutsceneWait(6);
    {
        register int actor asm("r0");
        register int x asm("r1");
        register int y asm("r2");

        actor = 0;
        asm volatile("" : "+r"(actor));
        x = 0x45;
        asm volatile("" : "+r"(actor), "+r"(x));
        y = 0x366;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(y));
        __Func_80921c4(actor, x, y);
    }
    __CutsceneEnd();
}
