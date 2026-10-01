void OvlFunc_946_200985c(unsigned int actorId, unsigned int x, unsigned int y, unsigned int unused)
{
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(actorId);
    if (actor != 0) {
        API_Func_8092b08(actorId, 3);
        actor->flags |= 2;
        __Func_8010704(x, y, 3, 1, (actor->pos.x >> 20) - 1, actor->pos.z >> 20);
    }
}
