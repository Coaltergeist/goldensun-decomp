void OvlFunc_883_200b45c(unsigned int actorId, unsigned int count, int setPos)
{
    struct Actor *actor;
    unsigned int i;

    if (setPos == 0) {
        for (i = 0; i < count; i++) {
            actor = (struct Actor *)__MapActor_GetActor(actorId);
            actor->__unk55 = 0;
            __Actor_SetSpriteFlags((unsigned char *)actor, 0);
            actor->pos.x = 0xc3 << 17;
            actor->pos.y = 0xa0 << 16;
            actor->pos.z = 0x34a0000;
            actorId++;
        }
    } else {
        for (i = 0; i < count; i++) {
            API_MapActor_SetPos(actorId, 0, 0);
            actorId++;
        }
    }
}
