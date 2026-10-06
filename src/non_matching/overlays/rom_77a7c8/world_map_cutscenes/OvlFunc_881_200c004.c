void OvlFunc_881_200c004(struct Actor *actor)
{
    extern int __sin(int);
    struct Actor *linked;
    short counter;
    int s;

    linked = actor->linkedActor;
    counter = ++actor->waveCounter;
    if (counter > 31) {
        API_DeleteActor((int)actor);
    } else {
        s = __sin(counter << 10);
        actor->scale.x = s;
        actor->scale.y = -s;
        actor->pos.x = linked->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = linked->pos.z - (0x10000 - s) * 5 + 0x100000;
    }
}
