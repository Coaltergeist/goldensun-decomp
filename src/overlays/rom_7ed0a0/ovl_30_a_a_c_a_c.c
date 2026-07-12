extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_964_2008cd0(int position[3]);

void OvlFunc_964_2008df4(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    int position[3];

    position[0] = *(int *)(actor + 8);
    position[1] = *(int *)(actor + 0xc);
    position[2] = *(int *)(actor + 0x10) - 0x200000;
    OvlFunc_964_2008cd0(position);
}
