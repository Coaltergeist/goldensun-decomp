typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern s32 __GetFlag(s32 flag);
extern void __MessageID(s32 message);
extern void __ActorMessage(s32 actorId, s32 value);
extern void OvlFunc_945_200c86c(s32 actorId);
extern void __Func_8092adc(s32 actorId, s32 value, s32 duration);
extern void __MapActor_DoAnim(s32 actor, s32 anim);
extern u8 *iwram_3001ebc;

void OvlFunc_945_2008728(void)
{
    __CutsceneStart();
    {
        register s32 flag928 asm("r0");
        asm volatile("ldr %0, .LOvlFunc_945_2008728_pool" : "=r"(flag928));
        if (__GetFlag(flag928) != 0) {
            register s32 msg asm("r0");
            asm volatile("ldr %0, .LOvlFunc_945_2008728_pool+4" : "=r"(msg));
            __MessageID(msg);
            OvlFunc_945_200c86c(8);
            {
                register s32 value asm("r1");
                register s32 duration asm("r2");
                register s32 actor asm("r0");

                value = 0xd0;
                asm volatile("" : "+r"(value));
                duration = 0x3c;
                asm volatile("" : "+r"(value), "+r"(duration));
                actor = 8;
                asm volatile("" : "+r"(value), "+r"(duration), "+r"(actor));
                value <<= 8;
                __Func_8092adc(actor, value, duration);
            }
            __MapActor_DoAnim(8, 4);
            OvlFunc_945_200c86c(8);
            __MapActor_DoAnim(8, 3);
        } else {
            register s32 flag925 asm("r0");
            asm volatile("ldr %0, .LOvlFunc_945_2008728_pool+8" : "=r"(flag925));
            if (__GetFlag(flag925) != 0) {
                register s32 msg asm("r0");
                asm volatile("ldr %0, .LOvlFunc_945_2008728_pool+12" : "=r"(msg));
                __MessageID(msg);
                __ActorMessage(8, 0);
            } else {
                register s32 flag921 asm("r0");
                asm volatile("ldr %0, .LOvlFunc_945_2008728_pool+16" : "=r"(flag921));
                if (__GetFlag(flag921) != 0) {
                    register s32 msg asm("r0");
                    asm volatile("ldr %0, .LOvlFunc_945_2008728_pool+20" : "=r"(msg));
                    __MessageID(msg);
                    __ActorMessage(8, 0);
                    {
                        register s32 flag925b asm("r0");
                        asm volatile("ldr %0, .LOvlFunc_945_2008728_pool+8" : "=r"(flag925b));
                        if (__GetFlag(flag925b) == 0) {
                            register s32 flag924 asm("r0");
                            asm volatile("ldr %0, .LOvlFunc_945_2008728_pool+24" : "=r"(flag924));
                            if (__GetFlag(flag924) != 0) {
                                register u8 **addr asm("r3");
                                register s32 off asm("r1");

                                asm volatile("ldr %0, .LOvlFunc_945_2008728_pool+28"
                                             : "=r"(addr));
                                asm volatile("" : "+r"(addr));
                                off = 0xb9;
                                asm volatile("" : "+r"(addr), "+r"(off));
                                {
                                    register u8 *base asm("r3") = *addr;

                                    asm volatile("" : "+r"(base), "+r"(off));
                                    off <<= 1;
                                    asm volatile("" : "+r"(base), "+r"(off));
                                    {
                                        register u8 *dest asm("r2") = base + off;
                                        register u32 value asm("r3") = 1;

                                        asm volatile("" : "+r"(dest));
                                        *(u16 *)dest = value;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    register s32 msg asm("r0");
                    asm volatile("ldr %0, .LOvlFunc_945_2008728_pool+32" : "=r"(msg));
                    __MessageID(msg);
                    __ActorMessage(8, 0);
                }
            }
        }
    }
    __CutsceneEnd();
}

asm(
    ".align 2, 0\n"
    ".LOvlFunc_945_2008728_pool:\n"
    ".word 0x928\n"
    ".word 0x1eb2\n"
    ".word 0x925\n"
    ".word 0x1e06\n"
    ".word 0x921\n"
    ".word 0x1dcd\n"
    ".word 0x924\n"
    ".word iwram_3001ebc\n"
    ".word 0x1d30\n"
);
