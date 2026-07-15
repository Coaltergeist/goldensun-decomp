typedef unsigned char u8;
typedef unsigned short u16;
typedef signed int s32;

extern void __CutsceneStart(void);
extern s32 __GetFlag(s32 flag);
extern void __MessageID(s32 message);
extern void __Func_8093054(s32 actor, s32 value);
extern void __Func_8092c40(s32 actor, s32 value);
extern s32 __Func_8091c7c(s32, s32);
extern void __ActorMessage(s32 actor, s32 value);
extern void __CutsceneEnd(void);
extern u8 *iwram_3001ebc;

void OvlFunc_926_2008484(void)
{
    __CutsceneStart();
    if (__GetFlag(0x88f) != 0) {
        __MessageID(0x17d6);
        {
            register s32 zero asm("r1") = 0;
            register s32 actor asm("r0");
            asm volatile("" : "+r" (zero));
            actor = 0xc;
            __Func_8093054(actor, zero);
        }
        __CutsceneEnd();
    } else {
        __MessageID(0x1794);
        {
            register s32 zero asm("r1") = 0;
            register s32 actor asm("r0");
            asm volatile("" : "+r" (zero));
            actor = 0xc;
            __Func_8092c40(actor, zero);
        }
        if (__Func_8091c7c(0, 0) == 1) {
            register u8 **state asm("r5") = &iwram_3001ebc;
            {
                register s32 offset asm("r2") = 0xec;
                register u8 *counter asm("r3") = *state;
                register u16 value asm("r2");
                offset <<= 1;
                counter += offset;
                value = *(u16 *)counter;
                value++;
                {
                    register s32 zero asm("r1") = 0;
                    register s32 actor asm("r0");
                    *(u16 *)counter = value;
                    asm volatile("" : "+r" (zero) : "m" (*(u16 *)counter) : "memory");
                    actor = 0xc;
                    __Func_8092c40(actor, zero);
                }
            }
            if (__Func_8091c7c(0, 0) == 1) {
                register u8 *counter asm("r2") = *state;
                register s32 offset asm("r3") = 0xec;
                register u16 value asm("r3");
                offset <<= 1;
                counter += offset;
                value = *(u16 *)counter;
                value++;
                *(u16 *)counter = value;
            }
        }
        __ActorMessage(0xc, 0);
        __CutsceneEnd();
    }
}
