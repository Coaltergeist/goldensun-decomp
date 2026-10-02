extern int __atan2(int, int);

u32 OvlFunc_911_2008114(struct Actor *actor)
{
    struct Actor *target = actor->linkedActor;

    if (target != NULL) {
        int diff;

        actor->__unk5A &= 0xfe;
        diff = (s16)((u16)__atan2(target->pos.z - actor->pos.z, target->pos.x - actor->pos.x) - actor->facing);
        if (diff != 0) {
            if (diff > 0x1000) {
                diff = 0x1000;
            }
            if (diff < -0x1000) {
                diff = -0x1000;
            }
            actor->facing += diff;
        }
    }
    return 1;
}
