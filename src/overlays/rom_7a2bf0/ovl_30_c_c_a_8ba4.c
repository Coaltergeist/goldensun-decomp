extern unsigned char gState[];
extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_915_2008aac(int *position);

struct State {
    unsigned char pad[500];
    unsigned int actor;
};

void OvlFunc_915_2008ba4(void)
{
    unsigned char *actor;
    int position[3];

    actor = __MapActor_GetActor(((struct State *)gState)->actor);
    position[0] = (*(unsigned int *)(actor + 8) & 0xfff00000) + 0x80000;
    position[1] = *(unsigned int *)(actor + 0xc);
    position[2] = (*(unsigned int *)(actor + 0x10) & 0xfff00000) + 0x80000;
    position[0] += 0x200000;
    OvlFunc_915_2008aac(position);
}
