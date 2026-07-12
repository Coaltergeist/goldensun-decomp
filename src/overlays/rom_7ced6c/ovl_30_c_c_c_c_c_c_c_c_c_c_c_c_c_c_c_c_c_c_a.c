struct ActorPosition {
    unsigned char unk00[8];
    int x;
    int y;
    int z;
};

struct Position {
    int x;
    int y;
    int z;
};

extern struct ActorPosition *__MapActor_GetActor(int actor);
extern int OvlFunc_946_2009a44(struct ActorPosition *actor, struct Position *position);

int OvlFunc_946_2009b68(void) {
    struct ActorPosition *actor = __MapActor_GetActor(0);
    struct Position position;

    position.x = actor->x - 0x200000;
    position.y = actor->y;
    position.z = actor->z;
    return OvlFunc_946_2009a44(actor, &position);
}
