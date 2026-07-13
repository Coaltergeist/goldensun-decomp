struct OvlActor945 {
    unsigned char pad_00[0x38];
    int x;
    int y;
    int z;
    unsigned char pad_44[8];
    int timer;
};

int OvlFunc_945_20080fc(struct OvlActor945 *actor)
{
    if (actor->timer != 0) {
        actor->timer--;
    } else {
        return 1;
    }
    if (actor->x != (int)0x80000000 ||
        actor->y != (int)0x80000000 ||
        actor->z != (int)0x80000000)
        return 0;

    return 1;
}
