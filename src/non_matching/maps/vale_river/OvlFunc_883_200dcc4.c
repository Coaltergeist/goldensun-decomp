extern int __sin(int);

void OvlFunc_883_200dcc4(struct Actor *actor)
{
    struct Actor *linked;
    int t;
    int s;

    t = ++actor->waveCounter;
    linked = actor->linkedActor;
    if (t > 0x1f) {
        API_DeleteActor((int)actor);
        return;
    }
    s = __sin(t << 10);
    actor->scale.x = s;
    actor->scale.y = s;
    actor->pos.x = linked->pos.x;
    actor->pos.y += 0x80 << 9;
    actor->pos.z = linked->pos.z + ((0x80 << 9) - s) * 5 + (0x80 << 12);
}
