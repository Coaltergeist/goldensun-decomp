extern int __atan2(int, int);


int OvlFunc_883_200d64c(unsigned char *arg, int a, int b, int c)
{
    struct Actor *actor = (struct Actor *)arg;
    struct Actor *target = (struct Actor *)a;
    int result = 0;
    unsigned int angle;
    unsigned int facing;

    if (actor->stop == 1 && actor->__unk62 == 0) {
        __Actor_SetAnim(actor, 1);
        return 1;
    }

    if (OvlFunc_883_200d610(&target->pos.x, &actor->pos.x) < b || c != 0) {
        angle = (unsigned short)__atan2(target->pos.z - actor->pos.z,
                                        target->pos.x - actor->pos.x);
        facing = actor->facing & 0xf000;
        if ((angle & 0xf000) == facing
            || ((angle + 0x1000) & 0xf000) == facing
            || ((angle - 0x1000) & 0xf000) == facing
            || c != 0) {
            actor->stop = 1;
            __Actor_SetAnim(actor, 1);
            result = 1;
            actor->__unk62 = 1;
            return result;
        }
    }

    actor->stop = c;
    __Actor_SetAnim(actor, 2);
    actor->__unk62 = c;
    return result;
}