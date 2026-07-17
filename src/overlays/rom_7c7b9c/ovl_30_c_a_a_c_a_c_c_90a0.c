typedef unsigned char u8;
typedef unsigned int u32;

struct Actor { u8 pad[0x5a]; u8 flags; };

extern int __GetFlag(int);
extern void __CutsceneStart(void), __CutsceneEnd(void), __Func_808e118(void);
extern void OvlFunc_943_20092f0(void), OvlFunc_943_200b9ec(int);
extern void __MapActor_SetSpeed(int, int, int), __Func_80921c4(int, int, int);
extern void __CutsceneWait(int), __Func_809259c(int, int);
extern void __MapActor_SetPos(int, int, int), __Func_8092adc(int, int, int);
extern void __MapActor_Emote(int, int, int);
extern struct Actor *__MapActor_GetActor(int);

static inline void ClearActorFlags(struct Actor *actor, u32 mask) { actor->flags &= mask; }
static inline void EnableActorFlags(struct Actor *actor, u32 mask) { actor->flags = mask | actor->flags; }

static inline void MoveActorAndWait(int actor_id, int x, int z)
{
    __Func_80921c4(actor_id, x, z);
    __CutsceneWait(1);
}

static inline void CompleteActorScene(int actor_id, int emote_actor_id)
{
    __MapActor_SetSpeed(actor_id, 0x33333, 0x19999);
    __Func_80921c4(actor_id, 0xf8, 0x30a);
    __Func_80921c4(actor_id, 0xf8, 700);
    __MapActor_SetPos(actor_id, 0xf60000, 0x2000000);
    __Func_8092adc(actor_id, 0, 0);
    __MapActor_Emote(emote_actor_id, 0x101, 0x3c);
    __CutsceneEnd();
}

void OvlFunc_943_20090a0(void)
{
    u32 clear_mask;
    u32 set_mask;
    u32 move_x;

    if (__GetFlag(0x911) && !__GetFlag(0x922)) {
        __CutsceneStart();
        __Func_808e118();
        OvlFunc_943_20092f0();
        __MapActor_SetSpeed(0x14, 0x6666, 0x3333);
        clear_mask = 0xfe;
        ClearActorFlags(__MapActor_GetActor(0x14), clear_mask);
        __Func_80921c4(0x14, 0xe8, 0x330);
        __CutsceneWait(1);
        set_mask = 1;
        EnableActorFlags(__MapActor_GetActor(0x14), set_mask);
        __CutsceneWait(0x14);
        __Func_809259c(0x14, 2);
        OvlFunc_943_200b9ec(0x14);
        __MapActor_SetSpeed(0x14, 0x13333, 0x9999);
        move_x = 0xf4;
        ClearActorFlags(__MapActor_GetActor(0x14), clear_mask);
        MoveActorAndWait(0x14, move_x, 0x324);
        EnableActorFlags(__MapActor_GetActor(0x14), set_mask);
        __CutsceneWait(0x14);
        CompleteActorScene(0x14, 0);
    }
}
