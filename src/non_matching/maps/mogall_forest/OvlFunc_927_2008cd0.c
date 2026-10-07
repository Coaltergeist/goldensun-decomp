extern void __Actor_SetAnim(void *, int);
extern void __WaitFrames(int);
extern void __PlaySound(int);
extern void __Actor_SetSpriteFlags(void *, int);
extern void __MapActor_TravelToWait(int, int, int);

void *OvlFunc_927_2008cd0(unsigned int *arr)
{
    struct Actor *actor;
    u8 saved;

    actor = (struct Actor *)__MapActor_GetActor(0);
    saved = actor->__unk55;
    if (!__TestCollision(actor, (int *)arr)) {
        __CutsceneStart();
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim(actor, 7);
        actor->speed = 0xc0 << 10;
        actor->accel = 0x80 << 10;
        actor->motion.y = 0x80 << 11;
        actor->__unk55 &= 0x7e;
        __Actor_SetSpriteFlags(actor, 0);
        __MapActor_TravelToWait(0, ((short *)arr)[1], ((short *)arr)[5]);
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        actor->__unk55 = saved;
        __CutsceneEnd();
        return (void *)1;
    }
    return 0;
}