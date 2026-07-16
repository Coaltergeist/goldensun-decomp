typedef unsigned short u16;

extern unsigned char *iwram_3001ebc;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void OvlFunc_899_200c624(int actor_id, int arg1, int arg2);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __MessageID(int message_id);
extern void __Func_8092c40(int actor_id, int value);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __CutsceneWait(int frames);
extern void __ActorMessage(int actor_id, int value);
extern void __Func_80925cc(int actor_id, int value);
extern int __Func_8078500(void);
extern void __MapActor_DoAnim(int actor_id, int animation);
extern void __Func_808f1c0(int arg0, int arg1);
extern void __Func_8091a58(int arg0, int arg1);
extern void __Func_8092adc(int actor_id, int value, int arg2);

static inline void SetActorValue(int actor_id, unsigned char base_value)
{
    __Func_8092adc(actor_id, base_value << 7, 0);
}

void OvlFunc_899_200891c(void)
{
    u16 *counter;

    __CutsceneStart();
    OvlFunc_899_200c624(0x12, 0, 2);

    if (!__GetFlag(0x85b)) {
        __MessageID(0x137c);
        __Func_8092c40(0x12, 0);
    } else {
        __MessageID(0x1385);
        __Func_8092c40(0x12, 0);
    }

    if (!__Func_8091c7c(0, 0)) {
        __CutsceneWait(0x14);
        __ActorMessage(0x12, 0);
        __CutsceneWait(0x14);
        __Func_80925cc(0x12, 2);
        __CutsceneWait(0x14);
        if (!__Func_8078500()) {
            __MapActor_DoAnim(0x12, 4);
            __CutsceneWait(0x14);
            __MessageID(0x1384);
            __ActorMessage(0x12, 0);
        } else {
            __Func_808f1c0(0xe7, 3);
            __Func_8091a58(0xe7, 0);
            __SetFlag(0x85b);
        }
    } else {
        counter = (u16 *)(iwram_3001ebc + 0x1d8);
        (*counter)++;
        __CutsceneWait(0x14);
        __MapActor_DoAnim(0x12, 3);
        __CutsceneWait(0x14);
        __ActorMessage(0x12, 0);
    }

    SetActorValue(0x12, 0x80);
    __CutsceneEnd();
}
