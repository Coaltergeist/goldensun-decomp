void OvlFunc_953_200839c(void) {
    extern unsigned char *iwram_3001ebc;
    extern void __ShowActorMessage_NoWait(int, int);
    extern int __Func_8091c7c(int, int);
    unsigned short *p;

    __CutsceneStart();
    if (__GetFlag(0x962)) {
        if (__GetFlag(0x3c0)) {
            __MessageID(0x225e);
            __ActorMessage(0x10, 0);
        } else {
            __MessageID(0x225a);
            __ShowActorMessage_NoWait(0x10, 0);
            if (__Func_8091c7c(0, 0)) {
                __ActorMessage(0x10, 0);
            } else {
                p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
                *p = *p + 1;
                __MapActor_Emote(0x10, 0x100, 0x28);
                __ShowActorMessage_NoWait(0x10, 0);
                if (__Func_8091c7c(0, 0) == 0) {
                    p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
                    *p = *p + 1;
                }
                __CutsceneWait(0x28);
                __ActorMessage(0x10, 0);
                __SetFlag(0x3c0);
            }
        }
    } else {
        __MessageID(0x205e);
        __Func_8093054(0x10, 0);
    }
    __CutsceneEnd();
}
