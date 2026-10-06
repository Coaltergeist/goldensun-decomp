extern void __vec3_translate(int, int, int *);
extern void __MapActor_TravelToWait(int, int, int);

int OvlFunc_964_2008cd0(unsigned int *target)
{
    struct Actor *actor;
    int pos[3];
    u8 unk55;

    actor = (struct Actor *)__MapActor_GetActor(0);
    unk55 = actor->__unk55;

    pos[0] = (actor->pos.x & 0xfff00000) + 0x80000;
    pos[1] = actor->pos.y;
    pos[2] = (actor->pos.z & 0xfff00000) + 0x80000;

    __vec3_translate(0x100000, (actor->facing + 0x2000) & 0xc000, pos);

    if (__TestCollision(actor, pos) == 1) {
        return 1;
    }
    if (__TestCollision(actor, (int *)target) != 0) {
        return 1;
    }

    __CutsceneStart();
    __Actor_SetAnim(actor, 6);
    __WaitFrames(6);
    __PlaySound(0x98);
    __Actor_SetAnim(actor, 7);
    actor->speed = 0x30000;
    actor->accel = 0x20000;
    actor->motion.y = 0x40000;
    actor->__unk55 &= 0x7e;
    __Actor_SetSpriteFlags(actor, 0);

    __MapActor_TravelToWait(0, (((int)target[0] >> 20) << 4) + 8, (((int)target[2] >> 20) << 4) + 8);

    __Actor_SetAnim(actor, 6);
    __Actor_SetSpriteFlags(actor, 1);
    __WaitFrames(6);
    actor->__unk55 = unk55;
    __CutsceneEnd();

    return 0;
}
