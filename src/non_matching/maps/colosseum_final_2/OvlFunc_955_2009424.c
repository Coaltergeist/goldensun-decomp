extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc(int, int);
extern void OvlFunc_common1_1078(int, int, int);
extern void OvlFunc_common1_15b8(int, int, int);
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_588(int, int);
extern void OvlFunc_common1_5e4(int, int, int);

void OvlFunc_955_2009424(int arg0)
{
    int val;
    int x;

    if (*(s16 *)(&gState + 0x1c2) == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    val = OvlFunc_common1_4cc(arg0, 2);
    if (val == 0) {
        API_MessageID(0x20a2);
        OvlFunc_955_20088ec();
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0xf6 << 18, -1, 0xe8 << 16, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        x = 0x87;
        OvlFunc_955_2008950();
        API_ActorMessage(arg0, 0);
        x <<= 3;
        OvlFunc_common1_1078(0, x, 0x84 << 1);
        API_CutsceneWait(15);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, x, 0xd8);
        OvlFunc_common1_15b8(0, 0x85 << 3, 0xd8);
        OvlFunc_955_2008970();
        __Func_8093c00();
        API_Func_80933f8(-1, -1, -1, 0);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 2);
    } else if (val == 1) {
        API_MessageID(0x20a1);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(val, arg0, 2);
    API_CutsceneEnd();
}
