extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __CutsceneWait(int frames);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_898_2008e0c(void) {
    register unsigned char *busy asm("r5") = __MapActor_GetActor(0x13);
    register int one asm("r3");

    asm volatile("" : "+r"(busy));
    one = 1;
    asm volatile("" : "+r"(busy), "+r"(one));
    busy += 0x5b;
    asm volatile("" : "+r"(busy), "+r"(one));
    *busy = one;
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1241);
        __MapActor_SetAnim(0x13, 0);
        __CutsceneWait(2);
    } else if (__GetFlag(0x858) != 0) {
        __MessageID(0x13ab);
    } else {
        __MessageID(0x134e);
    }
    __ActorMessage(0x13, 0);
    __CutsceneEnd();
    *busy = 0;
}
