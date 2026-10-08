int OvlFunc_947_2008ec8(int actor_id)
{
    extern void __Actor_SetAnim(void *, int);
    unsigned char *actor;
    int camz;
    int camx;
    unsigned int h;
    unsigned int w;
    struct ActorInfo_947 info;

    actor = __MapActor_GetActor(actor_id);
    if (OvlFunc_947_2008ddc(actor_id, (int *)&w, (int *)&h, (int *)&info, &camx, &camz) == 0)
        return 0;

    API_Func_8010704(2, 2, w, h, info.x, info.z);
    __Actor_SetAnim(actor, 4);
    actor[0x23] = 2 | actor[0x23];

    if (w > h)
        API_CopyMapTiles(0x46, 0x28, info.x + 0x20, info.z + 2, w, h);
    else
        API_CopyMapTiles(0x44, 0x28, info.x + 0x20, info.z + 2, w, h);
    return 1;
}
