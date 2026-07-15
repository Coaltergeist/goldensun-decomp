typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor_id, int anim);
extern void __MapActor_SetIdle(int actor_id);
extern void __MapActor_Emote(int actor_id, int emote, int arg2);
extern void __CutsceneWait(int frames);
extern void __Func_809259c(int actor_id, int mode);
extern void __MessageID(int id);
extern void __Func_8093040(int actor_id, int arg1, int arg2);
extern void __Func_809280c(int actor_id, int arg1, int arg2);
extern void __ActorMessage(int actor_id, int arg1);
extern void __SetFlag(int flag);
extern void __WaitFrames(int frames);
extern u8 gScript_884__0200ae34[];
extern void __MapActor_SetBehavior(int actor_id, const void *script);
extern void __CutsceneEnd(void);

void OvlFunc_884_2008674(void)
{
    u8 *actor = __MapActor_GetActor(0x15);
    __CutsceneStart();
    *(u32 *)(actor + 0x38) = 0x80000000;
    *(u32 *)(actor + 0x3c) = 0x80000000;
    *(u32 *)(actor + 0x40) = 0x80000000;
    __MapActor_SetAnim(0x15, 1);
    __MapActor_SetIdle(0x15);
    __MapActor_Emote(0x15, 0x100, 0x28);
    {
        u32 v = 0xb0;
        v <<= 8;
        *(u16 *)(actor + 6) = (u16)v;
    }
    __CutsceneWait(0x14);
    __Func_809259c(0x15, 2);
    __MessageID(0x1c94);
    __Func_8093040(0x15, 0, 0x28);
    __Func_809280c(0x15, 0, 0x14);
    __Func_809259c(0x15, 2);
    __ActorMessage(0x15, 0);
    __SetFlag(0x306);
    __MapActor_SetIdle(0x15);
    __WaitFrames(1);
    __MapActor_SetBehavior(0x15, gScript_884__0200ae34);
    __CutsceneEnd();
}
