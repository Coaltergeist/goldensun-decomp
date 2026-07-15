typedef unsigned char u8;
typedef signed short s16;

extern u8 *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern int __GetPartySize(void);
extern void __MessageID(int message);
extern int __Func_8093054(int actor, int message);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_809218c(int actor, int x, int y);
extern void __CutsceneWait(int frames);
extern void __Func_80921c4(int actor, int x, int y);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int map_id);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_common1_3e4(int actor)
{
    u8 *actorPtr = __MapActor_GetActor(actor);
    s16 x = *(s16 *)(actorPtr + 0xa);
    s16 y = *(s16 *)(actorPtr + 0x12);

    __CutsceneStart();
    if (__GetPartySize() <= 1) {
        __MessageID(0x20e5);
        if (__Func_8093054(actor, 0) == 0) {
            {
                register int sx asm("r1") = 0x80;
                register int sy asm("r2") = 0x80;
                register int a asm("r0") = 0;
                asm volatile("" : "+r"(a), "+r"(sx), "+r"(sy));
                sx <<= 9;
                sy <<= 8;
                asm volatile("" : "+r"(a), "+r"(sx), "+r"(sy));
                __MapActor_SetSpeed(a, sx, sy);
            }
            {
                register int sx asm("r1") = 0x80;
                register int sy asm("r2") = 0x80;
                register int a asm("r0") = actor;
                asm volatile("" : "+r"(a), "+r"(sx), "+r"(sy));
                sx <<= 9;
                sy <<= 8;
                asm volatile("" : "+r"(a), "+r"(sx), "+r"(sy));
                __MapActor_SetSpeed(a, sx, sy);
            }
            __Func_809218c(actor, x, y + 0x40);
            __CutsceneWait(0xf);
            __Func_80921c4(0, x, y);
            __Func_80921c4(0, x, y + 0x20);
            __MapTransitionOut();
            __WaitMapTransition();
            __Func_8091e9c(0xb);
        }
    } else {
        __MessageID(0x20e8);
        __ActorMessage(actor, 0);
    }
    __CutsceneEnd();
}
