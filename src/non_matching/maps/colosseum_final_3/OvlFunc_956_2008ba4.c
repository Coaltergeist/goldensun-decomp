extern unsigned char *iwram_3001ebc;
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MessageID(int);
extern void __ShowActorMessage_NoWait(void *, int);
extern int __Func_8091c7c(int, int);
extern void __ActorMessage(void *, int);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void OvlFunc_common1_78(int);
extern void __MapTransitionIn(void);

void OvlFunc_956_2008ba4(int arg0)
{
    unsigned int r1;
    unsigned char *p;
    int id;

    p = iwram_3001ebc;
    r1 = 0xfa;
    r1 <<= 1;
    id = *(int *)((char *)&gState + r1);
    r1 -= 0x32;
    if (*(short *)((char *)&gState + r1) == 2) {
        __CutsceneStart();
        __MessageID(0x2073 + arg0 * 3);
        __ShowActorMessage_NoWait((void *)arg0, 0);
        if (__Func_8091c7c(id, 0) == 0) {
            __MessageID(0x2074 + arg0 * 3);
            __ActorMessage((void *)arg0, 0);
            *(int *)(p + 0x1c0) = 0x200;
            *(int *)(p + 0x1c8) = 0xf;
            __MapTransitionOut();
            __WaitMapTransition();
            OvlFunc_common1_78(arg0);
            __MapTransitionIn();
            __WaitMapTransition();
        } else {
            __MessageID(0x2075 + arg0 * 3);
            __ActorMessage((void *)arg0, 0);
        }
        __CutsceneEnd();
    }
}
