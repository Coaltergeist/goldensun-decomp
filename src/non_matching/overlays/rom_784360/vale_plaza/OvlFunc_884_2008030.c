extern int __atan2(int, int);

int OvlFunc_884_2008030(struct Actor *actor)
{
    struct Actor *target = actor->linkedActor;

    if (target != NULL) {
        s16 diff;

        actor->__unk5A &= 0xfe;
        diff = (u16)__atan2(target->pos.z - actor->pos.z, target->pos.x - actor->pos.x) - actor->facing;
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
