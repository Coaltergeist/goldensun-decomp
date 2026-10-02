extern int __cos(u16);
extern int __sin(u16);

void OvlFunc_969_200db90(struct Actor *actor)
{
    u16 angle = actor->waveCounter;
    struct Actor *linked = actor->linkedActor;

    actor->pos.x = linked->pos.x + (actor->speed + 0x1c) * __cos(angle);
    actor->pos.z = (0xa4 << 16) + (__sin(angle) << 4);
    actor->prevPos.x = actor->pos.x;
    actor->prevPos.z = actor->pos.z;
    actor->waveCounter -= 0x200;
}
