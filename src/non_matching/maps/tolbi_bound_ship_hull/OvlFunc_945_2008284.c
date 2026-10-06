void OvlFunc_945_2008284(struct Actor *actor)
{
    extern int __MapActor_GetActor(int);
    extern void __Actor_SetAnim(struct Actor *, int);
    struct Actor *other;

    other = (struct Actor *)__MapActor_GetActor(9);
    if (actor->stop != 0)
        return;

    switch (other->__unk63) {
    case 1:
        actor->facing = 0xd000;
        actor->__unk62 = 1;
        other->__unk63 = 0;
        break;
    case 2:
        if (actor->__unk62 != 0)
            __Actor_SetAnim(actor, 3);
        actor->__unk62 = 0;
        other->__unk63 = 0;
        break;
    case 3:
        actor->facing = 0;
        other->__unk63 = 0;
        break;
    }
}
