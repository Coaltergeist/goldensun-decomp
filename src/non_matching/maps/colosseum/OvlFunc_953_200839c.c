void OvlFunc_953_200839c(void) {
    extern unsigned char *iwram_3001ebc;
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ShowActorMessage_NoWait(int, int);
    extern int __Func_8091c7c(int, int);
    extern void __MapActor_Emote(int, int, int);
    extern void __CutsceneWait(int);
    extern void __ActorMessage(int, int);
    extern void __SetFlag(int);
    extern void __Func_8093054(int, int);
    extern void __CutsceneEnd(void);
    unsigned short *p;

    __CutsceneStart();
    if (__GetFlag(0x962)) {
        if (__GetFlag(0xf0 << 2)) {
            __MessageID(0x225e);
        } else {
            __MessageID(0x225a);
            __ShowActorMessage_NoWait(0x10, 0);
            if (!__Func_8091c7c(0, 0)) {
                p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
                *p = *p + 1;
                __MapActor_Emote(0x10, 0x80 << 1, 0x28);
                __ShowActorMessage_NoWait(0x10, 0);
                if (!__Func_8091c7c(0, 0)) {
                    p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
                    *p = *p + 1;
                }
                __CutsceneWait(0x28);
                __ActorMessage(0x10, 0);
                __SetFlag(0xf0 << 2);
                goto end;
            }
        }
        __ActorMessage(0x10, 0);
    } else {
        __MessageID(0x205e);
        __Func_8093054(0x10, 0);
    }
end:
    __CutsceneEnd();
}
