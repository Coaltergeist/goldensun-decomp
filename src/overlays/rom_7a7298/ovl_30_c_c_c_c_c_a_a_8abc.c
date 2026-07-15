extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __UI_Sanctum(int actor_id);
extern void __Func_8093054(int actor, int value);
extern void __Func_8092adc(int actor, int value, int duration);

void OvlFunc_921_2008abc(void) {
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned short val = *(unsigned short *)(actor + 6);

    if ((unsigned short)(val + 0x5fff) <= 0x3ffe) {
        __CutsceneStart();
        {
            register int flag asm("r0") = 0x82d;

            if (__GetFlag(flag) == 0) {
                __MessageID(0x1553);
                __ActorMessage(0x13, 0);
                flag = 0x82d;
                __SetFlag(flag);
            }
        }
        __CutsceneEnd();
        __UI_Sanctum(0x13);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x881) != 0) {
            __MessageID(0x1671);
            __ActorMessage(0x13, 0);
        } else if (__GetFlag(3) != 0) {
            __MessageID(0x1572);
            __ActorMessage(0x13, 0);
        } else {
            __MessageID(0x1554);
            {
                register int value asm("r1") = 0;
                register int actorId asm("r0") = 0x13;

                __Func_8093054(actorId, value);
            }
            {
                register int actorId asm("r0");
                register int value asm("r1");
                register int duration asm("r2");

                value = 0xc0;
                asm volatile("" : "+r"(value));
                actorId = 0x13;
                asm volatile("" : "+r"(actorId), "+r"(value));
                value <<= 6;
                asm volatile("" : "+r"(actorId), "+r"(value));
                duration = 0xa;
                asm volatile("" : "+r"(actorId), "+r"(value), "+r"(duration));
                __Func_8092adc(actorId, value, duration);
            }
        }
        __CutsceneEnd();
    }
}
