extern int __sin(int);

void OvlFunc_884_200a3ec(struct Actor *actor)
{
    struct Actor *linked;
    s16 count;
    int s;

    linked = actor->linkedActor;
    count = ++actor->waveCounter;
    if (count > 0x1f) {
        API_DeleteActor((int)actor);
    } else {
        s = __sin(count << 10);
        actor->scale.x = s;
        actor->scale.y = -s;
        actor->pos.x = linked->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = linked->pos.z - (0x10000 - s) * 5 + 0x100000;
    }
}
