typedef struct ActorMovement {
    unsigned char filler0[0x38];
    int targetX;
    int targetY;
    int targetZ;
    unsigned char filler44[0x11];
    unsigned char movementMode;
} ActorMovement;

int Actor_IsNotMoving(ActorMovement *actor)
{
    int movement;
    int stopped;

    if (actor->movementMode == 0) {
        stopped = actor->targetX;
        if (stopped != (int)0x80000000)
            return 0;
        movement = actor->targetY;
    } else {
        stopped = (int)0x80000000;
        movement = actor->targetX;
    }
    if (movement == stopped && actor->targetZ == movement)
        return 1;
    return 0;
}
