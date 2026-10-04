extern void OvlFunc_933_2009054(void);
extern unsigned char iwram_3001ebc[];
extern int __TestCollision(void *, int *);
extern void __Actor_SetAnim(void *, int);
extern void __Actor_WaitMovement(void *);

void OvlFunc_933_20092fc(void) {
    char *obj;
    int actorId;
    char *actor;
    int vec[3];
    int result;
    unsigned int bits;
    struct EffectData933 data;
    struct EffectData933 *dataPtr;
    int x;
    int y;

    OvlFunc_933_2009054();
    obj = *(char **)(*(char **)iwram_3001ebc + (0xf0 << 1));
    actorId = *(int *)((char *)&gState + (0xfa << 1));
    actor = (char *)__MapActor_GetActor(actorId);

    vec[0] = *(int *)(actor + 8);
    vec[1] = *(int *)(actor + 0xc);
    vec[2] = *(int *)(actor + 0x10) + (0xc0 << 9);
    result = __TestCollision(actor, vec);

    bits = iwram_3001e40 & 4;
    if (bits == 0) {
        dataPtr = &data;
        dataPtr->unk22 = (short)((((unsigned int)__Random() << 12) >> 16) + (0xf8 << 8));
        x = *(int *)(actor + 8) + (((__Random() * 12) >> 16) << 16) - 0x60000;
        y = ((__Random() * 5) >> 16) * 0x1999 + 0x7ffd;
        OvlFunc_common0_10c(x, *(int *)(actor + 0xc), *(int *)(actor + 0x10), 0,
                            bits, y, 0x800000, dataPtr);
    }

    if (result < 0) {
        API_MapActor_Surprise(actorId, 0x81 << 1);
        API_Actor_TravelTo(actor, *(int *)(actor + 8), *(int *)(actor + 0xc),
                           *(int *)(actor + 0x10) + (0x80 << 12));
        __Actor_SetAnim(actor, 7);
        __Actor_WaitMovement(actor);
        do {
            __WaitFrames(1);
        } while (*(int *)(actor + 0xc) != *(int *)(actor + 0x14));
        __Actor_SetAnim(actor, 6);
        __WaitFrames(3);
        return;
    }

    vec[0] = *(int *)(actor + 8);
    vec[1] = *(int *)(actor + 0xc);
    vec[2] = *(int *)(actor + 0x10) + (0x80 << 12);
    result = __TestCollision(actor, vec);
    if (result > 0) return;

    vec[0] = *(int *)(actor + 8) + 0x5b333;
    vec[1] = *(int *)(actor + 0xc);
    vec[2] = *(int *)(actor + 0x10) + 0x5b333;
    result = __TestCollision(actor, vec);
    if (result > 0) return;

    vec[0] = *(int *)(actor + 8) - 0x5b333;
    vec[1] = *(int *)(actor + 0xc);
    vec[2] = *(int *)(actor + 0x10) + 0x5b333;
    result = __TestCollision(actor, vec);
    if (result > 0) return;

    *(int *)(obj + 0x10) += (0xc0 << 9);
    *(int *)(actor + 0x10) += (0xc0 << 9);
}
