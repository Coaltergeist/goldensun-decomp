extern u8 gState[];
extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc(int, int);
extern void OvlFunc_common1_1490(int, int, int);
extern void OvlFunc_common1_14f4(int, int, int);
extern void OvlFunc_common1_1550(void);
extern void OvlFunc_common1_588(int, int);
extern void OvlFunc_common1_5e4(int, int, int);

void OvlFunc_954_20093e4(int arg0)
{
    struct Actor *actor1;
    struct Actor *actor2;
    int result;
    int speed;
    int accel;
    int offset;

    offset = 0xe1;
    if (((s16 *)gState)[offset] == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    result = OvlFunc_common1_4cc(arg0, 2);
    if (result == 0) {
        API_MessageID(0x2090);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0x94 << 18, -1, 0xf0 << 15, 1);
        __Func_8093530();
        __CutsceneWait(0x3c);
        __Func_80933d4(0xc0 << 9, 0xc0 << 6);
        __Func_80933f8(0x98 << 18, -1, 0xd8 << 16, 1);
        __Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0x38, 0x40, 0);
        __CutsceneWait(0x3c);
        OvlFunc_common1_14f4(0xa0, 0x60, 0xa);
        __CutsceneWait(0x46);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        API_WaitFrames(2);

        actor1 = (struct Actor *)__MapActor_GetActor(0xd);
        actor1->__unk55 = result;
        speed = 0xcccc;
        accel = 0x6666;
        actor1->accel = accel;
        actor1->speed = speed;
        __Actor_TravelTo(actor1, actor1->pos.x, 0x80 << 12, actor1->pos.z);

        actor2 = (struct Actor *)__MapActor_GetActor(0xe);
        actor2->__unk55 = result;
        actor2->accel = accel;
        actor2->speed = speed;
        __Actor_TravelTo(actor2, actor2->pos.x, 0x80 << 14, actor2->pos.z);
        __Actor_WaitMovement(actor2);
        __CutsceneWait(0x2d);

        actor1 = (struct Actor *)__MapActor_GetActor(0xd);
        actor1->__unk55 = result;
        actor1->accel = accel;
        actor1->speed = speed;
        __Actor_TravelTo(actor1, actor1->pos.x, 0xc0 << 13, actor1->pos.z);

        actor2 = (struct Actor *)__MapActor_GetActor(0xe);
        actor2->__unk55 = result;
        actor2->accel = accel;
        actor2->speed = speed;
        __Actor_TravelTo(actor2, actor2->pos.x, 0, actor2->pos.z);
        __Actor_WaitMovement(actor2);
        __CutsceneWait(0xf);

        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0x38, 0x40, 0);
        __CutsceneWait(0x1e);
        OvlFunc_common1_14f4(0xa0, 0x60, 0xa);
        __CutsceneWait(0x28);
        OvlFunc_common1_14f4(0x38, 0x40, 0xa);
        __CutsceneWait(0x46);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        API_WaitFrames(2);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 2);
    } else if (result == 1) {
        API_MessageID(0x208f);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(result, arg0, 2);
    __CutsceneEnd();
}
