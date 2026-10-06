extern int __atan2(int, int);

int OvlFunc_932_2008040(struct Actor *actor)
{
    struct Actor *target;
    short delta;

    target = actor->linkedActor;
    if (target != 0) {
        actor->__unk5A &= 0xfe;
        delta = (unsigned short)__atan2(target->pos.z - actor->pos.z,
                                        target->pos.x - actor->pos.x)
                - actor->facing;
        if (delta != 0) {
            if (delta > 0x1000)
                delta = 0x1000;
            if (delta < -0x1000)
                delta = -0x1000;
            actor->facing += delta;
        }
    }
    return 1;
}
