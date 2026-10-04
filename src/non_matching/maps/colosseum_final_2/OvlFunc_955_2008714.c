extern unsigned int L4838[] __asm__(".Lm955_4838");
extern unsigned int L4834[] __asm__(".Lm955_4834");

void OvlFunc_955_2008714(void)
{
    unsigned int r3;
    struct Actor *leader;
    struct Actor *actor;
    int i;
    int dx;
    int dz;

    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    leader = __MapActor_GetActor(*(int *)r3);

    for (i = 0x16; i <= 0x19; i++) {
        actor = __MapActor_GetActor(i);
        actor->stop = 0;

        dx = actor->pos.x - leader->pos.x;
        if (dx < 0 ? leader->pos.x - actor->pos.x <= 0x9ffff : dx <= 0x9ffff) {
            dz = actor->pos.z - leader->pos.z;
            if (dz < 0 ? leader->pos.z - actor->pos.z <= 0x9ffff : dz <= 0x9ffff) {
                if (__GetFlag(0x82 << 1)) {
                    leader->pos.z = actor->pos.z;
                } else {
                    leader->pos.z += actor->motion.z;
                }
            }
        }
    }

    if (L4838[0] != 0 && actor->prevPos.x == (int)(0x80 << 24)) {
        if (L4834[0] == 0) {
            API_Func_8010704(0x3a, 0x1c, 7, 1, 0x3a, 0xd);
        } else {
            API_Func_8010704(0x3a, 0xa, 1, 1, 0x3a, 0xb);
        }
    } else {
        API_Func_8010704(0x39, 0xb, 1, 1, 0x3a, 0xb);
        API_Func_8010704(0x3a, 0xe, 7, 1, 0x3a, 0xd);
    }

    if (L4838[0] == 0) {
        L4834[0] ^= 1;
        if (L4834[0] != 0) {
            API_Actor_TravelTo(__MapActor_GetActor(0x16), 0xea << 18, 0, 0xb8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x17), 0xf2 << 18, 0, 0xf8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x18), 0xfa << 18, 0, 0xb8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x19), 0x81 << 19, 0, 0xf8 << 16);
            API_MapActor_SetAnim(0x1f, 0xb);
        } else {
            API_Actor_TravelTo(__MapActor_GetActor(0x16), 0xea << 18, 0, 0xd8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x17), 0xf2 << 18, 0, 0xd8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x18), 0xfa << 18, 0, 0xd8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x19), 0x81 << 19, 0, 0xd8 << 16);
            API_MapActor_SetAnim(0x1f, 0xa);
        }
    }

    L4838[0]++;
    if (L4838[0] > 0x77) {
        if (!__GetFlag(0x82 << 1)) {
            L4838[0] = 0;
        }
    }
}
