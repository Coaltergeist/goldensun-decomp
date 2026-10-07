extern unsigned int gKeyHeld;
extern void OvlFunc_955_2008310(int, int, int);

void OvlFunc_955_2008400(void) {
    unsigned int r3;
    struct Actor *actor;
    int posX;
    int actorId;
    int speed;

    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    actor = __MapActor_GetActor(*(unsigned int *)r3);
    posX = actor->pos.x >> 20;

    speed = 0;
    actorId = 0x20;
    if (actor->pos.z >> 20 > 12) {
        actorId = 0x21;
    }

    if (__MapActor_GetActor(actorId)->pos.x >> 20 == posX) {
        if (posX > 0x33) {
            if (gKeyHeld & 0x20) {
                speed = -0x40;
            }
        } else {
            if (gKeyHeld & 0x10) {
                speed = 0x40;
            }
        }

        if (speed != 0) {
            OvlFunc_955_2008310(actorId, speed, 0);
            API_Func_8010704(0x78, 10, 5, 6, 0x30, 10);
            API_Func_8010704(0x34, 0x1c, 1, 3, __MapActor_GetActor(0x20)->pos.x >> 20, 10);
            API_Func_8010704(0x34, 0x1c, 1, 3, __MapActor_GetActor(0x21)->pos.x >> 20, 13);
        }
    }
}
