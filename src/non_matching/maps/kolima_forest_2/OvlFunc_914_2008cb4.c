extern void __Actor_SetSpriteFlags(void *, int);
extern unsigned char *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern void __UploadSpriteGFX(int, int, void *);
extern void __gfree(int);

void OvlFunc_914_2008cb4(int x)
{
    unsigned char *actor;
    unsigned char *spr;
    unsigned char *buf;
    unsigned char *state;
    int t;
    int zero;
    int one;

    actor = __MapActor_GetActor(x);
    spr = *(unsigned char **)(actor + 0x50);
    t = (spr[9] & ~0xc) | 4;
    spr[5] &= ~0x20;
    spr[9] = t & 0xf;
    zero = 0;
    spr[0x27] = zero;
    __Actor_SetSpriteFlags(actor, 0);
    state = actor + 0x5c;
    *state = zero;
    actor[0x55] = zero;
    if (__GetFlag(0x109) == 0)
        *(int *)(actor + 0xc) += 0x200000;
    actor[0x23] &= 0xfe;
    one = 1;
    actor[0x61] = one;
    buf = __galloc_iwram(0x11, 0x608);
    __LoadItemIcon(0xb5);
    __UploadSpriteGFX(spr[0x1c], 0x80, buf + 0x400);
    __gfree(0x11);
    *(int *)(actor + 0x38) = *(int *)(actor + 8);
    *(int *)(actor + 0x30) = zero;
    *(int *)(actor + 0x3c) = *(int *)(actor + 0xc);
    *state = one;
    *(void **)(actor + 0x6c) = (void *)OvlFunc_914_2008c4c;
    actor[0x56] = zero;
}
