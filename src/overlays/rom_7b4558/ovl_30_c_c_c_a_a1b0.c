typedef unsigned char u8;

typedef struct Actor {
    u8 unknown_00[8];
    int x;
    int y;
    int z;
} Actor;

extern Actor *__MapActor_GetActor(u8 actor_id);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetPos(u8 actor_id, int x, int z);
extern void OvlFunc_927_2008ea8(u8 actor_id, int value);
extern void OvlFunc_927_2008d90(u8 actor_id, int arg1, int arg2, int arg3);
extern void OvlFunc_927_2008ae8(int x, int y, int z, int arg3,
                               int arg4, int arg5, int arg6, int arg7);
extern void __CutsceneWait(int frames);
extern void __Func_8092adc(u8 actor_id, int value, int arg);
extern void __MapActor_Surprise(u8 actor_id, int value);
extern void __Func_80925cc(u8 actor_id, int value);
extern void __SetCameraTarget(u8 actor_id, int value);
extern void __Func_809280c(u8 actor_id, u8 target_id, int value);
extern void __SetFlag(int flag);

static inline void SetUpActorEntrance(u8 actor_id)
{
    __MapActor_SetPos(actor_id, 0x88 << 16, 0xb4 << 17);
    OvlFunc_927_2008ea8(actor_id, 1);
}

static inline void BeginActorReaction(u8 actor_id)
{
    __Func_8092adc(actor_id, 0xc0 << 8, 0x28);
    __MapActor_Surprise(actor_id, 0x81 << 1);
    __Func_80925cc(actor_id, 2);
    __SetCameraTarget(actor_id, 1);
}

void OvlFunc_927_200a1b0(void)
{
    Actor *actor;
    u8 actor_id = 0x12;

    actor = __MapActor_GetActor(actor_id);
    __CutsceneStart();
    SetUpActorEntrance(actor_id);
    OvlFunc_927_2008d90(actor_id, 0x88, 0xcc << 1, 0x80 << 12);
    __CutsceneWait(0xa);

    OvlFunc_927_2008ae8(actor->x, actor->y, actor->z + (0x80 << 11),
                        0, 0, 0, 1, 0);

    BeginActorReaction(actor_id);
    OvlFunc_927_2008d90(actor_id, 0x88, 0xdc << 1, 0xc0 << 11);
    __Func_809280c(0, actor_id, 0);
    __CutsceneWait(0xa);
    OvlFunc_927_2008d90(actor_id, 0x88, 0xec << 1, 0xc0 << 10);
    __Func_809280c(0, actor_id, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(actor_id, 0x88, 0xfc << 1, 0xc0 << 10);
    __Func_809280c(0, actor_id, 0);
    __CutsceneWait(6);
    __SetCameraTarget(0, 1);
    __MapActor_SetPos(actor_id, 0, 0);
    __CutsceneWait(0x3c);
    __SetFlag(0x89d);
    __CutsceneEnd();
}
