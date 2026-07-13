extern unsigned char *__MapActor_GetActor(int actor);
extern int __GetFlag(int flag);

void OvlFunc_883_200da94(void)
{
    unsigned char *player = __MapActor_GetActor(0);
    unsigned char *actor;

    if (__GetFlag(0x87a))
        actor = __MapActor_GetActor(0x15);
    else
        actor = __MapActor_GetActor(0x14);
    if (actor != 0) {
        if (*(int *)(player + 0xc) > 0xc80000)
            actor[0x23] = 3;
        else
            actor[0x23] = 1;
    }
}
