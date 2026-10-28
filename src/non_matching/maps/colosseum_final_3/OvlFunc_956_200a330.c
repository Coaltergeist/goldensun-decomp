extern void CS956S_Finish(int, unsigned int, int) __asm__("OvlFunc_common1_5e4");
extern void CS956S_Early(unsigned int) __asm__("OvlFunc_common1_2c4");
extern int CS956S_Check(unsigned int, int) __asm__("OvlFunc_common1_4cc");
extern void CS956S_Complete(unsigned int, int) __asm__("OvlFunc_common1_588");
extern void CS956S_Message(unsigned int, int) __asm__("__ActorMessage");
struct CS956S_State { unsigned char pad[0x1c2]; short room; unsigned char pad2[0x2e]; unsigned char flag1f2; };
extern struct CS956S_State CS956S_State __asm__("gState");
void OvlFunc_common1_1078(int, int, int);
void OvlFunc_common1_1314(int);
void OvlFunc_common1_1254(int);

void OvlFunc_956_200a330(unsigned int arg0)
{
    int result;
    int i;
    struct Actor *actor;

    if (CS956S_State.room == 2) {
        CS956S_Early(arg0);
        return;
    }

    __CutsceneStart();
    result = CS956S_Check(arg0, 5);
    if (result == 0) {
        __MessageID(0x20c3);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0x87 << 19, -1, 0xa8 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        CS956S_Message(arg0, 0);
        CS956S_Message(arg0, 0);
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
        CS956S_Message(arg0, 0);
        OvlFunc_common1_1314(0);
        CS956S_State.flag1f2 = 1;
        OvlFunc_common1_1254(0);
        __SetCameraTarget(0, 0);
        CS956S_Complete(arg0, 5);
    } else if (result == 1) {
        __MessageID(0x20c2);
        CS956S_Message(arg0, 0);
    }

    CS956S_Finish(result, arg0, 5);
    __CutsceneEnd();
}
