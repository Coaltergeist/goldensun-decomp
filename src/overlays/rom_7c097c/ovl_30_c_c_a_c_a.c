extern unsigned int iwram_3001ebc;
extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __Func_8092848(int arg0, int actor, int arg2);
extern void __CutsceneWait(int frames);
extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __MapActor_DoAnim(int actor, int animation);
extern void __ActorMessage(int actor, int arg1);
extern void __CutsceneEnd(void);

void OvlFunc_936_20082e8(void)
{
    unsigned char *actor;
    unsigned int adjusted;

    actor = __MapActor_GetActor(0);
    adjusted = (*(unsigned short *)(actor + 6) + 0xfffff000) << 16;
    if (adjusted > (0xc0u << 23)) {
        __CutsceneStart();
        __Func_8092848(0, 8, 0);
        __CutsceneWait(10);
        __MessageID(0x2584);
        {
            register int actorId asm("r0");
            register int zero asm("r1");

            zero = 0;
            asm volatile("" : "+r"(zero));
            actorId = 8;
            asm volatile("" : "+r"(actorId), "+r"(zero));
            __Func_8092c40(actorId, zero);
        }
        if (__Func_8091c7c(0, 0) == 0) {
            __MapActor_DoAnim(8, 4);
            __ActorMessage(8, 0);
        } else {
            unsigned short *counter;

            counter = (unsigned short *)(iwram_3001ebc + (0xec << 1));
            ++*counter;
            __MapActor_DoAnim(8, 3);
            __ActorMessage(8, 0);
        }
        __CutsceneEnd();
    }
}
