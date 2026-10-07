extern void __Actor_SetAnim(struct Actor *, int);
extern void __Actor_WaitMovement(struct Actor *);

void OvlFunc_955_2008310(int arg0, int arg1, int arg2)
{
    struct Actor *actor1;
    struct Actor *actor2;
    unsigned int r3;

    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    actor1 = __MapActor_GetActor(*(int *)r3);
    actor2 = __MapActor_GetActor(arg0);

    API_CutsceneStart();

    actor1->speed = 0x80 << 9;
    actor1->accel = 0x80 << 8;
    API_Actor_TravelTo(actor1, ((actor1->pos.x + (arg1 << 16)) & 0xfff00000) + (0x80 << 12), actor1->pos.y, ((actor1->pos.z + (arg2 << 16)) & 0xfff00000) + (0x80 << 12));
    __Actor_SetAnim(actor1, 0x1b);

    actor2->speed = 0x80 << 9;
    actor2->accel = 0x80 << 8;
    API_Actor_TravelTo(actor2, ((actor2->pos.x + (arg1 << 16)) & 0xfff00000) + (0x80 << 12), actor2->pos.y, ((actor2->pos.z + (arg2 << 16)) & 0xfff00000) + (0x80 << 12));

    if (arg1 < 0 || arg2 < 0) {
        __Actor_SetAnim(actor2, 4);
    } else {
        __Actor_SetAnim(actor2, 3);
    }

    API_PlaySound(0xe2);
    __Actor_WaitMovement(actor1);
    API_PlaySound(0x90 << 1);
    __Actor_SetAnim(actor2, 2);

    API_CutsceneEnd();
}
