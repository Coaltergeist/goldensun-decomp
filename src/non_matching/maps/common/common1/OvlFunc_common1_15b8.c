void OvlFunc_common1_15b8(unsigned int actorID, unsigned int arg1, unsigned int arg2)
{
    unsigned char *actor;
    int v;

    actor = (unsigned char *)__GetFieldActor(actorID);
    if (actor != (unsigned char *)0) {
        v = 0xa0;
        v <<= 9;
        *(int *)(actor + 0x30) = v;
        v >>= 1;
        *(int *)(actor + 0x34) = v;
        *(unsigned char *)(actor + 0x5b) = 0;
        __Actor_Stop();
        __Actor_SetAnim((int)actor, 5);
        __Actor_TravelTo((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
        __Actor_WaitMovement((int)actor);
        __Actor_SetAnim((int)actor, 1);
    }
}
