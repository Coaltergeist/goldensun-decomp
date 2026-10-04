extern int __atan2(int, int);
extern void __Actor_SetAnim(struct Actor *, int);

int OvlFunc_901_2008350(struct Actor *a, struct Actor *b, int range, int arg3)
{
    int ret = 0;

    if (OvlFunc_901_2008314((int *)&b->pos, (int *)&a->pos) < range || arg3) {
        u16 angle = __atan2(b->pos.z - a->pos.z, b->pos.x - a->pos.x);
        int facing = a->facing & 0xf000;

        if ((angle & 0xf000) == facing ||
            ((angle + 0x1000) & 0xf000) == facing ||
            ((angle - 0x1000) & 0xf000) == facing ||
            arg3) {
            a->stop = 1;
            __Actor_SetAnim(a, 1);
            ret = 1;
        }
    } else {
        a->stop = 0;
        __Actor_SetAnim(a, 2);
    }

    return ret;
}
