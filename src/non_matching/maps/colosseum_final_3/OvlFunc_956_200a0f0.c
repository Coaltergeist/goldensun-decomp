extern void CS956C_RoomAction(unsigned int) __asm__("OvlFunc_common1_2c4");
extern void CS956C_FinishCall(int, unsigned int, int) __asm__("OvlFunc_common1_5e4");
extern int CS956C_Check(unsigned int, int) __asm__("OvlFunc_common1_4cc");
extern void CS956C_Complete(unsigned int, int) __asm__("OvlFunc_common1_588");
extern void CS956C_Message(unsigned int, int) __asm__("__ActorMessage");
struct CS956C_State { unsigned char pad[0x1c2]; short room; };
extern struct CS956C_State CS956C_State __asm__("gState");
static inline void CS956C_Place(int actor, int x, int z)
{ extern void OvlFunc_common1_1078(int, int, int); OvlFunc_common1_1078(actor, x, z); }
static inline void CS956C_Finish(int result, unsigned int actor, int index)
{ CS956C_FinishCall(result, actor, index); }
void OvlFunc_956_200a0f0(unsigned int arg0)
{
    extern void OvlFunc_common1_1078(int, int, int);
    extern void OvlFunc_common1_1254(int);
    extern void __Func_8093fa0(void);
    int result;

    if (CS956C_State.room == 2) {
        CS956C_RoomAction(arg0);
        return;
    }

    __CutsceneStart();
    result = CS956C_Check(arg0, 4);
    if (result == 0) {
        struct Actor *a;
        int x;
        int y;
        int x1;
        int y1;

        __MessageID(0x20bf);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0xd6 << 18, -1, 0xa8 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        CS956C_Message(arg0, 0);
        CS956C_Message(arg0, 0);
        CS956C_Place(0, 0xcc << 2, 0xc8);
        API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
        API_MapActor_TravelToAnimWait(0, 0xd2 << 2, 0xc8);
        __Func_8092adc(0, 0xc0 << 8, 0x14);
        __Func_8093fa0();
        API_Func_80933f8(-1, -1, -1, 0);
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
        CS956C_Message(arg0, 0);
        OvlFunc_common1_1254(0);
        __SetCameraTarget(0, 0);
        CS956C_Complete(arg0, 4);
    } else if (result == 1) {
        __MessageID(0x20be);
        CS956C_Message(arg0, 0);
    }

    CS956C_Finish(result, arg0, 4);
    __CutsceneEnd();
}
