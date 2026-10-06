unsigned int OvlFunc_943_2008514(struct Actor *actor)
{
    extern unsigned int __Random();
    s16 *wave = (s16 *)&actor->__unk66;

    if (*wave != 0) {
        actor->pos.y = actor->pos.y - ((__Random() << 15) >> 16) - 0x8000;
        if (actor->pos.y < 0x40000)
            *wave = 0;
    } else {
        actor->pos.y = actor->pos.y + ((__Random() << 15) >> 16) + 0x8000;
        if (actor->pos.y > 0xc0000)
            *wave = 1;
    }
    return 1;
}
