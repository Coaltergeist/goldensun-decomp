extern int __atan2(int, int);

int OvlFunc_921_20080d8(void *this)
{
    struct Actor {
        char pad1[6];
        short facing;
        char pad2[0x18];
        int x;
        char pad3[4];
        int y;
        char pad4[0x4a];
        unsigned char flags5a;
        char pad5[0xd];
        void *target;
    } *a = this;
    int dx, dy;
    int angle;
    short diff;

    if (a->target != 0) {
        struct Actor *t = a->target;

        a->flags5a &= ~1;

        dy = t->y - a->y;
        dx = t->x - a->x;
        angle = __atan2(dy, dx);
        diff = (short)((unsigned short)angle - a->facing);

        if (diff != 0) {
            if (diff > 0x1000) {
                diff = 0x1000;
            }
            if (diff < (short)0xfffff000) {
                diff = (short)0xfffff000;
            }
            a->facing += diff;
        }
    }

    return 1;
}
