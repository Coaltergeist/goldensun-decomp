typedef signed int s32;
extern void __CutsceneStart(void);
extern void __Func_808e118(void);
extern s32 __GetFlag(s32 flag);
extern void __MessageID(s32 message);
extern void __ActorMessage(s32 actorId, s32 value);
extern void __Func_8092c40(s32 actorId, s32 value);
extern s32 __Func_8091c7c(s32, s32);
extern void OvlFunc_945_2009f3c(void);
extern void __Func_809259c(s32 actorId, s32 value);
extern void __Func_8092adc(s32 actorId, s32 value, s32 zero);
extern void __CutsceneEnd(void);

void OvlFunc_945_2008670(void)
{
    __CutsceneStart();
    __Func_808e118();
    if (__GetFlag(0x921) != 0) {
        __MessageID(0x1dd4);
        __ActorMessage(10, 0);
    } else if (__GetFlag(0x922) != 0) {
        __MessageID(0x1d91);
        {
            register s32 zero asm("r1") = 0;
            register s32 actor asm("r0");
            asm volatile("" : "+r" (zero));
            actor = 10;
            __Func_8092c40(actor, zero);
        }
        if (__Func_8091c7c(0, 0) == 0) {
            OvlFunc_945_2009f3c();
        } else {
            __Func_809259c(10, 2);
            __ActorMessage(10, 0);
            {
                register s32 value asm("r1") = 0xd0;
                register s32 actor asm("r0");
                register s32 zero asm("r2");
                asm volatile("" : "+r" (value));
                actor = 10;
                asm volatile("" : "+r" (actor), "+r" (value));
                value <<= 8;
                zero = 0;
                __Func_8092adc(actor, value, zero);
            }
        }
    } else {
        __MessageID(0x1d31);
        __ActorMessage(10, 0);
    }
    __CutsceneEnd();
}
