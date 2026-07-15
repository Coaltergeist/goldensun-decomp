typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __MessageID(int message);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __Func_8092848(int arg0, int arg1, int arg2);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __Func_8092adc(int actor, int value, int duration);
extern void __MapActor_Jump(int actor, int height, int direction);
extern void __CutsceneEnd(void);

void OvlFunc_883_2008ba8(void)
{
    __CutsceneStart();
    {
        register int flag asm("r0");
        asm volatile("ldr %0, =0x807" : "=r"(flag));
        if (__GetFlag(flag) == 0) {
            {
                register int flag2 asm("r0");
                asm volatile("ldr %0, =0x807" : "=r"(flag2));
                __SetFlag(flag2);
            }
            {
                register int msg asm("r0");
                asm volatile("ldr %0, =0xf63" : "=r"(msg));
                __MessageID(msg);
            }
            {
                register int actor asm("r0");
                register int emote asm("r1");
                register int dur asm("r2");
                actor = 0x12;
                asm volatile("" : "+r"(actor));
                asm volatile("ldr %0, =0x103" : "=r"(emote));
                asm volatile("" : "+r"(actor), "+r"(emote));
                dur = 0;
                asm volatile("" : "+r"(actor), "+r"(emote), "+r"(dur));
                __MapActor_Emote(actor, emote, dur);
            }
            __Func_8092848(0, 0x12, 0x14);
            __Func_8093040(0x12, 0, 6);
            {
                register int actor asm("r0");
                register int value asm("r1");
                register int dur asm("r2");
                value = 0x80;
                asm volatile("" : "+r"(value));
                actor = 0x12;
                asm volatile("" : "+r"(actor), "+r"(value));
                value <<= 8;
                asm volatile("" : "+r"(actor), "+r"(value));
                dur = 0x1e;
                asm volatile("" : "+r"(actor), "+r"(value), "+r"(dur));
                __Func_8092adc(actor, value, dur);
            }
            __MapActor_Jump(0x12, 2, 0x14);
            __Func_8093040(0x12, 0, 6);
            __Func_8092848(0x12, 0, 0xa);
            {
                register int actor asm("r0");
                register int emote asm("r1");
                register int dur asm("r2");
                actor = 0x12;
                asm volatile("" : "+r"(actor));
                asm volatile("ldr %0, =0x103" : "=r"(emote));
                asm volatile("" : "+r"(actor), "+r"(emote));
                dur = 0;
                asm volatile("" : "+r"(actor), "+r"(emote), "+r"(dur));
                __MapActor_Emote(actor, emote, dur);
            }
            __Func_8093040(0x12, 0, 0xa);
            {
                register int actor asm("r0");
                register int emote asm("r1");
                register int dur asm("r2");
                emote = 0x81;
                asm volatile("" : "+r"(emote));
                actor = 0;
                asm volatile("" : "+r"(actor), "+r"(emote));
                emote <<= 1;
                asm volatile("" : "+r"(actor), "+r"(emote));
                dur = 0x3c;
                asm volatile("" : "+r"(actor), "+r"(emote), "+r"(dur));
                __MapActor_Emote(actor, emote, dur);
            }
        } else {
            {
                register int actor asm("r0");
                register int emote asm("r1");
                register int dur asm("r2");
                asm volatile("ldr %0, =0x103" : "=r"(emote));
                dur = 0;
                asm volatile("" : "+r"(emote), "+r"(dur));
                actor = 0x12;
                asm volatile("" : "+r"(actor), "+r"(emote), "+r"(dur));
                __MapActor_Emote(actor, emote, dur);
            }
            {
                register int msg asm("r0");
                asm volatile("ldr %0, =0xf66" : "=r"(msg));
                __MessageID(msg);
            }
            __Func_8093040(0x12, 0, 0x14);
        }
    }
    __CutsceneEnd();
}
