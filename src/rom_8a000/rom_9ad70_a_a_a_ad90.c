typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned int GetFieldActor(unsigned int actorID);
extern void _Actor_SetAnimSpeed(int actor, int speed);
extern void Func_809ad70(void *actor);

void Func_809ad90(unsigned int arg0)
{
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(arg0);
    if (actor) {
        unsigned char *state;
        unsigned int idx;
        unsigned int *dst;
        unsigned int val;

        state = (unsigned char *)&gState;
        idx = 0x94;
        idx <<= 2;
        dst = (unsigned int *)(state + idx);
        *dst = *(unsigned int *)(actor + 0x6c);
        state += 0x249;
        *state = 0;
        if (actor[0x54] == 1) {
            val = *(unsigned int *)(*(unsigned int *)(actor + 0x50) + 0x28);
            if (val != 0) {
                *state = *(unsigned char *)(val + 5);
            }
        }
        *(unsigned int *)(actor + 0x6c) = (unsigned int)&Func_809ad70;
        actor[0x5b] = 1;
        _Actor_SetAnimSpeed((int)actor, 0);
    }
}
