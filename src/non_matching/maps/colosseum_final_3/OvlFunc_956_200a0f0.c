extern void OvlFunc_common1_5e4(int, void *, int);
void OvlFunc_956_200a0f0(void *arg0)
{
    extern void OvlFunc_common1_1078(int, int, int);
    extern void OvlFunc_common1_1254(int);
    extern void __Func_8093fa0(void);
    unsigned int r3;
    unsigned int r2;
    int r6;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    r6 = OvlFunc_common1_4cc(arg0, 4);
    if (r6 == 0) {
        struct Actor *a;
        int x;
        int y;
        int x1;
        int y1;

        __MessageID(0x20bf);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0xd6 << 18, -1, 0xa8 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0xcc << 2, 0xc8);
        API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
        API_MapActor_TravelToAnimWait(0, 0xd2 << 2, 0xc8);
        API_Func_8092adc(0, 0xc0 << 8, 0x14);
        __Func_8093fa0();
        __Func_80933f8(-1, -1, -1, 0);
        API_MapActor_SetSpeed(0, 0x80 << 8, 0x80 << 7);

        a = __MapActor_GetActor(0);
        y = a->pos.y;
        x = a->pos.x;
        API_MapActor_SetSpeed(0, 0x80 << 8, 0x80 << 7);

        API_MapActor_SetAnim(0, 0xa);
        y1 = y + (0xc0 << 11);
        API_Actor_TravelTo(a, x, y1, a->pos.z);
        __Actor_WaitMovement((unsigned int)a);

        API_MapActor_SetAnim(0, 0xe);
        x1 = x + (0x80 << 15);
        API_Actor_TravelTo(a, x1, y1, a->pos.z);
        __Actor_WaitMovement((unsigned int)a);

        API_MapActor_SetAnim(0, 0xa);
        y += 0xd8 << 14;
        API_Actor_TravelTo(a, x1, y, a->pos.z);
        __Actor_WaitMovement((unsigned int)a);

        API_MapActor_SetAnim(0, 0xf);
        x += 0xc0 << 14;
        API_Actor_TravelTo(a, x, y, a->pos.z);
        __Actor_WaitMovement((unsigned int)a);

        API_MapActor_SetAnim(0, 0xc);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 4);
    } else if (r6 == 1) {
        __MessageID(0x20be);
        __ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(r6, arg0, 4);
    __CutsceneEnd();
}
