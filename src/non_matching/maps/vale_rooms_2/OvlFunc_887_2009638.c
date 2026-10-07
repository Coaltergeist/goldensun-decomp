void OvlFunc_887_2009638(struct Actor *actor)
{
    struct Actor *linked;
    fx32 sinVal;

    linked = actor->linkedActor;
    actor->waveCounter++;
    if (actor->waveCounter > 0x1f) {
        __DeleteActor(actor);
    } else {
        sinVal = __sin(actor->waveCounter << 10);
        actor->scale.x = sinVal;
        actor->scale.y = -sinVal;
        actor->pos.x = linked->pos.x;
        actor->pos.y = actor->pos.y + (0x80 << 9);
        actor->pos.z = linked->pos.z - (0x10000 - sinVal) * 5 + (0x80 << 13);
    }
}
