extern unsigned char gState[];
extern void __MessageID(int message);
extern int __GetFlag(int flag);
extern void __MapActor_Emote(int actor, int emote, int frames);
extern void __ActorMessage(int actor, int message);
extern void __Func_809259c(int actor, int arg1);
extern void __SetFlag(int flag);

void OvlFunc_939_20088ec(void) {
    register unsigned int stateValue asm("r3");
    register unsigned int stateOffset asm("r2");

    stateValue = (unsigned int)gState;
    asm volatile("" : "+r"(stateValue));
    stateOffset = 0x93;
    asm volatile("" : "+r"(stateValue), "+r"(stateOffset));
    stateOffset <<= 2;
    asm volatile("" : "+r"(stateValue), "+r"(stateOffset));
    stateValue += stateOffset;
    asm volatile("" : "+r"(stateValue));
    stateOffset = 0;
    asm volatile("" : "+r"(stateValue), "+r"(stateOffset));
    stateValue = *(short *)(stateValue + stateOffset);
    asm volatile("" : "+r"(stateValue));
    if ((int)stateValue != 0) {
        __MessageID(0x2411);
    } else if (__GetFlag(0x941) != 0 && __GetFlag(0x94d) == 0) {
        register int message asm("r5");

        {
            register int actor asm("r0");
            register int emote asm("r1");
            register int frames asm("r2");

            frames = 0x3c;
            asm volatile("" : "+r"(frames));
            emote = 0x101;
            asm volatile("" : "+r"(emote), "+r"(frames));
            actor = 8;
            asm volatile("" : "+r"(actor), "+r"(emote), "+r"(frames));
            __MapActor_Emote(actor, emote, frames);
        }
        message = 0x24db;
        asm volatile("" : "+r"(message));
        __MessageID(message);
        __ActorMessage(8, 0);
        message++;
        asm volatile("" : "+r"(message));
        __Func_809259c(8, 1);
        __MessageID(message);
        __SetFlag(0x9af);
    } else {
        __MessageID(0x1bb5);
    }
    __ActorMessage(8, 0);
}
