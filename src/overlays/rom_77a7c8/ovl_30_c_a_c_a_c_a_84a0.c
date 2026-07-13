extern unsigned char gState[];
extern unsigned int iwram_3001ebc;
extern unsigned char *__MapActor_GetActor(int actor);
extern void __PlaySound(int sound);

struct State {
    unsigned char pad[500];
    unsigned int actor;
};

void OvlFunc_881_20084a0(int actorId, int firstValue, int secondValue)
{
    unsigned char *firstActor = __MapActor_GetActor(actorId - 0x64);
    unsigned char *secondActor =
        __MapActor_GetActor(((struct State *)gState)->actor);
    unsigned char *mapState = *(unsigned char **)&iwram_3001ebc;

    if (*(int *)(secondActor + 8) < *(int *)(firstActor + 8))
        *(unsigned short *)(mapState + 0x170) = firstValue;
    else
        *(unsigned short *)(mapState + 0x170) = secondValue;
    __PlaySound(0x7b);
}

void OvlFunc_881_20084f0(int actorId, int firstValue, int secondValue)
{
    unsigned char *firstActor = __MapActor_GetActor(actorId - 0x64);
    unsigned char *secondActor =
        __MapActor_GetActor(((struct State *)gState)->actor);
    unsigned char *mapState = *(unsigned char **)&iwram_3001ebc;

    if (*(int *)(secondActor + 0x10) < *(int *)(firstActor + 0x10))
        *(unsigned short *)(mapState + 0x170) = firstValue;
    else
        *(unsigned short *)(mapState + 0x170) = secondValue;
    __PlaySound(0x7b);
}
