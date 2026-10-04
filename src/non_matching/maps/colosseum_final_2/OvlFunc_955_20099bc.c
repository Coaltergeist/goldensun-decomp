extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc(int, int);
extern void OvlFunc_common1_588(int, int);
extern void OvlFunc_common1_5e4(int, int, int);
extern void OvlFunc_common1_1078(int, int, int);
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_15b8(int, int, int);
extern void OvlFunc_955_2009898(int, int, int);

void OvlFunc_955_20099bc(int arg0) {
    int res;
    int x;
    int y;

    if (*(short *)((unsigned int)&gState + (0xe1 << 1)) == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    res = OvlFunc_common1_4cc(arg0, 5);
    if (res == 0) {
        API_MessageID(0x20ae);
        API_Func_80933d4(0x80 << 10, 0x80 << 7);
        API_Func_80933f8(0xa4 << 17, -1, 0x84 << 17, 1);
        API_Func_8093530();
        API_CutsceneWait(30);
        API_Func_80933d4(0xc0 << 9, 0xc0 << 6);
        x = 0xcc << 1;
        y = 0x84 << 1;
        API_Func_80933f8(0x9c << 17, -1, 0xb0 << 16, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, x, y);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, x, 0xd8);
        API_Func_8092adc(0, 0x80 << 8, 10);
        API_ActorMessage(arg0, 0);
        OvlFunc_955_2009898(0x10, 0xb4 << 1, 0xd0);
        API_MapActor_Emote(0, y, 0x2d);
        x -= 0x20;
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, x, 0xd8);
        OvlFunc_common1_15b8(0, x, 0xf8);
        OvlFunc_common1_15b8(0, 0x9c << 1, 0xf8);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        API_MapActor_SetPos(0x10, 0xc4 << 17, 0xd0 << 16);
        OvlFunc_common1_588(arg0, 5);
    } else if (res == 1) {
        API_MessageID(0x20ad);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(res, arg0, 5);
    API_CutsceneEnd();
}
