unsigned int OvlFunc_924_200d1b0(struct Actor *actor)
{
    extern int __sin(int);
    struct Actor *linked;
    int v;

    actor->waveCounter++;
    linked = actor->linkedActor;
    if (actor->waveCounter > 0x1f)
        return 0;

    v = __sin(actor->waveCounter << 10);
    actor->scale.x = v;
    actor->scale.y = v;
    actor->pos.x = linked->pos.x;
    actor->pos.y += 0x80 << 9;
    actor->pos.z = linked->pos.z;
    return 1;
}
