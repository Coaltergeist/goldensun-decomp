extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __Func_8092848(int, int, int);
extern void __Func_8093054(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_883_2008b28(void) {
    __CutsceneStart();
    if (__GetFlag(0x815)) {
        __MessageID(0x11c9);
        __ActorMessage(0xe, 0);
    } else {
        register int result __asm__("r0") = __GetFlag(0x806);
        __asm__ volatile("" : : "r"(result));
        if (!result) {
            __SetFlag(0x806);
            __MessageID(0xf7c);
            __Func_8092848(0xe, 0, 4);
            __Func_8093054(0xe, 0);
        } else {
            __MessageID(0xf7e);
            __Func_8092848(0xe, 0, 4);
            __ActorMessage(0xe, 0);
        }
    }
    __CutsceneEnd();
}
