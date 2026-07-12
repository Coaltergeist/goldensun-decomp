extern unsigned char *__MapActor_GetActor(int actor);
extern int OvlFunc_946_2009a44(unsigned char *actor, int position[3]);

int OvlFunc_946_2009b14(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    int position[3];

    position[0] = *(int *)(actor + 8);
    position[1] = *(int *)(actor + 0xc);
    position[2] = *(int *)(actor + 0x10) - 0x200000;
    return OvlFunc_946_2009a44(actor, position);
}
