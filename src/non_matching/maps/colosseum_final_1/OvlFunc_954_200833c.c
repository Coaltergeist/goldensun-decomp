extern u8 gState[];
extern void __PlaySound(int);

void OvlFunc_954_200833c(int actorId, int arg1, int arg2)
{
    struct Actor *actor1;
    struct Actor *actor2;
    int x;
    int z;

    actor1 = (struct Actor *)__MapActor_GetActor(*(int *)(gState + 0x1f4));
    actor2 = (struct Actor *)__MapActor_GetActor(actorId);
    __CutsceneStart();

    x = ((actor1->pos.x + (arg1 << 16)) & 0xfff00000) + 0x80000;
    z = ((actor1->pos.z + (arg2 << 16)) & 0xfff00000) + 0x80000;
    actor1->speed = 0x10000;
    actor1->accel = 0x8000;
    __Actor_TravelTo(actor1, x, actor1->pos.y, z);
    __Actor_SetAnim(actor1, 0x1b);

    x = ((actor2->pos.x + (arg1 << 16)) & 0xfff00000) + 0x80000;
    z = ((actor2->pos.z + (arg2 << 16)) & 0xfff00000) + 0x80000;
    actor2->speed = 0x10000;
    actor2->accel = 0x8000;
    __Actor_TravelTo(actor2, x, actor2->pos.y, z);

    if (arg1 < 0 || arg2 < 0) {
        __Actor_SetAnim(actor2, 4);
    } else {
        __Actor_SetAnim(actor2, 3);
    }

    __PlaySound(0xe2);
    __Actor_WaitMovement(actor1);
    __Actor_SetAnim(actor2, 2);
    __PlaySound(0x120);
    __CutsceneEnd();
}
