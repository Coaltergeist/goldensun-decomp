extern unsigned int __Random(void);

int OvlFunc_969_2008424(struct Actor *actor)
{
    s16 *timer;

    timer = (s16 *)&actor->__unk66;
    if (*timer == 0) {
        actor->facing += (__Random() * 0x8000) >> 16;
        *timer = (__Random() * 80) >> 16;
        if (*timer == 0)
            return 1;
    }
    *timer -= 1;
    return 1;
}
