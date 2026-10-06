void OvlFunc_949_20086e8(struct Actor *actor) {
    if (actor != 0) {
        struct Actor *a0 = (struct Actor *)__MapActor_GetActor(0);
        int prio = a0->sprite->oam.priority;
        actor->flags = 0;
        actor->sprite->oam.priority = prio;
        actor->sprite->shadowOAM.priority = prio;
    }
}
