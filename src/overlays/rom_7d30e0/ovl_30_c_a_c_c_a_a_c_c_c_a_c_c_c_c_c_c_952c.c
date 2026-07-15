typedef unsigned char u8;
typedef signed short s16;
typedef int s32;

typedef struct MapActor {
    u8 pad0[8];
    s32 x;
    u8 pad1[4];
    s32 y;
} MapActor;

typedef struct GlobalState {
    u8 pad[0x24a];
    s16 field_24a;
} GlobalState;

extern GlobalState gState;
extern MapActor *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern void __PlaySound(int sound);
extern void __MapActor_TravelTo(int actor_id, int x, int y);
extern void __MapActor_WaitMovement(int actor_id);
extern void __Func_809228c(int actor_id, int arg1, int arg2);
extern s32 gOvl_0200af74[] asm(".L2f74");

void OvlFunc_948_200952c(s32 param_1)
{
    MapActor *actor;
    s32 tileX;
    s32 tileY;
    s32 actorId;

    actor = __MapActor_GetActor(0);
    tileX = actor->x / 0x100000;
    tileY = actor->y / 0x100000;
    actorId = param_1 + 10;

    if (gState.field_24a != actorId && tileX != gOvl_0200af74[param_1]) {
        __MapActor_SetSpeed(actorId, 0x48000, 0x24000);
        __PlaySound(0xbc);
        __MapActor_TravelTo(actorId, tileX * 0x10 + 8, 0x168);
        gOvl_0200af74[param_1] = tileX;
        if (tileY < 0x17) {
            __Func_809228c(0, 0, 8);
        }
        __MapActor_WaitMovement(0);
    }
}
