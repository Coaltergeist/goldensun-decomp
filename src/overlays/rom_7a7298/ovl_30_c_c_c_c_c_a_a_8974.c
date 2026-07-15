typedef unsigned char u8;
typedef unsigned int u32;
typedef short s16;
typedef int s32;

extern u8 *__MapActor_GetActor(s32 actor);
extern s32 __GetFlag(s32 flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MessageID(s32 message);
extern void __ActorMessage(s32 actor, s32 message);
extern void __Func_80b0278(s32 action, s32 actor);
extern void __Func_809280c(s32 actor, s32 arg1, s32 arg2);
extern void __Func_8092adc(s32 actor, s32 value, s32 duration);

void OvlFunc_921_2008974(void)
{
    u8 *actor = __MapActor_GetActor(0);
    s16 val = *(s16 *)(actor + 6);

    if (__GetFlag(0x881) != 0) {
        if (val * 0x10000 + 0x5fff0000u <= 0x3ffe0000) {
            __Func_80b0278(0xc, 0xf);
        } else {
            __CutsceneStart();
            __Func_809280c(0xf, 0, 0);
            __MessageID(0x164f);
            __ActorMessage(0xf, 0);
            {
                register s32 actorId asm("r0");
                register s32 value asm("r1");
                register s32 duration asm("r2");

                value = 0x80;
                asm volatile("" : "+r"(value));
                actorId = 0xf;
                asm volatile("" : "+r"(actorId), "+r"(value));
                value <<= 7;
                asm volatile("" : "+r"(actorId), "+r"(value));
                duration = 0;
                asm volatile("" : "+r"(actorId), "+r"(value), "+r"(duration));
                __Func_8092adc(actorId, value, duration);
            }
            __CutsceneEnd();
        }
    } else {
        if (val * 0x10000 + 0x5fff0000u <= 0x3ffe0000) {
            __CutsceneStart();
            __MessageID(0x1546);
            __ActorMessage(0xe, 0);
            {
                register s32 actor2 asm("r0");
                register s32 mode asm("r1");

                mode = 0xe;
                asm volatile("" : "+r"(mode));
                actor2 = 0xc;
                asm volatile("" : "+r"(actor2), "+r"(mode));
                __Func_80b0278(actor2, mode);
            }
            __CutsceneEnd();
        } else {
            __Func_809280c(0xe, 0, 0xa);
            __MessageID(0x1547);
            __ActorMessage(0xe, 0);
            {
                register s32 actorId asm("r0");
                register s32 value asm("r1");
                register s32 duration asm("r2");

                value = 0xa0;
                asm volatile("" : "+r"(value));
                actorId = 0xe;
                asm volatile("" : "+r"(actorId), "+r"(value));
                value <<= 7;
                asm volatile("" : "+r"(actorId), "+r"(value));
                duration = 0xa;
                asm volatile("" : "+r"(actorId), "+r"(value), "+r"(duration));
                __Func_8092adc(actorId, value, duration);
            }
        }
    }
}
