typedef unsigned char u8;
typedef short s16;

typedef struct {
    u8 pad0[0x1c2];
    s16 room;
} GameState;

extern GameState gState;
extern void OvlFunc_common1_2c4(void);
extern void __CutsceneStart(void);
extern int OvlFunc_common1_4cc(int, int);
extern void __MessageID(int);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8093530(void);
extern void __CutsceneWait(int);
extern void __ActorMessage(int, int);
extern void OvlFunc_common1_1490(int, int, int);
extern void OvlFunc_common1_14f4(int, int, int);
extern void OvlFunc_common1_1550(void);
extern void __SetCameraTarget(int, int);
extern void OvlFunc_common1_588(int, int);
extern int OvlFunc_common1_5e4(int, int, unsigned char);
extern void __CutsceneEnd(void);

void OvlFunc_956_200a4d0(int actor)
{
    int result;

    if (gState.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    result = OvlFunc_common1_4cc(actor, 6);
    if (result == 0) {
        __MessageID(0x20c7);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0xa1 << 19, -1, 0x98 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        __ActorMessage(actor, 0);
        OvlFunc_common1_1490(0xb4, 0x58, 0);
        __CutsceneWait(0x3c);
        __ActorMessage(actor, 0);
        OvlFunc_common1_14f4(0x20, 0x54, 0xa);
        __CutsceneWait(0x1e);
        __ActorMessage(actor, 0);
        OvlFunc_common1_14f4(0x60, 0x54, 0x1e);
        __CutsceneWait(0x3c);
        __ActorMessage(actor, 0);
        OvlFunc_common1_1550();
        __CutsceneWait(2);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(actor, 6);
    } else if (result == 1) {
        __MessageID(0x20c6);
        __ActorMessage(actor, 0);
    }

    OvlFunc_common1_5e4(result, actor, 6);
    __CutsceneEnd();
}
