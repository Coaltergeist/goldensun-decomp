extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc(int, int);
extern void OvlFunc_common1_1078(int, int, int);
extern void OvlFunc_common1_15b8(int, int, int);
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_588(int, int);
extern void OvlFunc_common1_5e4(int, int, int);
extern void OvlFunc_955_2008310(int, int, int);

void OvlFunc_955_2009538(int arg0)
{
    unsigned int r3;
    int result;

    r3 = (unsigned int)&gState;
    r3 += 0xe1 << 1;
    if (*(short *)r3 == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    result = OvlFunc_common1_4cc(arg0, 3);
    if (result == 0) {
        API_MessageID(0x20a6);
        API_Func_80933d4(0x30000, 0x6000);
        API_Func_80933f8(0x2f00000, -1, 0xc00000, 1);
        API_Func_8093530();
        API_CutsceneWait(60);
        API_Func_80933d4(0x10000, 0x2000);
        API_Func_80933f8(0x2f00000, -1, 0xe00000, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x358, 0x108);
        API_CutsceneWait(10);
        API_MapActor_SetSpeed(0, 0x18000, 0xc000);
        OvlFunc_common1_15b8(0, 0x358, 0x108);
        OvlFunc_common1_15b8(0, 0x358, 0xe8);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_15b8(0, 0x348, 0xe8);
        API_CutsceneWait(10);
        OvlFunc_955_2008310(0x21, -0x40, 0);
        API_Func_80933f8(0x2f00000, -1, 0xd80000, 1);
        API_MapActor_SetAnim(0, 1);
        API_CutsceneWait(10);
        API_MapActor_SetSpeed(0, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(0, 0x2f8, 0xe8);
        API_CutsceneWait(10);
        API_Func_8092adc(0, 0x4000, 30);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        API_MapActor_SetPos(0x21, 0x3480000, 0xe80000);
        OvlFunc_common1_588(arg0, 3);
    } else if (result == 1) {
        API_MessageID(0x20a5);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(result, arg0, 3);
    API_CutsceneEnd();
}
