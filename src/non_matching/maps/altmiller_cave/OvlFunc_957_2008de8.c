extern void __vec3_translate(int dist, int angle, int *vec);
extern void __Actor_SetAnim(struct Actor *actor, int anim);
extern void __Actor_SetSpriteFlags(struct Actor *actor, int flags);

void OvlFunc_957_2008de8(void)
{
    struct Actor *a;
    u8 *p_unk55;
    u8 saved;
    int pos[3];
    int *p = pos;

    a = (struct Actor *)__MapActor_GetActor(*(int *)((u32)&gState + 0x1f4));
    p_unk55 = &a->__unk55;
    saved = *p_unk55;
    p[0] = a->pos.x;
    p[1] = a->pos.y;
    p[2] = a->pos.z;
    __vec3_translate(0x200000, a->facing & 0xf000, p);
    if (__TestCollision(a, p) == 0) {
        API_CutsceneStart();
        __Actor_SetAnim(a, 6);
        API_WaitFrames(6);
        API_PlaySound(0x98);
        __Actor_SetAnim(a, 7);
        a->speed = 0x30000;
        a->accel = 0x20000;
        a->motion.y = 0x40000;
        *p_unk55 &= 0x7e;
        __Actor_SetSpriteFlags(a, 0);
        API_MapActor_TravelToWait(0, *(short *)((char *)p + 2), *(short *)((char *)p + 10));
        __Actor_SetAnim(a, 6);
        __Actor_SetSpriteFlags(a, 1);
        *p_unk55 = saved;
        API_CutsceneEnd();
    }
}
