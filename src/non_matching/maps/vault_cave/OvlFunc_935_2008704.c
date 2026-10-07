void OvlFunc_935_2008704(void)
{
    struct Actor935 *actor;
    int id = 0x10;
    int i = 5;
    do {
        actor = (struct Actor935 *)__MapActor_GetActor(id);
        actor->f23 |= 2;
        i--;
        id++;
    } while (i >= 0);
}
