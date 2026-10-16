void OvlFunc_945_200812c(struct Actor *actor)
{
    extern void __Actor_SetAnim(struct Actor *, int);
    extern void __Actor_TravelTo(struct Actor *, int, int, int);
    extern int OvlFunc_945_20080fc(struct Actor *);

    struct Actor *actor8;
    short *step;

    actor8 = (struct Actor *)__MapActor_GetActor(8);
    step = (short *)&actor->__unk66;

    switch (*step) {
    case 0:
        actor->facing = 0xb0 << 8;
        (*step)++;
        actor->__unk62 = 0;
        break;

    case 2:
        actor->facing = 0;
        (*step)++;
        actor->__unk62 = 0;
        break;

    case 4:
        __Actor_SetAnim(actor, 2);
        __Actor_TravelTo(actor, 0xea << 17, 0x80 << 14, 0x9e << 18);
        actor->__unk4C = 0x3c;
        (*step)++;
        break;

    case 5:
        if (OvlFunc_945_20080fc(actor) != 0) {
            __Actor_SetAnim(actor, 1);
            actor->__unk62 = 0;
            if (!actor8->stop) {
                actor->__unk63 = 1;
            }
            (*step)++;
        }
        break;

    case 7:
        if (!actor8->stop) {
            __Actor_SetAnim(actor, 3);
            actor->__unk63 = 2;
        }
        (*step)++;
        actor->__unk62 = 0;
        break;

    case 9:
        __Actor_SetAnim(actor, 2);
        __Actor_TravelTo(actor, 0xf0 << 17, 0x80 << 14, 0x96 << 18);
        actor->__unk4C = 0x3c;
        (*step)++;
        if (!actor8->stop) {
            actor->__unk63 = 3;
        }
        break;

    case 10:
        if (OvlFunc_945_20080fc(actor) != 0) {
            __Actor_SetAnim(actor, 1);
            actor->__unk62 = 0;
            (*step)++;
        }
        break;

    case 1:
    case 3:
    case 6:
    case 8:
    case 11:
        OvlFunc_945_20080d8((unsigned char *)actor);
        break;

    case 12:
        *step = 0;
        break;
    }
}
