typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef int s32;

typedef struct {
    u8 unknown[0x55];
    u8 enabled;
} MapActor;

extern u8 *iwram_3001ebc;
extern void *L3190[];
extern s16 L31a8[];
extern void __CutsceneStart(void);
extern MapActor *__MapActor_GetActor(u32);
extern void __PlaySound(s32);
extern void __Func_8010560(void *, s32, s32);
extern void __MapActor_SetSpeed(s32, s32, s32);
extern void __MapActor_SetAnim(s32, s32);
extern void __Func_8092b08(s32, s32);
extern void __Func_809228c(s32, s32, s32);
extern void __Func_8092208(s32, s32, s32);
extern void __CutsceneWait(s32);
extern void __Func_8091e9c(s32);
extern void __CutsceneEnd(void);

static __inline__ void SetActorZeroSpeed(s32 x, s32 y)
{
    __MapActor_SetSpeed(0, x, y);
}

static __inline__ void MoveActorZeroBack(s32 magnitude)
{
    __Func_809228c(0, 0, -magnitude);
}

static __inline__ void MoveActorZeroBackAlt(s32 magnitude)
{
    __Func_8092208(0, 3, -magnitude);
}

void OvlFunc_921_20086c0(void)
{
    u8 *state;
    u32 actor_id;
    u32 raw_scene;
    s32 scene;
    s32 table_arg1;
    s32 table_arg2;
    void *table_pointer;

    state = iwram_3001ebc;
    __CutsceneStart();

    actor_id = 8;
    do {
        MapActor *actor;

        actor = __MapActor_GetActor(actor_id);
        if (actor != 0)
            actor->enabled = 0;
        actor_id++;
    } while (actor_id <= 0x41);

    raw_scene = *(u16 *)(state + 0x16c);
    raw_scene -= 0x32;
    scene = (s16)raw_scene;
    if (scene == 6)
        __PlaySound(0xbc);
    else
        __PlaySound(0x9e);

    table_arg1 = L31a8[scene * 2 - 2];
    table_arg2 = L31a8[scene * 2 - 1];
    table_pointer = L3190[scene - 1];
    __Func_8010560(table_pointer, table_arg1, table_arg2);
    SetActorZeroSpeed(0x8000, 0x4000);
    *(u32 *)(iwram_3001ebc + 0x1c0) = 0x100;

    if (scene == 6) {
        SetActorZeroSpeed(0x3333, 0x1999);
        __MapActor_SetAnim(0, 2);
        __Func_8092b08(0, 3);
        MoveActorZeroBack(8);
    } else {
        __MapActor_GetActor(0)->enabled = 0;
        MoveActorZeroBackAlt(0x10);
    }

    __CutsceneWait(0x10);
    __Func_8091e9c(scene);
    __CutsceneEnd();
}
