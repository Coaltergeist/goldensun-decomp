typedef unsigned char u8;
typedef signed short s16;

extern u8 *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void OvlFunc_927_2008ea8(int, int);
extern void OvlFunc_927_2008d90(int, int, int, int);
extern void OvlFunc_927_2008ae8(int, int, int, int, int, int, int, int);
extern void __SetCameraTarget(int, int);
extern void __Func_8092848(int, int, int);
extern void __CutsceneWait(int);
extern void __Func_809259c(int, int);
extern void __MapActor_Emote(int, int, int);
extern void __PlaySound(int);
extern void __SetFlag(int);
extern void __MapActor_SetPos(int, int, int);
extern u8 gState[];
extern void __Func_8091eb0(int, int);

void OvlFunc_927_2009244(void)
{
    u8 *actor;
    int x;

    actor = __MapActor_GetActor(0xb);
    __CutsceneStart();
    OvlFunc_927_2008ea8(0xb, 0);
    OvlFunc_927_2008d90(0xb, 0x198, 0x1c8, 0x60000);
    OvlFunc_927_2008ae8(*(int *)(actor + 8), *(int *)(actor + 0xc),
                        *(int *)(actor + 0x10) + 0x180000, 0, 0, 0, 1, 0);
    __SetCameraTarget(0xb, 1);
    __Func_8092848(0xb, 0, 0);
    __CutsceneWait(0x1e);
    __Func_809259c(0xb, 2);
    __MapActor_Emote(0xb, 0x103, 0);
    __PlaySound(0x93);
    __CutsceneWait(0x3c);
    x = *(s16 *)(__MapActor_GetActor(0) + 0xa);
    OvlFunc_927_2008d90(0xb, x,
                        *(s16 *)(__MapActor_GetActor(0) + 0x12), 0x40000);
    __CutsceneWait(0xa);
    __SetFlag(0x301);
    __MapActor_SetPos(0xe, 0, 0);
    gState[0x22b] = 3;
    __Func_8091eb0(0x35, 0);
    __CutsceneEnd();
}
