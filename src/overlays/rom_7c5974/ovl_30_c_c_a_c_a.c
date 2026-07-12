extern unsigned char *__MapActor_GetActor(int actor);
extern int __GetFlag(int flag);
extern void __Func_80b3284(int actor, int arg1);
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __Func_8093054(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_940_200808c(void) {
    unsigned char *actor = __MapActor_GetActor(0);

    if ((unsigned int)(*(unsigned short *)(actor + 6) + 0xffff5fff) <= 0x3ffe
        && __GetFlag(0x941) != 0) {
        __Func_80b3284(8, 0x11);
        return;
    }
    __CutsceneStart();
    if (__GetFlag(0x941) != 0) {
        __MessageID(0x24fb);
        __Func_8093054(0x11, 0);
    } else {
        __MessageID(0x1bd0);
        __Func_8093054(0x11, 0);
    }
    __CutsceneEnd();
}
