extern void __Actor_SetAnim(int, int);
extern unsigned short __atan2(int, int);

int OvlFunc_928_2008408(unsigned char *actor, unsigned char *target, int range, int force)
{
    unsigned char *state;
    short *timer;
    int result;
    unsigned int angle;
    unsigned int facing;

    result = 0;
    state = actor + 0x5b;
    timer = (short *)(actor + 0x64);

    if (*state == 1 && *timer == 0) {
        __Actor_SetAnim((int)actor, 1);
        return 1;
    }

    if (OvlFunc_928_20083cc((int *)(target + 8), (int *)(actor + 8)) < range || force != 0) {
        angle = __atan2(*(int *)(target + 0x10) - *(int *)(actor + 0x10),
                        *(int *)(target + 8) - *(int *)(actor + 8));
        facing = *(unsigned short *)(actor + 6) & 0xf000;
        if ((angle & 0xf000) == facing
            || ((angle + 0x1000) & 0xf000) == facing
            || ((angle - 0x1000) & 0xf000) == facing
            || force != 0) {
            *state = 1;
            __Actor_SetAnim((int)actor, 1);
            result = 1;
            *timer = result;
        } else {
            *state = 0;
            __Actor_SetAnim((int)actor, 2);
            *timer = 0;
        }
    } else {
        *state = 0;
        __Actor_SetAnim((int)actor, 2);
        *timer = 0;
    }
    return result;
}
