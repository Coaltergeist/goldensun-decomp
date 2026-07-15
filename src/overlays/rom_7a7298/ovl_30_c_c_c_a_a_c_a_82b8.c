typedef int s32;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(s32 frames);
extern s32 __GetFlag(s32 flag);
extern void __MessageID(s32 message);
extern void __ActorMessage(s32 actor, s32 message);
extern void __MapActor_Surprise(s32 actor, s32 emote);
extern void __MapActor_SetAnim(s32 actor, s32 animation);
extern void __Func_809280c(s32 actor, s32 arg1, s32 arg2);
extern s32 __Func_8093054(s32 actor, s32 arg1);
extern void __Func_8092adc(s32 actor, s32 value, s32 duration);

void OvlFunc_921_20082b8(void)
{
    __CutsceneStart();
    if (__GetFlag(0x881) != 0) {
        __MessageID(0x163c);
        __ActorMessage(0xa, 0);
        __MapActor_Surprise(0xa, 0x102);
        __CutsceneWait(0x28);
        __MapActor_SetAnim(0xa, 1);
        __CutsceneWait(0x14);
        __Func_809280c(0xa, 0, 0x14);
        __Func_8093054(0xa, 0);
        {
            register s32 actorId asm("r0");
            register s32 value asm("r1");
            register s32 duration asm("r2");

            value = 0xc0;
            asm volatile("" : "+r"(value));
            actorId = 0xa;
            asm volatile("" : "+r"(actorId), "+r"(value));
            value <<= 6;
            asm volatile("" : "+r"(actorId), "+r"(value));
            duration = 0xa;
            asm volatile("" : "+r"(actorId), "+r"(value), "+r"(duration));
            __Func_8092adc(actorId, value, duration);
        }
        __MapActor_SetAnim(0xa, 9);
    } else {
        __MessageID(0x152d);
        __ActorMessage(0xa, 0);
        __MapActor_Surprise(0xa, 0x102);
        __CutsceneWait(0x28);
        __MapActor_SetAnim(0xa, 1);
        __CutsceneWait(0x14);
        __Func_809280c(0xa, 0, 0x14);
        __ActorMessage(0xa, 0);
        {
            register s32 actorId asm("r0");
            register s32 value asm("r1");
            register s32 duration asm("r2");

            value = 0xc0;
            asm volatile("" : "+r"(value));
            actorId = 0xa;
            asm volatile("" : "+r"(actorId), "+r"(value));
            value <<= 6;
            asm volatile("" : "+r"(actorId), "+r"(value));
            duration = 0xa;
            asm volatile("" : "+r"(actorId), "+r"(value), "+r"(duration));
            __Func_8092adc(actorId, value, duration);
        }
        __MapActor_SetAnim(0xa, 9);
    }
    __CutsceneEnd();
}
