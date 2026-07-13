extern void __CutsceneStart(void);
extern void __Func_80933f8(int arg0, int arg1, int arg2, int arg3);
extern void __WaitFrames(int frames);
extern void OvlFunc_945_200c8e8(int actorId, int arg1, int arg2);
extern void __Func_80925cc(int actorId, int enabled);
extern void __MessageID(int messageId);
extern void OvlFunc_945_200c86c(int actorId);
extern void __Func_8092adc(int actorId, int value, int arg2);

void OvlFunc_945_200c13c(void)
{
    __CutsceneStart();
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");
        register int arg3 asm("r3");

        asm volatile("mov %0, #1\n\t"
                     "mov %1, #1\n\t"
                     "mov %2, #1\n\t"
                     "mov %3, #0\n\t"
                     "neg %1, %1\n\t"
                     "neg %2, %2\n\t"
                     "neg %0, %0"
                     : "=r"(arg0), "=r"(arg1), "=r"(arg2), "=r"(arg3));
        __Func_80933f8(arg0, arg1, arg2, arg3);
    }
    __WaitFrames(1);
    OvlFunc_945_200c8e8(0xf, 1, 1);
    __Func_80925cc(8, 1);
    __MessageID(0x1e43);
    OvlFunc_945_200c86c(8);
    {
        register int value asm("r1") = 0xd0;
        register int actorId asm("r0") = 8;

        asm volatile("" : "+r"(value), "+r"(actorId));
        value <<= 8;
        __Func_8092adc(actorId, value, 0x28);
    }
    OvlFunc_945_200c8e8(9, 0xf, 0);
}
