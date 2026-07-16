typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

void OvlFunc_927_2008ae8();
void OvlFunc_927_2008d90();
void OvlFunc_927_2008ea8();
void __CutsceneEnd();
void __CutsceneStart();
void __CutsceneWait();
void __Func_8091eb0();
void __Func_809259c();
void __Func_8092848();
void __MapActor_Emote();
void *__MapActor_GetActor();
void __PlaySound();
void __SetCameraTarget();
void __SetFlag();
extern u8 gState[];

void OvlFunc_927_2009d04(void)
{
    s16 actorX;
    s16 actorY;
    void *actor;
    register s32 distance asm("r3");

    actor = __MapActor_GetActor(0xF);
    __CutsceneStart();
    OvlFunc_927_2008ea8(0xF, 0);
    OvlFunc_927_2008d90(0xF, 0x1D8, 0x68, 0x80000);
    __CutsceneWait(0xA);
    OvlFunc_927_2008ae8(
        *(u32 *)((u8 *)actor + 8),
        *(u32 *)((u8 *)actor + 0xC),
        *(u32 *)((u8 *)actor + 0x10) + 0x80000,
        0, 0, 0, 1, 0);
    __SetCameraTarget(0xF, 1);
    __Func_8092848(0xF, 0, 0);
    __CutsceneWait(0x1E);
    __Func_809259c(0xF, 2);
    __MapActor_Emote(0xF, 0x103, 0);
    __PlaySound(0x93);
    __CutsceneWait(0x3C);
    actorX = *(s16 *)((u8 *)__MapActor_GetActor(0) + 0xA);
    actorY = *(s16 *)((u8 *)__MapActor_GetActor(0) + 0x12);
    asm volatile(
        "mov %0, #0xc0\n\t"
        "lsl %0, %0, #11"
        : "=r"(distance));
    OvlFunc_927_2008d90(
        0xF,
        actorX,
        actorY,
        distance);
    __CutsceneWait(0xA);
    __SetFlag(0x307);
    gState[0x22B] = 3;
    __Func_8091eb0(0x35, 0);
    __CutsceneEnd();
}
