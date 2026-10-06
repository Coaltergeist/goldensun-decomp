int OvlFunc_936_2008040(struct Actor *actor)
{
    extern void __Actor_SetAnim(struct Actor *, int);
    extern u32 __Random(void);
    short *timer = (short *)&actor->__unk66;

    if (*timer == 0) {
        switch ((__Random() * 8) >> 16) {
        case 0:
            __Actor_SetAnim(actor, 3);
            break;
        case 1:
            __Actor_SetAnim(actor, 4);
            break;
        case 3:
        case 4:
            actor->facing += (__Random() << 15) >> 16;
            break;
        }
        *timer = (__Random() * 80) >> 16;
    }
    if (*timer != 0) {
        (*timer)--;
    }
    return 1;
}
