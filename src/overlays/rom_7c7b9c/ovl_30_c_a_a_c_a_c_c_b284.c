typedef unsigned char u8;
typedef signed int s32;
extern u8 *__MapActor_GetActor(int);
extern void OvlFunc_943_200b380(int);
extern void OvlFunc_943_200b3b8(void);
extern s32 gOvl943ActorXPositions[];

void OvlFunc_943_200b284(void)
{
    u8 *actor;

    __MapActor_GetActor(8)[0x59] = 0;
    __MapActor_GetActor(9)[0x59] = 0;
    __MapActor_GetActor(10)[0x59] = 0;
    __MapActor_GetActor(11)[0x59] = 0;
    OvlFunc_943_200b380(8);
    OvlFunc_943_200b380(9);
    OvlFunc_943_200b380(10);
    OvlFunc_943_200b380(11);
    OvlFunc_943_200b380(12);
    OvlFunc_943_200b380(13);
    OvlFunc_943_200b380(14);
    OvlFunc_943_200b380(15);
    actor = __MapActor_GetActor(12);
    gOvl943ActorXPositions[0] = *(s32 *)(actor + 0x10);
    actor = __MapActor_GetActor(13);
    gOvl943ActorXPositions[1] = *(s32 *)(actor + 0x10);
    actor = __MapActor_GetActor(14);
    gOvl943ActorXPositions[2] = *(s32 *)(actor + 0x10);
    actor = __MapActor_GetActor(15);
    gOvl943ActorXPositions[3] = *(s32 *)(actor + 0x10);
    OvlFunc_943_200b380(16);
    OvlFunc_943_200b380(17);
    OvlFunc_943_200b380(18);
    OvlFunc_943_200b380(19);
    actor = __MapActor_GetActor(16);
    *(s32 *)(actor + 0x18) = -0x10000;
    actor = __MapActor_GetActor(17);
    *(s32 *)(actor + 0x18) = -0x10000;
    actor = __MapActor_GetActor(18);
    *(s32 *)(actor + 0x18) = -0x10000;
    actor = __MapActor_GetActor(19);
    *(s32 *)(actor + 0x18) = -0x10000;
    actor = __MapActor_GetActor(16);
    gOvl943ActorXPositions[4] = *(s32 *)(actor + 0x10);
    actor = __MapActor_GetActor(17);
    gOvl943ActorXPositions[5] = *(s32 *)(actor + 0x10);
    actor = __MapActor_GetActor(18);
    gOvl943ActorXPositions[6] = *(s32 *)(actor + 0x10);
    actor = __MapActor_GetActor(19);
    gOvl943ActorXPositions[7] = *(s32 *)(actor + 0x10);
    OvlFunc_943_200b3b8();
}
