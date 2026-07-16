typedef unsigned char u8;

typedef struct Actor {
    unsigned char pad00[0x0c];
    int z;
    unsigned char pad10[8];
    int speed_x;
    int speed_y;
    unsigned char pad20[0x35];
    u8 field55;
} Actor;

extern Actor *__MapActor_GetActor(int actor_id);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __Func_8092adc(int actor_id, int value, int arg2);
extern void __CutsceneWait(int frames);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __Actor_SetSpriteFlags(Actor *actor, int flags);
extern void __Func_8092950(int actor_id, int value);
extern void __PlaySound(int sound_id);

static inline void SetActorValue(int actor_id, u8 half_value)
{
    __Func_8092950(actor_id, half_value << 1);
}

void OvlFunc_897_2008e30(int actor_id)
{
    Actor *actor;
    Actor *actor8;
    u8 frame;

    actor8 = __MapActor_GetActor(8);
    actor8->speed_x = 0x10000;
    actor8->speed_y = 0x10000;
    __Func_80921c4(actor_id, 0x1d7, 0x122);
    __Func_8092adc(actor_id, 0xc000, 0);
    __CutsceneWait(10);
    __MapActor_SetPos(8, 0x1d70000, 0x1220000);

    actor = __MapActor_GetActor(actor_id);
    __Actor_SetSpriteFlags(__MapActor_GetActor(actor_id), 0);
    SetActorValue(actor_id, 0x80);
    actor->field55 = 0;
    __PlaySound(0xc9);

    frame = 0;
    do {
        actor->z += 0x8000;
        __CutsceneWait(1);
        frame++;
    } while (frame != 0x3c);

    __PlaySound(0xbe);
    frame = 0;
    do {
        actor->z += 0x1999;
        actor->speed_x -= 0x28f;
        actor->speed_y -= 0x28f;
        actor8->speed_x -= 0x28f;
        actor8->speed_y -= 0x28f;
        __CutsceneWait(1);
        frame++;
    } while (frame != 0x5a);

    __MapActor_SetPos(actor_id, 0, 0);
    __MapActor_SetPos(8, 0, 0);
}
