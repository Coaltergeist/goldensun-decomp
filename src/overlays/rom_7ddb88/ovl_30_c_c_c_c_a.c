extern void __DeleteFieldActor(int actor);
extern void __Func_807808c(int value);
extern void __CutsceneStart(void);
extern void __MapActor_SetPos(int actor, int x, int z);
extern void __Func_809280c(int actor, int value, int arg2);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __WaitFrames(int frames);
extern void __Func_80933f8(int arg0, int arg1, int arg2, int arg3);
extern void OvlFunc_common1_fac(int value);
extern void __CutsceneEnd(void);

void OvlFunc_955_2008b38(int value)
{
    register int savedValue asm("r5") = value;

    __DeleteFieldActor(0x28);
    __DeleteFieldActor(0x29);
    __Func_807808c(1);
    __CutsceneStart();

    {
        register int actor asm("r0");
        register int x asm("r1");
        register int z asm("r2");

        x = 0xb0;
        asm volatile("" : "+r"(x));
        z = 0x80;
        asm volatile("" : "+r"(x), "+r"(z));
        actor = 8;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        x <<= 15;
        z <<= 17;
        __MapActor_SetPos(actor, x, z);
    }
    {
        register int actor asm("r0");
        register int x asm("r1");
        register int z asm("r2");

        x = 0xf0;
        asm volatile("" : "+r"(x));
        z = 0x80;
        asm volatile("" : "+r"(x), "+r"(z));
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        x <<= 15;
        z <<= 17;
        __MapActor_SetPos(actor, x, z);
    }
    {
        register int actor asm("r0");
        register int amount asm("r1");
        register int zero asm("r2");

        amount = 0x80;
        asm volatile("" : "+r"(amount));
        actor = 8;
        asm volatile("" : "+r"(actor), "+r"(amount));
        amount <<= 7;
        zero = 0;
        __Func_809280c(actor, amount, zero);
    }
    {
        register int actor asm("r0");
        register int amount asm("r1");
        register int zero asm("r2");

        amount = 0x80;
        asm volatile("" : "+r"(amount));
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(amount));
        amount <<= 7;
        zero = 0;
        __Func_809280c(actor, amount, zero);
    }

    if (savedValue < 0) {
        __MapActor_SetAnim(8, 0xa);
        __MapActor_SetAnim(0, 0x23);
    } else {
        __MapActor_SetAnim(8, 8);
        __MapActor_SetAnim(0, 0x1c);
    }

    __WaitFrames(1);
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");
        register int arg3 asm("r3");

        arg0 = 0xd0;
        asm volatile("" : "+r"(arg0));
        arg2 = 0xc0;
        asm volatile("" : "+r"(arg0), "+r"(arg2));
        arg1 = 0;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg2 <<= 16;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg3 = 0;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg0 <<= 15;
        __Func_80933f8(arg0, arg1, arg2, arg3);
    }
    OvlFunc_common1_fac(savedValue);
    __CutsceneEnd();
}
