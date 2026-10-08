int OvlFunc_945_2008058(struct Actor *actor)
{
    extern int __Random(void);
    s16 *wave = (s16 *)&actor->__unk66;
    unsigned int r;
    int y;

    if (*wave != 0) {
        r = (unsigned int)__Random() << 15 >> 16;
        y = actor->pos.y - r - 0x8000;
        actor->pos.y = y;
        if (y < 0) {
            *wave = 0;
        }
    } else {
        r = (unsigned int)__Random() << 15 >> 16;
        y = actor->pos.y + r + 0x8000;
        actor->pos.y = y;
        if (y > 0x80000) {
            *wave = 1;
        }
    }
    return 1;
}
