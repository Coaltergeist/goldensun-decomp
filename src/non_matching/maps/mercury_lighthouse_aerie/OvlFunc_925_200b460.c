extern int __cos(u16);
extern int __sin(u16);

void OvlFunc_925_200b460(struct Actor *actor)
{
    u16 angle = actor->waveCounter;
    struct Actor *linkedActor = actor->linkedActor;

    actor->pos.x = linkedActor->pos.x + (actor->speed + 0x1c) * __cos(angle);
    actor->pos.z = (0x90 << 16) + (__sin(angle) << 4);
    actor->prevPos.x = actor->pos.x;
    actor->prevPos.z = actor->pos.z;
    actor->waveCounter -= 0x200;
}
