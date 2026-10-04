extern u8 gState[];
extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc(int, int);
extern void OvlFunc_common1_1078(int, int, int);
extern void OvlFunc_common1_15b8(int, int, int);
extern void OvlFunc_common1_1314(int);
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_588(int, int);
extern void OvlFunc_common1_5e4(int, int, int);

void OvlFunc_954_2009214(int arg0)
{
    int result;

    if (*(s16 *)(gState + 0x1c2) == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    result = OvlFunc_common1_4cc(arg0, 1);
    if (result == 0) {
        API_MessageID(0x208c);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0xa4 << 17, -1, 0xa8 << 16, 1);
        __Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x118, 0xc8);
        API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
        API_MapActor_TravelToAnimWait(0, 0x168, 0xc8);
        __CutsceneWait(0x1e);
        API_MapActor_Emote(0, 0x102, 0x3c);
        API_ActorMessage(arg0, 0);
        API_MapActor_TravelToAnimWait(0, 0x138, 0xc8);
        __CutsceneWait(0x1e);
        API_Func_8092adc(0, 0xc0 << 8, 0xa);
        API_MapActor_Emote(0, 0x106, 0x3c);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, 0x128, 0xb8);
        OvlFunc_common1_15b8(0, 0x128, 0x98);
        OvlFunc_common1_15b8(0, 0x138, 0x98);
        API_Func_8092adc(0, 0x80 << 7, 0xf);
        OvlFunc_common1_2060();
        OvlFunc_common1_1314(0);
        OvlFunc_common1_2060();
        OvlFunc_common1_1314(0);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        API_MapActor_TravelToAnimWait(0, 0x130, 0xb8);
        API_MapActor_TravelToAnimWait(0, 0x128, 0xc0);
        API_MapActor_TravelToAnimWait(0, 0x128, 0xc8);
        API_Func_8092adc(0, 0, 0xf);
        OvlFunc_common1_2060();
        OvlFunc_common1_1314(0);
        OvlFunc_common1_2060();
        OvlFunc_common1_1314(0);
        API_MapActor_SetAnim(0, 1);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        API_MapActor_SetPos(9, 0x9c << 17, 0xa8 << 16);
        OvlFunc_common1_588(arg0, 1);
    } else if (result == 1) {
        API_MessageID(0x208b);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(result, arg0, 1);
    __CutsceneEnd();
}
