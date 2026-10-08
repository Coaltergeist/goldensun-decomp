extern int __sin(int);

void OvlFunc_883_200dd14(struct Actor *actor)
{
    struct Actor *link;
    s16 t;
    int s;

    link = actor->linkedActor;
    t = ++actor->waveCounter;
    if (t > 31) {
        API_DeleteActor((int)actor);
    } else {
        s = __sin(t << 10);
        actor->scale.x = s;
        actor->scale.y = -s;
        actor->pos.x = link->pos.x;
        actor->pos.y += 0x80 << 9;
        actor->pos.z = link->pos.z - ((0x80 << 9) - s) * 5 + (0x80 << 13);
    }
}
