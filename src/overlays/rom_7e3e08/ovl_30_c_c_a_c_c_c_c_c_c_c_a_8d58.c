extern unsigned char *iwram_3001f30;
extern unsigned char *__MapActor_GetActor(int actor_id);
extern int __TestCollision(unsigned char *actor, int *position);

void OvlFunc_957_2008d58(void)
{
    unsigned char *object = iwram_3001f30;
    unsigned char *actor;
    int position[3];

    actor = __MapActor_GetActor(11);
    position[0] = *(int *)(actor + 8);
    position[1] = *(int *)(actor + 0xc);
    position[2] = *(int *)(actor + 0x10);
    if (__TestCollision(actor, position) > 0)
        object[0x35] = 1;
}
