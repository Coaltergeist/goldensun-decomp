extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8092848(unsigned int arg0, unsigned int arg1,
                           unsigned int arg2);
extern unsigned int __GetFlag(unsigned int flag);
extern void __MessageID(unsigned int message);
extern void __ActorMessage(unsigned int actor_id, unsigned int arg1);
extern unsigned char _MSG_eb0[];

void OvlFunc_884_20085e8(void)
{
    __CutsceneStart();
    __Func_8092848(0x10, 0, 0xa);
    if (__GetFlag(0x840)) {
        __MessageID(0xeb1);
        __ActorMessage(0x10, 0);
    } else {
        __MessageID((unsigned int)_MSG_eb0);
        __ActorMessage(0x10, 0);
    }
    __CutsceneEnd();
}
