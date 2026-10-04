extern void __Actor_SetAnim(void *, int);
extern void __Actor_WaitMovement(void *);

void OvlFunc_946_2009774(int param_1, int param_2, int param_3)
{
    unsigned int r2;
    struct Actor *actorA;
    struct Actor *actorB;

    r2 = 0xfa;
    r2 <<= 1;
    actorA = (struct Actor *)__MapActor_GetActor(*(int *)((char *)&gState + r2));
    actorB = (struct Actor *)__MapActor_GetActor(param_1);
    __CutsceneStart();

    actorA->speed = 0x10000;
    actorA->accel = 0x8000;
    __Actor_TravelTo(actorA,
                     ((actorA->pos.x + (param_2 << 16)) & 0xfff00000) + 0x80000,
                     actorA->pos.y,
                     ((actorA->pos.z + (param_3 << 16)) & 0xfff00000) + 0x80000);
    __Actor_SetAnim(actorA, 0x1b);

    actorB->speed = 0x10000;
    actorB->accel = 0x8000;
    __Actor_TravelTo(actorB,
                     ((actorB->pos.x + (param_2 << 16)) & 0xfff00000) + 0x80000,
                     actorB->pos.y,
                     ((actorB->pos.z + (param_3 << 16)) & 0xfff00000) + 0x80000);

    if (param_2 >= 0 && param_3 >= 0) {
        __Actor_SetAnim(actorB, 3);
    } else {
        __Actor_SetAnim(actorB, 4);
    }

    __PlaySound(0xe2);
    __Actor_WaitMovement(actorA);
    __PlaySound(0x120);
    __CutsceneEnd();
}
