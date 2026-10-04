extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc(int, int);
extern void OvlFunc_common1_1078(int, int, int);
extern void OvlFunc_common1_15b8(int, int, int);
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_588(int, int);
extern void OvlFunc_common1_5e4(int, int, int);

void OvlFunc_955_20092f0(int arg0)
{
    int res;
    int speed;
    struct Actor *actor;

    if (((s16 *)&gState)[0xe1] == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    res = OvlFunc_common1_4cc(arg0, 1);
    if (res == 0) {
        API_MessageID(0x209e);
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0x99 << 19, -1, 0xb8 << 16, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x9f << 3, 0xa8);
        speed = 0xa1 << 3;
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, speed, 0xb8);
        OvlFunc_common1_15b8(0, speed, 0xd8);
        speed -= 0x40;
        OvlFunc_common1_15b8(0, speed, 0xd8);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_15b8(0, speed, 0xf8);
        OvlFunc_common1_15b8(0, 0x95 << 3, 0xf8);
        API_CutsceneWait(3);
        actor = __MapActor_GetActor(0);
        actor->motion.y = 0x80 << 11;
        API_MapActor_SetAnim(0, 0x1c);
        API_MapActor_Surprise(0, 0x81 << 1);
        API_CutsceneWait(30);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 1);
    } else if (res == 1) {
        API_MessageID(0x209d);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(res, arg0, 1);
    API_CutsceneEnd();
}
