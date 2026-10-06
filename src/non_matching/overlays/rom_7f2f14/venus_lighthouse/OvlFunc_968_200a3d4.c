void OvlFunc_968_200a3d4(unsigned int actorId)
{
    extern void OvlFunc_968_2008b08(unsigned int);
    struct Actor *actor;
    struct Actor *other;
    int y;
    unsigned int i;
    unsigned int otherId;
    int new_y;

    actor = NULL;
    y = 0xffb00000;
    for (i = 0; i <= 5; i++) {
        otherId = i + 8;
        if (otherId == actorId) {
            continue;
        }
        other = (struct Actor *)__MapActor_GetActor(otherId);
        actor = (struct Actor *)__MapActor_GetActor(actorId);
        if ((other->pos.x >> 20) == (actor->pos.x >> 20) &&
            (other->pos.z >> 20) == (actor->pos.z >> 20)) {
            new_y = other->pos.y + (0x80 << 13);
            if (new_y >= y) {
                actor->waveCounter = otherId;
                y = new_y;
            }
        }
    }
    API_MapActor_SetSpeed(actorId, 0x80 << 11, 0x80 << 10);
    API_Actor_TravelTo(actor, actor->pos.x, y, actor->pos.z);
    API_MapActor_WaitMovement(actorId);
    API_PlaySound(0xbc);
    OvlFunc_968_2008b08(actorId);
    API_CutsceneWait(0x1e);
}
