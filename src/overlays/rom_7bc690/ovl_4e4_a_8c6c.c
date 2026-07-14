extern unsigned int __Random(void);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int mode);

void OvlFunc_933_2008c6c(int param_1)
{
    int i;
    unsigned int index;
    int flag;

    for (i = 0; i <= 2; i++) {
        index = (__Random() * 3) >> 16;
        flag = index + 0x303;
        if (__GetFlag(flag) == 0) {
            __SetFlag(flag);
            break;
        }
    }

    __CutsceneStart();
    __MessageID(param_1 * 3 + index + 0x1a10);
    __ActorMessage(index + 1, 0);
    __CutsceneEnd();
}
