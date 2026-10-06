unsigned int OvlFunc_968_20088c8(struct Actor *actor)
{
    struct Actor *player;
    u8 *flags;
    int dz;

    player = (struct Actor *)__MapActor_GetActor(0);
    flags = &actor->flags;
    *flags |= 2;
    if (player->pos.z < actor->pos.z) {
        dz = (actor->pos.z - player->pos.z) + 0x40000;
        if (player->pos.y <= actor->pos.y + dz) {
            *flags &= ~2;
        }
    }
    return 0;
}
