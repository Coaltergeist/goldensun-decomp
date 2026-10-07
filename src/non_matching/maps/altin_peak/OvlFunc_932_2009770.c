void OvlFunc_932_2009770(struct Actor *actor)
{
    s16 *p66;
    s16 *p64;
    int y;

    p66 = (s16 *)((char *)actor + 0x66);
    if (*p66 != 0) {
        if (--*p66 == 1) {
            __Func_8012330(-1, -1, 0xe666);
        }
    }

    if (actor->motion.y == 0) {
        __Actor_SetAnim(actor, 1);
        y = actor->pos.y - 0x18000;
        actor->pos.y = y;
        if (y < actor->floorPos) {
            if (*(int *)((char *)actor + 0x68) != 0) {
                __PlaySound(0xe5);
                *(int *)((char *)actor + 0x68) = actor->motion.y;
                *p66 = 4;
                __Func_8012330(0x10000, 0, 0x10000);
            }
            actor->pos.y = actor->floorPos;
        }
        actor->stop = 1;
    } else {
        actor->stop = 0;
    }

    p64 = (s16 *)((char *)actor + 0x64);
    if (*p64 == 0) {
        __PlaySound(0x98);
        *(int *)((char *)actor + 0x68) = 1;
        __Actor_SetAnim(actor, 2);
        actor->motion.y = 0x30000;
    }
    if (++*p64 == 60) {
        *p64 = 0;
    }
}
