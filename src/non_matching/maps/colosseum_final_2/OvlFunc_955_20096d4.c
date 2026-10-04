extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc(int, int);
extern void OvlFunc_common1_1078(int, int, int);
extern void OvlFunc_common1_15b8(int, int, int);
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_588(int, int);
extern void OvlFunc_common1_5e4(int, int, int);
extern void __Func_8093fa0(void);

void OvlFunc_955_20096d4(int arg0)
{
    unsigned int r3;
    int result;
    struct Actor *actor;

    r3 = (unsigned int)&gState;
    r3 += 0xe1 << 1;
    if (*(short *)r3 == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    result = OvlFunc_common1_4cc(arg0, 4);
    if (result == 0) {
        API_MessageID(0x20aa);
        API_Func_80933d4(0x30000, 0x6000);
        API_Func_80933f8(0x2180000, -1, 0xf00000, 1);
        API_Func_8093530();
        API_CutsceneWait(0x2d);
        API_Func_80933d4(0x10000, 0x2000);
        API_Func_80933f8(0x2180000, -1, 0xc00000, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x278, 0x108);
        API_MapActor_SetSpeed(0, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(0, 0x268, 0x108);
        API_Func_8092adc(0, 0xc000, 0x14);
        __Func_8093fa0();
        API_Func_80933d4(0x4000, 0x800);
        API_Func_80933f8(0x2180000, -1, 0xa00000, 1);
        API_MapActor_SetSpeed(0, 0x8000, 0x4000);
        API_MapActor_SetAnim(0, 10);
        actor = __MapActor_GetActor(0);
        API_Actor_TravelTo(actor, actor->pos.x, actor->pos.y + 0x400000, actor->pos.z);
        API_MapActor_WaitMovement(0);
        __Func_8093fa0();
        API_Func_80933f8(-1, -1, -1, 0);
        API_ActorMessage(arg0, 0);
        API_MapActor_SetSpeed(0, 0x18000, 0xc000);
        OvlFunc_common1_15b8(0, 0x1e8, 0xf8);
        API_Func_8092adc(0, 0x4000, 0x14);
        __Func_8092708(0, 6, 0);
        API_Func_80933f8(0x2180000, -1, 0xa00000, 1);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 4);
    } else if (result == 1) {
        API_MessageID(0x20a9);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(result, arg0, 4);
    API_CutsceneEnd();
}
