extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc(int, int);
extern void OvlFunc_common1_1490(int, int, int);
extern void OvlFunc_common1_1550(void);
extern void OvlFunc_common1_1078(int, int, int);
extern void OvlFunc_common1_15b8(int, int, int);
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_588(int, int);
extern void OvlFunc_common1_5e4(int, int, int);

void OvlFunc_954_20096ec(int actor)
{
    int result;

    if (*(s16 *)(gState + 0x1c2) == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    result = OvlFunc_common1_4cc(actor, 4);
    if (result == 0) {
        API_MessageID(0x2099);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0x88 << 19, -1, 0xa8 << 16, 1);
        __Func_8093530();
        API_ActorMessage(actor, 0);
        OvlFunc_common1_1490(0x78, 0x48, 0);
        API_ActorMessage(actor, 0);
        OvlFunc_common1_1550();
        __CutsceneWait(0xf);
        OvlFunc_common1_1078(0, 0x3d8, 0xc8);
        API_Func_8092adc(0, 0, 0xa);
        API_ActorMessage(actor, 0);
        API_Func_8092adc(0, 0x4000, 0x1e);
        API_MapActor_Emote(0, 0x106, 0x3c);
        API_MapActor_SetSpeed(0, 0x18000, 0xc000);
        OvlFunc_common1_15b8(0, 0x3e8, 0xc0);
        OvlFunc_common1_15b8(0, 0x3e8, 0xb0);
        OvlFunc_common1_15b8(0, 0x3f8, 0xa8);
        __CutsceneWait(0xf);
        OvlFunc_954_200833c(0x12, 0xa0, 0);
        __Func_80933f8(0x88 << 19, -1, 0xa8 << 16, 1);
        API_MapActor_SetAnim(0, 1);
        __CutsceneWait(0xa);
        API_MapActor_SetSpeed(0, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(0, 0x4a8, 0xa8);
        __CutsceneWait(0xa);
        API_Func_8092adc(0, 0x8000, 0x1e);
        API_MapActor_Emote(0, 0x102, 0x3c);
        API_ActorMessage(actor, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        API_MapActor_SetPos(0x12, 0xfe << 18, 0xa8 << 16);
        OvlFunc_common1_588(actor, 4);
    } else if (result == 1) {
        API_MessageID(0x2098);
        API_ActorMessage(actor, 0);
    }
    OvlFunc_common1_5e4(result, actor, 4);
    __CutsceneEnd();
}
