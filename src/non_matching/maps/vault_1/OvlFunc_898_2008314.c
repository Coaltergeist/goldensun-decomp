unsigned int OvlFunc_898_2008314(unsigned char *arg0)
{
    unsigned char *p0;
    unsigned char *p1;
    unsigned short *p64;
    unsigned int actor;
    int actor_id;
    int iVar3;
    int iVar4;

    p0 = (unsigned char *)iwram_3001e8c;
    p64 = (unsigned short *)(arg0 + 0x64);
    iVar3 = 0x12;
    p1 = *(unsigned char **)((char *)&iwram_3001e8c + 0x30);
    iVar4 = 0;
    if (*p64 & 1) {
        actor_id = 15;
    } else {
        actor_id = 14;
    }
    actor = __MapActor_GetActor(actor_id);
    if (OvlFunc_898_2009674(arg0, actor, 32, 0) != 0) {
        return 0;
    }
    actor = __MapActor_GetActor(0);
    if ((*(short *)(p1 + 0x178) != 0) || (*(unsigned char *)(p0 + 0xea4) != 0)) {
        iVar3 = 0x1a;
        if (*p64 & 2) {
            iVar4 = 1;
        }
    }
    OvlFunc_898_2009674(arg0, actor, iVar3, iVar4);
    return 0;
}
