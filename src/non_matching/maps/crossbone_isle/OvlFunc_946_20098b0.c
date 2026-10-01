void OvlFunc_946_20098b0(unsigned int id, unsigned int x, unsigned int y, unsigned int unused)
{
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(id);
    if (actor != 0) {
        API_Func_8092b08(id, 3);
        actor->flags |= 2;
        API_Func_8010704(x, y, 1, 3, actor->pos.x >> 20, (actor->pos.z >> 20) - 1);
    }
}
