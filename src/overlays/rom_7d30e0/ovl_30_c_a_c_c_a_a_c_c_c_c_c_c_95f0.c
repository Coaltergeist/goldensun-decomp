typedef unsigned char u8;
typedef signed short s16;

typedef struct GlobalState {
    u8 pad[0x24a];
    s16 field_24a;
} GlobalState;

typedef struct MapActor {
    u8 pad0[0xa];
    s16 fieldA;
    u8 pad1[6];
    s16 field12;
} MapActor;

extern GlobalState gState;
extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern void __PlaySound(int sound);
extern MapActor *__MapActor_GetActor(int actor_id);
extern void __MapActor_TravelTo(int actor_id, int x, int y);
extern void __MapActor_WaitMovement(int actor_id);
extern void __Func_809228c(int actor_id, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __CutsceneEnd(void);

void OvlFunc_948_20095f0(void)
{
    MapActor *actor;

    if (gState.field_24a == 10)
        return;

    __CutsceneStart();
    { register int a asm("r0"); register int b asm("r1"); register int c asm("r2");
      asm volatile("mov r0, #0\n\tldr r1, =0x1b333\n\tldr r2, =0xd999" : "=r"(a), "=r"(b), "=r"(c)); __MapActor_SetSpeed(a,b,c); }
    { register int a asm("r0"); register int b asm("r1"); register int c asm("r2");
      asm volatile("mov r0, #0xa\n\tldr r1, =0x1b333\n\tldr r2, =0xd999" : "=r"(a), "=r"(b), "=r"(c)); __MapActor_SetSpeed(a,b,c); }
    __PlaySound(0xbc);

    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_TravelTo(10, actor->fieldA, actor->field12);
    }

    __MapActor_WaitMovement(10);
    __Func_809228c(0, 0, 0x18);
    __CutsceneWait(4);
    __PlaySound(0xbc);
    __Func_809228c(10, 0, 0x10);
    __MapActor_WaitMovement(0);
    __MapActor_TravelTo(10, 0x108, 0x168);
    __MapActor_WaitMovement(10);
    __CutsceneWait(10);
    __CutsceneEnd();
}
