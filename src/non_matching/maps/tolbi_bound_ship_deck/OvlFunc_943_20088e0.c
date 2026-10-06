unsigned int OvlFunc_943_20088e0(struct Actor *actor)
{
    u8 *timer = &actor->__unk62;
    unsigned int r;

    if (*timer != 0) {
        *timer = *timer - 1;
    } else {
        r = (__Random0() * 300) >> 16;
        if (r > 200) {
            actor->facing = 0xd000;
        } else if (r > 100) {
            actor->facing = 0x5000;
        } else {
            actor->facing = 0;
        }
        *timer = ((__Random0() * 80) >> 16) + 80;
    }
    return 1;
}
