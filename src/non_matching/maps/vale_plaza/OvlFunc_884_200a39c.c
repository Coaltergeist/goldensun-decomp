extern int __sin(int);
extern void __DeleteActor();

void OvlFunc_884_200a39c(struct Actor *actor)
{
    struct Actor *linked;
    short t;
    int s;

    t = ++actor->waveCounter;
    linked = actor->linkedActor;
    if (t > 0x1f) {
        __DeleteActor(actor);
        return;
    }
    s = __sin(t << 10);
    actor->scale.x = s;
    actor->scale.y = s;
    actor->pos.x = linked->pos.x;
    actor->pos.y += 0x10000;
    actor->pos.z = linked->pos.z + (0x10000 - s) * 5 + 0x80000;
}
