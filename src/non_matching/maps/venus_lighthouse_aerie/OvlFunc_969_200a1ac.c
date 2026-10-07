extern void __DeleteActor(struct Actor *actor);
extern int __sin(int angle);

void OvlFunc_969_200a1ac(struct Actor *actor)
{
    struct Actor *linked;
    s16 count;
    int s;

    count = ++actor->waveCounter;
    linked = actor->linkedActor;
    if (count > 0x1f) {
        __DeleteActor(actor);
        return;
    }
    s = __sin(count << 10);
    actor->scale.x = s;
    actor->scale.y = -s;
    actor->pos.x = linked->pos.x;
    actor->pos.y += 0x10000;
    actor->pos.z = linked->pos.z - (0x10000 - s) * 5 + 0x100000;
}
