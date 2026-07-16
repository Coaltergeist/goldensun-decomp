typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

void OvlFunc_925_200b324();
void __CopyMapTiles();
void __CutsceneEnd();
void __CutsceneStart();
void __CutsceneWait();
void __Func_800fe9c();
void __Func_8092b08();
void __Func_80933d4();
void __Func_80933f8();
void __Func_8093530();
void *__Func_8093554();
void *__MapActor_GetActor();
void __MapActor_SetPos();
void __SetFlag();
void __WaitFrames();
extern s32 iwram_3001e70;

void OvlFunc_925_200addc(void)
{
    void *actor;
    int four;

    actor = iwram_3001e70 + 0x164;
    __CutsceneStart();
    *(s32 *)((u8 *)actor + 0xc) = 0x03800000;
    __Func_800fe9c();
    __WaitFrames(1);
    *(u8 *)((u8 *)__MapActor_GetActor(9) + 0x55) = 0;
    __MapActor_SetPos(9, 0x680000, 0x01080000);
    *(s32 *)((u8 *)__MapActor_GetActor(9) + 0xc) = 0xFFE00000;
    *(u32 *)((u8 *)__MapActor_GetActor(9) + 0x3c) = 0xFFE00000;
    *(u8 *)((u8 *)__Func_8093554() + 0x55) = 0;
    __Func_80933d4(0xCCCC, 0x1999);
    __Func_80933f8(0x800000, -1, 0xB80000, 1);
    __Func_8093530();
    __CutsceneWait(0x1E);
    four = 4;
    __CopyMapTiles(0x1D, 0x4A, four, 0x4A, 5, four);
    __Func_8092b08(0x11, 0);
    __Func_8092b08(0x12, 0);
    OvlFunc_925_200b324();
    __Func_8092b08(0x11, 1);
    __Func_8092b08(0x12, 1);
    __CutsceneWait(0x14);
    __SetFlag(0x251);
    __CutsceneEnd();
}
