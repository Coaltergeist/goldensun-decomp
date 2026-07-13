extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __Func_8093304(int value);
extern void __Func_8019aa0(int value, int arg1, int arg2);
extern void __MapActor_SetSpeed(int actorId, int xSpeed, int zSpeed);
extern void __Func_80921c4(int actorId, int value, int arg2);
extern void OvlFunc_945_200c880(int actorId, int value);
extern void __CutsceneEnd(void);

void OvlFunc_945_2009a08(void)
{
    if (__GetFlag(0x301) != 0) {
        __CutsceneStart();
        __Func_8093304(8);
        __Func_8019aa0(0x1e48, 1, 8);
        {
            register int actorId asm("r0") = 0;
            register int xSpeed asm("r1") = 0x19999;
            register int zSpeed asm("r2") = 0xcccc;

            asm volatile("" : "+r"(actorId), "+r"(xSpeed), "+r"(zSpeed));
            __MapActor_SetSpeed(actorId, xSpeed, zSpeed);
        }
        {
            register int value asm("r1") = 0xcc;
            register int actorId asm("r0") = 0;

            asm volatile("" : "+r"(value), "+r"(actorId));
            value <<= 1;
            __Func_80921c4(actorId, value, 0x86);
        }
        OvlFunc_945_200c880(0, 0x4000);
        __CutsceneEnd();
    }
}
