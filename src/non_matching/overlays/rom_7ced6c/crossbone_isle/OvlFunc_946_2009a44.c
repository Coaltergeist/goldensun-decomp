extern void __vec3_translate(int, int, void *);
extern void __Actor_SetAnim(void *, int);
extern void __Actor_SetSpriteFlags(void *, int);
extern void __MapActor_TravelToWait(int, int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __WaitFrames(int);
extern void __PlaySound(int);

int OvlFunc_946_2009a44(void *arg0, unsigned int *arg1)
{
    struct Actor *actor = (struct Actor *)arg0;
    unsigned char unk55;
    int pos[3];

    unk55 = actor->__unk55;
    pos[0] = (actor->pos.x & 0xfff00000) + 0x80000;
    pos[1] = actor->pos.y;
    pos[2] = (actor->pos.z & 0xfff00000) + 0x80000;
    __vec3_translate(0x200000, (actor->facing + 0x2000) & 0xc000, pos);
    if (__TestCollision(actor, pos) == 0) {
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
        __MapActor_TravelToWait(0, (short)(pos[0] >> 16), (short)(pos[2] >> 16));
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        actor->__unk55 = unk55;
        __CutsceneEnd();
        return 1;
    }
    return 0;
}
