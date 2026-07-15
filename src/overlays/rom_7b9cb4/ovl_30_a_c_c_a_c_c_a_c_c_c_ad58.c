typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

extern u8 *__MapActor_GetActor(int actorId);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetPos(int actorId, int x, int y);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __CutsceneWait(int frames);
extern void __Func_808f1c0(int a, int b);
extern void __Func_8091a58(int a, int b);
extern u8 *__Func_8093554(void);
extern void __Func_80933d4(u32 a, u32 b);
extern void __Func_80933f8(s32 x, s32 y, s32 z, s32 mode);
extern void __Func_8093530(void);
extern void OvlFunc_932_20086dc(void);
extern void __SetMapEvents(u8 *script);
extern u32 iwram_3001ebc;
extern u8 gScript_882__0200cd6c[];

void OvlFunc_932_200ad58(void)
{
    u8 *actor;
    u8 *state;
    u32 *mapStateAddr;
    u32 offset;

    actor = __MapActor_GetActor(0);
    __CutsceneStart();
    __MapActor_SetPos(0xa, 0, 0);
    __MapActor_SetPos(8, 0, 0);
    mapStateAddr = &iwram_3001ebc;
    offset = 0xe0 << 1;
    *(u32 *)((u8 *)*mapStateAddr + offset) = 0x201;
    __MapTransitionIn();
    __WaitMapTransition();
    __CutsceneWait(0x14);
    __Func_808f1c0(0xca, 3);
    __Func_8091a58(0xca, 0);
    state = __Func_8093554();
    state[0x55] = 0;
    __Func_80933d4(0x19999, 0x3333);
    {
        s32 x = 0xc8;
        s32 z = 0xf9;
        s32 y = 0;
        asm volatile("" : "+r"(y), "+r"(z));
        z <<= 16;
        x <<= 15;
        __Func_80933f8(x, y, z, 1);
    }
    __Func_8093530();
    __CutsceneWait(0x14);
    OvlFunc_932_20086dc();
    __Func_80933f8(*(s32 *)(actor + 8), *(s32 *)(actor + 0xc), *(s32 *)(actor + 0x10), 1);
    __Func_8093530();
    __SetMapEvents(gScript_882__0200cd6c);
    *(u32 *)((u8 *)*mapStateAddr + offset) = 0x204;
    __CutsceneEnd();
}
