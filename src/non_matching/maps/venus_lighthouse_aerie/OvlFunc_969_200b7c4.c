extern struct Actor *MapActor_GetActor(int) __asm__("__MapActor_GetActor");
extern int __GetFlag(int);
extern void __Func_8092950(int, int);

void OvlFunc_969_200b7c4(void)
{
    struct Actor *actor1;
    struct Actor *actor2;
    int cond;

    actor1 = MapActor_GetActor(0x14);
    actor2 = MapActor_GetActor(0x13);

    cond = (actor2->prevPos.x == (0x80 << 24) &&
            actor2->prevPos.y == (0x80 << 24) &&
            actor2->prevPos.z == (0x80 << 24));

    if (cond) {
        actor1->facing = 0;
        actor2->facing = 0;

        if (__GetFlag(0x235)) {
            __Func_8092950(0x14, 7);
            __Func_8092950(0x13, 7);
            if (actor1->scale.x < (0xa0 << 9)) {
                actor1->scale.x += (0x80 << 2);
                actor1->scale.y += (0x80 << 2);
                actor2->scale.x += (0x80 << 2);
                actor2->scale.y += (0x80 << 2);
            }
        } else {
            if (iwram_3001e40 & 2) {
                __Func_8092950(0x14, 0xf);
                __Func_8092950(0x13, 0);
            } else {
                __Func_8092950(0x14, 0);
                __Func_8092950(0x13, 0xf);
            }
        }

        if (__GetFlag(0x234)) {
            if (actor1->pos.x < (0x9c << 17)) {
                actor1->pos.x += (0x80 << 5);
                actor2->pos.x += (0x80 << 5);
            }
            if (actor1->pos.z > (0xb6 << 16)) {
                actor1->pos.z += -0x1000;
                actor2->pos.z += -0x1000;
            }
        }
    }
}
