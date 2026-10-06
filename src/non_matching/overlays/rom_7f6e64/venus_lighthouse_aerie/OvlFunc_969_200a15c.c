extern void __DeleteActor(struct Actor *actor);
extern int __sin(int angle);

void OvlFunc_969_200a15c(struct Actor *actor)
{
    struct Actor *linked;
    s16 t;
    int s;

    t = ++actor->waveCounter;
    linked = actor->linkedActor;
    if (t > 31) {
        __DeleteActor(actor);
    } else {
        s = __sin(t << 10);
        actor->scale.x = s;
        actor->scale.y = s;
        actor->pos.x = linked->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = linked->pos.z + (0x10000 - s) * 5 + 0x80000;
    }
}
