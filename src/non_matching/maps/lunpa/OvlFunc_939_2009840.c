extern void *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern void __UploadSpriteGFX(int, int, void *);
extern void __gfree(int);

void OvlFunc_939_2009840(int actorId)
{
    unsigned char *actor;
    unsigned char *sprite;
    unsigned char *p5c;
    unsigned char *buf;
    int zero;
    int one;
    int val;
    int s5;

    actor = __MapActor_GetActor(actorId);
    sprite = *(unsigned char **)(actor + 0x50);

    val = sprite[9] & ~0xc;
    s5 = sprite[5];
    val |= 4;
    sprite[5] = s5 & ~0x20;
    sprite[9] = val & 0xf;

    zero = 0;
    sprite[0x27] = zero;

    __Actor_SetSpriteFlags(actor, 0);

    p5c = actor + 0x5c;
    *p5c = zero;
    actor[0x55] = zero;

    if (!__GetFlag(0x109)) {
        *(int *)(actor + 0xc) += 0x80 << 14;
    }

    actor[0x23] &= 0xfe;
    one = 1;
    actor[0x61] = one;

    buf = (unsigned char *)__galloc_iwram(0x11, 0xc1 << 3);
    __LoadItemIcon(0xb5);
    __UploadSpriteGFX(sprite[0x1c], 0x80, buf + (0x80 << 3));
    __gfree(0x11);

    *(int *)(actor + 0x38) = *(int *)(actor + 8);
    *(int *)(actor + 0x30) = zero;
    *(int *)(actor + 0x3c) = *(int *)(actor + 0xc);
    *p5c = one;
    *(int *)(actor + 0x6c) = (int)OvlFunc_939_20097d8;
    actor[0x56] = zero;
}
