extern void *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern void __UploadSpriteGFX(int, int, void *);
extern void __gfree(int);

void OvlFunc_883_200db48(unsigned int arg0)
{
    unsigned char *actor;
    unsigned char *sprite;
    unsigned char *buf;

    actor = __MapActor_GetActor(arg0);
    sprite = *(unsigned char **)(actor + 0x50);
    sprite[9] = ((sprite[9] & ~0xc) | 4) & 0xf;
    sprite[5] &= ~0x20;
    sprite[0x27] = 0;
    __Actor_SetSpriteFlags(actor, 0);
    actor[0x5c] = 0;
    actor[0x55] = 0;
    if (__GetFlag(0x109) == 0) {
        *(int *)(actor + 0xc) += 0x80 << 14;
    }
    actor[0x23] &= 0xfe;
    actor[0x61] = 1;
    buf = __galloc_iwram(0x11, 0xc1 << 3);
    __LoadItemIcon(0xb5);
    __UploadSpriteGFX(sprite[0x1c], 0x80, buf + (0x80 << 3));
    __gfree(0x11);
    *(int *)(actor + 0x38) = *(int *)(actor + 8);
    *(int *)(actor + 0x30) = 0;
    *(int *)(actor + 0x3c) = *(int *)(actor + 0xc);
    actor[0x5c] = 1;
    *(void **)(actor + 0x6c) = (void *)OvlFunc_883_200dae0;
    actor[0x56] = 0;
}
