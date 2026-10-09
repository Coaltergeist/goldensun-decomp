extern void __vec3_translate(fx32, int, vec3_t *);
extern int __TestCollision(struct Actor *, vec3_t *);
extern int OvlFunc_968_200832c(vec3_t *, struct Actor *);

int OvlFunc_968_2008cc8(void)
{
    struct Actor *actor;
    u8 saved_unk55;
    vec3_t pos;

    actor = (struct Actor *)__MapActor_GetActor(0);
    saved_unk55 = actor->__unk55;

    pos.x = (actor->pos.x & 0xfff00000) + 0x80000;
    pos.y = actor->pos.y;
    pos.z = (actor->pos.z & 0xfff00000) + 0x80000;

    __vec3_translate(0x100000, (actor->facing + 0x2000) & 0xc000, &pos);
    if (__TestCollision(actor, &pos) == 1) {
        return 0;
    }
    if (OvlFunc_968_200832c(&pos, actor) != 0) {
        return 0;
    }

    pos.x = (actor->pos.x & 0xfff00000) + 0x80000;
    pos.y = actor->pos.y;
    pos.z = (actor->pos.z & 0xfff00000) + 0x80000;

    __vec3_translate(0x200000, (actor->facing + 0x2000) & 0xc000, &pos);
    if (OvlFunc_968_200832c(&pos, actor) != 0) {
        return 0;
    }
    if (__TestCollision(actor, &pos) != 0) {
        return 0;
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
    __MapActor_TravelToWait(0, ((short *)&pos.x)[1], ((short *)&pos.z)[1]);
    __Actor_SetAnim(actor, 6);
    __Actor_SetSpriteFlags(actor, 1);
    actor->__unk55 = saved_unk55;
    __CutsceneEnd();

    return 1;
}
