extern void *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __MapActor_TurnToFaceActor(int, int, int);
extern void __CutsceneWait(int);
extern void __MessageID(int);
extern void __ShowActorMessage_NoWait(int, int);
extern int __Func_8091c7c(int, int);
extern void __MapActor_DoAnim(int, int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);
extern unsigned int iwram_3001ebc;

void OvlFunc_936_20082e8(void)
{
    unsigned char *p;
    unsigned int v;

    p = (unsigned char *)__MapActor_GetActor(0);
    v = (*(unsigned short *)(p + 6) + 0xfffff000) << 16;
    if (v > (0x60 << 24)) {
        __CutsceneStart();
        __MapActor_TurnToFaceActor(0, 8, 0);
        __CutsceneWait(10);
        __MessageID(0x2584);
        __ShowActorMessage_NoWait(8, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __MapActor_DoAnim(8, 4);
            __ActorMessage(8, 0);
        } else {
            unsigned short *p2 = (unsigned short *)(iwram_3001ebc + (0xec << 1));
            *p2 += 1;
            __MapActor_DoAnim(8, 3);
            __ActorMessage(8, 0);
        }
        __CutsceneEnd();
    }
}
