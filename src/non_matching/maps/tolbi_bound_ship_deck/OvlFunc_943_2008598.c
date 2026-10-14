int OvlFunc_943_2008598(struct Actor *actor)
{
    extern void *__MapActor_GetActor(int);
    unsigned char *p = (unsigned char *)actor;

    p += 0x64;
    switch ((unsigned int)*(short *)p) {
    case 0:
        if (((__Random0() * 5 << 3) >> 16) == 0) {
            *(unsigned short *)p += 1;
        }
        break;
    case 1:
        *(unsigned short *)p += 1;
        break;
    case 2:
        actor->motion.y = 0x80 << 11;
        actor->speed = 0x80 << 11;
        actor->accel = 0x80 << 10;
        API_Actor_TravelTo(actor, 0x84 << 17, 0, 0x2960000);
        *(unsigned short *)p += 1;
        break;
    case 3:
        *(unsigned short *)p += 1;
        break;
    case 4:
        if (actor->prevPos.x == (int)0x80000000 && actor->prevPos.y == actor->prevPos.x
            && actor->prevPos.z == actor->prevPos.y) {
            *(unsigned short *)p += 1;
            API_PlaySound(0x98);
            if (actor->__unk63 != 0) {
                API_Func_8092adc(0x15, 0xb0 << 8, 0);
            } else {
                API_Func_8092adc(0x15, 0xa0 << 7, 0);
            }
            if (((__Random0() << 2) >> 16) != 0) {
                ((struct Actor *)__MapActor_GetActor(0x15))->motion.y = 0x80 << 10;
            } else {
                API_MapActor_Emote(0x15, 0x103, 0);
                ((struct Actor *)__MapActor_GetActor(0x15))->motion.y = 0xc0 << 11;
            }
        }
        break;
    case 5:
        *(unsigned short *)p += 1;
        break;
    case 6:
        *(unsigned short *)p += 1;
        actor->motion.y = 0x80 << 11;
        actor->speed = 0x80 << 10;
        actor->accel = 0x80 << 9;
        if (actor->__unk63 != 0) {
            API_Actor_TravelTo(actor, 0xfc << 16, 0, 0x2860000);
        } else {
            API_Actor_TravelTo(actor, 0x80 << 17, 0, 0x2ae0000);
        }
        break;
    case 7:
        *(unsigned short *)p += 1;
        break;
    case 8:
        if (actor->prevPos.x == (int)0x80000000 && actor->prevPos.y == actor->prevPos.x
            && actor->prevPos.z == actor->prevPos.y) {
            *(unsigned short *)p += 1;
        }
        break;
    case 9:
        *(short *)p = 0;
        break;
    }
    return 1;
}
