extern u8 gState[];

extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc(int, int);
extern void OvlFunc_common1_1078(int, int, int);
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_588(int, int);
extern void OvlFunc_common1_5e4(int, int, int);

void OvlFunc_954_20095e0(int arg0)
{
    int res;

    if (*(s16 *)(gState + 0x1c2) == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    res = OvlFunc_common1_4cc(arg0, 3);
    if (res == 0) {
        __MessageID(0x2095);
        OvlFunc_954_2008134();
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0xd2 << 18, -1, 0xd8 << 16, 1);
        __Func_8093530();
        __ActorMessage(arg0, 0);
        OvlFunc_954_2008158();
        __CutsceneWait(0x3c);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0xb8 << 2, 0xc8);
        __Func_8092adc(0, 0, 0);
        OvlFunc_954_2008178();
        __MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
        __MapActor_TravelToAnimWait(0, 0xcc << 2, 0xc8);
        __CutsceneWait(0x1e);
        __MapActor_Emote(0, 0x105, 0x3c);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 3);
    } else if (res == 1) {
        __MessageID(0x2094);
        __ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(res, arg0, 3);
    __CutsceneEnd();
}
