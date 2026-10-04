extern int __cos(int);
extern int __sin(int);

void OvlFunc_888_200a6f0(struct Actor *actor)
{
    u16 angle = actor->waveCounter;
    struct Actor *linked = actor->linkedActor;

    actor->pos.x = linked->pos.x + __cos(angle) * 14;
    actor->pos.z = linked->pos.z + __sin(angle) * 10;
    actor->prevPos.z = actor->pos.z;
    actor->prevPos.x = actor->pos.x;
    actor->waveCounter += actor->__unk66;
}
