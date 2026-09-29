static inline void API_Actor_SetSpriteFlags(void *actor, int flags) {
    extern void __Actor_SetSpriteFlags(void *, int);
    __Actor_SetSpriteFlags(actor, flags);
}

int OvlFunc_915_2008aac(int *arg0) {
    unsigned char *actor;
    unsigned char *r7;
    unsigned int r5;
    unsigned char r10;
    int coll;

    actor = __MapActor_GetActor(0);
    r7 = actor + 0x55;
    r10 = *r7;
    coll = __TestCollision(actor, arg0);
    if (coll == 0) {
        __CutsceneStart();
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim(actor, 7);
        *(int *)(actor + 0x30) = 0xc0 << 10;
        *(int *)(actor + 0x34) = 0x80 << 10;
        *(int *)(actor + 0x28) = 0x80 << 11;
        *r7 &= 0x7e;
        API_Actor_SetSpriteFlags(actor, 0);
        __MapActor_TravelToWait(0, ((short *)arg0)[1], ((short *)arg0)[5]);
        __Actor_SetAnim(actor, 6);
        API_Actor_SetSpriteFlags(actor, 1);
        *r7 = coll;
        __MapActor_SetAnim(10, 7);
        r5 = 0xffff0000;
        *(int *)(actor + 0xc) += r5;
        *(int *)(actor + 0x14) += r5;
        __WaitFrames(2);
        *(int *)(actor + 0xc) += r5;
        *(int *)(actor + 0x14) += r5;
        __WaitFrames(10);
        r5 = 0x80 << 9;
        *(int *)(actor + 0xc) += r5;
        *(int *)(actor + 0x14) += r5;
        __WaitFrames(4);
        *(int *)(actor + 0xc) += r5;
        *(int *)(actor + 0x14) += r5;
        *r7 = r10;
        __CutsceneEnd();
        return 1;
    }
    return 0;
}
