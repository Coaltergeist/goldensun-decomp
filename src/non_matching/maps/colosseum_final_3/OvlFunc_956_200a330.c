extern void OvlFunc_common1_5e4(int, void *, int);
void OvlFunc_common1_1078(int, int, int);
void OvlFunc_common1_1314(int);
void OvlFunc_common1_1254(int);

void OvlFunc_956_200a330(void *arg0)
{
    unsigned int r3;
    unsigned int r2;
    int r6;
    int i;
    struct Actor *actor;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    r6 = OvlFunc_common1_4cc(arg0, 5);
    if (r6 == 0) {
        __MessageID(0x20c3);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0x87 << 19, -1, 0xa8 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x3d8, 0xb8);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_956_200a2f4(0, 0x3e0, 0xb8);
        API_MapActor_SetSpeed(0, 0x4ccc, 0x2666);
        OvlFunc_956_200a2c4(0, 0x460, 0xb8);
        __CutsceneWait(0x78);
        API_MapActor_Surprise(0, 0x101);
        __CutsceneWait(0x78);
        OvlFunc_common1_1314(0);
        API_MapActor_SetAnim(0, 1);
        API_MapActor_Surprise(0, 0x100);
        API_MapActor_Emote(0, 0x105, 0);

        actor = __MapActor_GetActor(0);
        for (i = 0x77; i >= 0; i--) {
            if (actor->pos.x > (0xf8 << 18))
                actor->pos.x -= 0x13333;
            __WaitFrames(1);
        }

        API_MapActor_Emote(0, 0x103, 0x3c);
        OvlFunc_956_200a2c4(0, 0x460, 0xb8);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1314(0);
        *((unsigned char *)&gState + 0x1f2) = 1;
        OvlFunc_common1_1254(0);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 5);
    } else if (r6 == 1) {
        __MessageID(0x20c2);
        __ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(r6, arg0, 5);
    __CutsceneEnd();
}
