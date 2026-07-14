#include "math.h"

extern unsigned char *GetBattleActor(int actor);
extern unsigned int Func_80b7f70(unsigned int actor, unsigned int index);
extern int Func_80b7ed8(void);
extern int PhysMove(int *position, int *dest);
extern int Func_80b8530(int unit);

int Func_80b845c(unsigned int unit, int *dest)
{
    int position[3];
    unsigned char *actor;
    unsigned int data;
    int moved;
    int scaled;
    int factor;

    actor = *(unsigned char **)GetBattleActor(unit);
    data = Func_80b7f70((unsigned int)actor, 0);
    Func_80b7ed8();
    moved = PhysMove((int *)(actor + 8), dest);
    scaled = fx32_multiply(moved, *(int *)(data + 0x18));
    factor = Func_80b8530(unit);
    dest[1] -= fx32_multiply(scaled, factor >> 16);
    return 0;
}
