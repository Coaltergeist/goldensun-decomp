extern void __Func_8093c00(void);
extern void CS956D_Finish(int, unsigned int, int) __asm__("OvlFunc_common1_5e4");
extern void CS956D_Early(unsigned int) __asm__("OvlFunc_common1_2c4");
extern int CS956D_Check(unsigned int, int) __asm__("OvlFunc_common1_4cc");
extern void CS956D_Complete(unsigned int, int) __asm__("OvlFunc_common1_588");
extern void CS956D_Message(unsigned int, int) __asm__("__ActorMessage");
struct CS956D_State { unsigned char pad[0x1c2]; short room; unsigned char pad2[0x2e]; unsigned char flag1f2; };
extern struct CS956D_State CS956D_State __asm__("gState");

void OvlFunc_common1_1078(int, int, int);
void OvlFunc_common1_15b8(int, int, int);
void OvlFunc_common1_1254(int);

void OvlFunc_956_2009df8(unsigned int arg0)
{
    int result;

    if (CS956D_State.room == 2) {
        CS956D_Early(arg0);
        return;
    }

    __CutsceneStart();
    result = CS956D_Check(arg0, 2);
    if (result == 0) {
        __MessageID(0x20b7);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0xbc << 17, -1, 0x98 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        CS956D_Message(arg0, 0);
        OvlFunc_common1_1078(0, 0x8c << 1, 0xc8);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, 0x8c << 1, 0x98);
        OvlFunc_common1_15b8(0, 0x94 << 1, 0x98);
        __CutsceneWait(10);

        __Func_8093c00();
        API_Func_80933f8(-1, -1, -1, 0);
        __Func_8092adc(0, 0xc0 << 8, 0xf);
        __Func_8093c00();
        API_Func_80933f8(-1, -1, -1, 0);
        __Func_8092adc(0, 0, 0xf);
        __Func_8093c00();
        API_Func_80933f8(-1, -1, -1, 0);
        API_Func_8092adc(0, 0x80 << 7, 0xf);

        CS956D_Message(arg0, 0);
        OvlFunc_common1_1490(0x60, 0x28, 0);
        OvlFunc_common1_14f4(0x80, 0x28, 10);
        __CutsceneWait(0x1e);
        OvlFunc_common1_14f4(0xa0, 0x28, 10);
        __CutsceneWait(0x1e);
        OvlFunc_common1_14f4(0xa0, 0x48, 10);
        __CutsceneWait(0x1e);
        CS956D_Message(arg0, 0);
        OvlFunc_common1_1550();
        OvlFunc_common1_1254(0);
        __SetCameraTarget(0, 0);
        CS956D_Complete(arg0, 2);
    } else if (result == 1) {
        __MessageID(0x20b6);
        CS956D_Message(arg0, 0);
    }

    CS956D_Finish(result, arg0, 2);
    __CutsceneEnd();
}
