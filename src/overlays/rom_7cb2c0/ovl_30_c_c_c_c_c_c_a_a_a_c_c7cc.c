extern void __MapActor_SetAnim(int actor, int animation);
extern void __MapActor_SetAnimSpeed(int actor, int speed);

void OvlFunc_945_200c7cc(int actor)
{
    switch (actor) {
    case 0x13:
        __MapActor_SetAnim(actor, 6);
        __MapActor_SetAnimSpeed(actor, 8);
        break;
    case 0x12:
    case 0x14:
        __MapActor_SetAnim(actor, 5);
        __MapActor_SetAnimSpeed(actor, 0x10);
        break;
    case 0x16:
    case 0x17:
        __MapActor_SetAnim(actor, 5);
        __MapActor_SetAnimSpeed(actor, 0x14);
        break;
    case 0x18:
        __MapActor_SetAnim(actor, 0xa);
        __MapActor_SetAnimSpeed(actor, 8);
        break;
    case 0x15:
    case 0x19:
        __MapActor_SetAnim(actor, 5);
        __MapActor_SetAnimSpeed(actor, 4);
        break;
    case 0x1a:
        __MapActor_SetAnim(actor, 9);
        __MapActor_SetAnimSpeed(actor, 4);
        break;
    }
}
