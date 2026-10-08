extern void __vec3_translate(int dist, int angle, int *vec);
extern void __Actor_SetAnim(struct Actor *actor, int anim);
extern void __Actor_SetSpriteFlags(struct Actor *actor, int flags);

void OvlFunc_957_2008de8(void)
{
    struct Actor *a;
    unsigned char saved;
    int pos[3];

    a = (struct Actor *)__MapActor_GetActor(*(int *)(gState._bytes + 0x1f4));
    saved = a->__unk55;
    pos[0] = a->pos.x;
    pos[1] = a->pos.y;
    pos[2] = a->pos.z;
    __vec3_translate(0x200000, a->facing & 0xf000, pos);
    if (__TestCollision(a, pos) == 0) {
        API_CutsceneStart();
        __Actor_SetAnim(a, 6);
        API_WaitFrames(6);
        API_PlaySound(0x98);
        __Actor_SetAnim(a, 7);
        a->speed = 0x30000;
        a->accel = 0x20000;
        a->motion.y = 0x40000;
        a->__unk55 &= 0x7e;
        __Actor_SetSpriteFlags(a, 0);
        API_MapActor_TravelToWait(0, ((short *)pos)[1], ((short *)pos)[5]);
        __Actor_SetAnim(a, 6);
        __Actor_SetSpriteFlags(a, 1);
        a->__unk55 = saved;
        API_CutsceneEnd();
    }
}
