extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __Func_80b3284(int action, int actor);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __Func_8093054(int actor, int value);
extern void __Func_8092adc(int actor, int value, int duration);

void OvlFunc_921_2008a3c(void) {
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned short val = *(unsigned short *)(actor + 6);

    if ((unsigned short)(val + 0x5fff) <= 0x3ffe) {
        __Func_80b3284(4, 0x10);
    } else {
        __CutsceneStart();
        __Func_809280c(0x10, 0, 0xa);
        if (__GetFlag(0x881) != 0) {
            __MessageID(0x1653);
            __Func_8093054(0x10, 0);
        } else {
            __MessageID(0x154b);
            __ActorMessage(0x10, 0);
        }
        {
            register int actorId asm("r0");
            register int value asm("r1");
            register int duration asm("r2");

            value = 0xc0;
            asm volatile("" : "+r"(value));
            actorId = 0x10;
            asm volatile("" : "+r"(actorId), "+r"(value));
            value <<= 6;
            asm volatile("" : "+r"(actorId), "+r"(value));
            duration = 0xa;
            asm volatile("" : "+r"(actorId), "+r"(value), "+r"(duration));
            __Func_8092adc(actorId, value, duration);
        }
        __CutsceneEnd();
    }
}
