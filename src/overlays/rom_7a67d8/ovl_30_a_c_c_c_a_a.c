extern unsigned int iwram_3001ebc;
extern unsigned char gState[];
extern unsigned char *__MapActor_GetActor(int actor);
extern int __Func_8011f54(unsigned int value);

void OvlFunc_919_200805c(int xOffset, int zOffset)
{
    register unsigned char *base asm("r8");
    register unsigned char *state asm("r3");
    register unsigned int stateOffset asm("r2");
    unsigned char *actor;
    int height;

    base = (unsigned char *)iwram_3001ebc;
    stateOffset = 0xfa;
    state = gState;
    stateOffset <<= 1;
    state += stateOffset;
    actor = __MapActor_GetActor(*(int *)state);
    xOffset <<= 20;
    zOffset <<= 20;

    if (actor != 0) {
        register int x asm("r1") = *(int *)(actor + 8);
        register int z asm("r2") = *(int *)(actor + 0x10);

        x += xOffset;
        z += zOffset;
        *(int *)(actor + 8) = x;
        *(int *)(actor + 0x10) = z;
        height = __Func_8011f54(actor[0x22]);
        *(int *)(actor + 0xc) = height;
        *(int *)(actor + 0x14) = height;
    }

    actor = *(unsigned char **)(base + (0xf0 << 1));
    if (actor != 0) {
        register int x asm("r1") = *(int *)(actor + 8);
        register int z asm("r2") = *(int *)(actor + 0x10);

        x += xOffset;
        z += zOffset;
        *(int *)(actor + 8) = x;
        *(int *)(actor + 0x10) = z;
        height = __Func_8011f54(actor[0x22]);
        *(int *)(actor + 0xc) = height;
        *(int *)(actor + 0x14) = height;
    }
}
