extern int __MapActor_GetActor(int actor_id);
extern int OvlFunc_945_2009144(int x, int y);
extern int __TestCollision(int actor, int *position);

extern const int DirectionTable_6668[] __asm__(".L6668");

int OvlFunc_945_2009280(int direction)
{
    int actor;
    int entry;
    int x;
    int z;
    int position[3];

    actor = __MapActor_GetActor(0);
    entry = DirectionTable_6668[direction];
    x = *(short *)(actor + 0xa) + (entry >> 16);
    z = *(short *)(actor + 0x12) + (short)entry;
    if (OvlFunc_945_2009144(x, z) == 0) {
        position[0] = x << 16;
        position[1] = *(int *)(actor + 0xc);
        position[2] = z << 16;
        if (__TestCollision(actor, position) == 0)
            goto success;
    }
    return 0;
success:
    return 1;
}
