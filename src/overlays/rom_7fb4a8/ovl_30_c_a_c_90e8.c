extern unsigned char gState[];
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __Func_8092c40(int actor, int arg1);
extern void __MessageID(int message);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern int __GetPartySize(void);

int OvlFunc_971_20090e8(int actor)
{
    register int act asm("r6") = actor;
    register int msg asm("r5");

    asm volatile("" : "+r"(act));
    __CutsceneStart();

    {
        register unsigned char *ptr asm("r3");
        register unsigned int off asm("r2");

        ptr = gState;
        off = 0xfa;
        asm volatile("" : "+r"(ptr), "+r"(off));
        off <<= 1;
        ptr = ptr + off;
        asm volatile("" : "+r"(ptr));

        {
            register int a0 asm("r0");
            register int a1 asm("r1");
            register int a2 asm("r2");

            a0 = act;
            asm volatile("" : "+r"(a0), "+r"(ptr));
            a1 = *(int *)ptr;
            asm volatile("" : "+r"(a0), "+r"(a1));
            a2 = 0;
            asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
            __Func_809280c(a0, a1, a2);
        }
    }

    {
        register int flag asm("r0") = 0x81;
        asm volatile("" : "+r"(flag));
        flag <<= 2;
        asm volatile("" : "+r"(flag));

        if (__GetFlag(flag) == 0) {
            register int cnt asm("r0");
            cnt = __GetPartySize();
            asm volatile("" : "+r"(cnt));
            if (cnt <= 3) {
                msg = 0x298d;
                asm volatile("" : "+r"(msg));
            } else {
                msg = 0x298c;
                asm volatile("" : "+r"(msg));
            }
            {
                register int flag2 asm("r0") = 0x81;
                asm volatile("" : "+r"(flag2));
                flag2 <<= 2;
                asm volatile("" : "+r"(flag2));
                __SetFlag(flag2);
            }
        } else {
            register int flag3 asm("r0") = 0x81;
            asm volatile("" : "+r"(flag3));
            flag3 <<= 2;
            asm volatile("" : "+r"(flag3));
            msg = 0x298e;
            asm volatile("" : "+r"(flag3), "+r"(msg));
            __ClearFlag(flag3);
        }
    }

    {
        register int a0 asm("r0");
        a0 = msg;
        asm volatile("" : "+r"(a0));
        __MessageID(a0);
    }

    {
        register int a1 asm("r1") = 0;
        register int a0 asm("r0");
        asm volatile("" : "+r"(a1));
        a0 = act;
        asm volatile("" : "+r"(a0), "+r"(a1));
        __Func_8092c40(a0, a1);
    }

    __CutsceneEnd();
}
