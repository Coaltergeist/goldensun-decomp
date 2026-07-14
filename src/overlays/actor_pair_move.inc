#ifndef ACTOR_PAIR_MOVE_FUNCTION
#error "ACTOR_PAIR_MOVE_FUNCTION must name the generated entry point"
#endif

typedef unsigned char ActorPairByte;

extern ActorPairByte gState[];

extern ActorPairByte *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Actor_TravelTo(ActorPairByte *actor, int x, int y, int z);
extern void __Actor_SetAnim(ActorPairByte *actor, int animation);
extern void __Actor_WaitMovement(ActorPairByte *actor);

struct ActorPairState {
    ActorPairByte pad[500];
    unsigned int actor;
};

/* 二人の役者を同じ升目だけ動かす。 */
void ACTOR_PAIR_MOVE_FUNCTION(int actor_id, int x_offset, int z_offset)
{
    ActorPairByte *partner;
    ActorPairByte *actor;
    register unsigned int x_shift asm("r11");
    register unsigned int z_shift asm("r9");
    register unsigned int mask asm("r10");
    register unsigned int half_tile asm("r5");
    register unsigned int move_speed asm("r8");
    register unsigned int coordinate asm("r3");
    unsigned int travel_x;

    partner = __MapActor_GetActor(((struct ActorPairState *)gState)->actor);
    actor = __MapActor_GetActor(actor_id);
    __CutsceneStart();

    x_shift = x_offset << 16;
    mask = 0xfff00000;
    coordinate = *(int *)(partner + 8) + x_shift;
    half_tile = 0x80000;
    coordinate &= mask;
    travel_x = coordinate + half_tile;
    z_shift = z_offset << 16;
    coordinate = *(int *)(partner + 0x10) + z_shift;
    coordinate &= mask;
    *(int *)(partner + 0x30) = 0x10000;
    move_speed = 0x8000;
    coordinate += half_tile;
    *(int *)(partner + 0x34) = move_speed;
    __Actor_TravelTo(partner, travel_x, *(int *)(partner + 0x0c), coordinate);
    __Actor_SetAnim(partner, 0x1b);

    coordinate = *(int *)(actor + 8) + x_shift;
    coordinate &= mask;
    travel_x = coordinate + half_tile;
    coordinate = *(int *)(actor + 0x10) + z_shift;
    coordinate &= mask;
    *(int *)(actor + 0x30) = 0x10000;
    coordinate += half_tile;
    *(int *)(actor + 0x34) = move_speed;
    __Actor_TravelTo(actor, travel_x, *(int *)(actor + 0x0c), coordinate);
    if (x_offset < 0 || z_offset < 0)
        __Actor_SetAnim(actor, 4);
    else
        __Actor_SetAnim(actor, 3);

    __Actor_WaitMovement(partner);
    __CutsceneEnd();
}

#undef ACTOR_PAIR_MOVE_FUNCTION
