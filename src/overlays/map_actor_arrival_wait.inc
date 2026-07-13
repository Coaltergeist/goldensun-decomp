typedef unsigned char u8;
typedef signed short s16;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetSpeed(int actor_id, int horizontal, int vertical);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_8092158(int actor_id, int x, int y);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __WaitFrames(int frames);

/* 役者を所定位置へ移し、移動完了まで最大六十フレーム待つ。 */
void MAP_ACTOR_ARRIVAL_FUNCTION(int actor_id, int x, int y, int height)
{
    u8 *actor = __MapActor_GetActor(actor_id);
    int timeout;

    __MapActor_SetSpeed(actor_id, 0x30000, 0x18000);
    *(int *)(actor + 0x48) = 0x8000;
    *(int *)(actor + 0x44) = 0;
    *(int *)(actor + 0x28) = height;
    __Actor_SetSpriteFlags(actor, 0);
    __Func_8092158(actor_id, x, y);
    __MapActor_SetPos(actor_id, x << 16, y << 16);

    timeout = 60;
    while (timeout != 0) {
        __WaitFrames(1);
        if (*(s16 *)(actor + 0x2a) == 0) {
            break;
        }
        timeout--;
    }

    __Actor_SetSpriteFlags(actor, 1);
    *(int *)(actor + 0x48) = 0x10000;
}
