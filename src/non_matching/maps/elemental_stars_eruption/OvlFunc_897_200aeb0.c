extern unsigned char *iwram_3001f30;
extern unsigned short gSpriteSlots[][2];
extern void __Sprite_SetAnim(void *, int);
extern void __Func_8003f3c(int);
extern void OvlFunc_897_200ae5c(void);

void OvlFunc_897_200aeb0(unsigned int arg0)
{
    unsigned char *actors[2];
    unsigned char *act;
    unsigned char *sprite;
    unsigned char *f30;
    unsigned char *r6;
    unsigned char *other;
    unsigned char *other_sprite;
    int i;

    r6 = (unsigned char *)arg0;
    f30 = iwram_3001f30;
    __PlaySound(0x92 << 1);

    for (i = 0; i <= 1; i++) {
        act = (unsigned char *)__CreateActor(0x1a, *(int *)(r6 + 8), *(int *)(r6 + 0xc), *(int *)(r6 + 0x10));
        actors[i] = act;
        if (act != 0) {
            *(int *)(act + 0x14) = *(int *)(r6 + 0x14);
            sprite = *(unsigned char **)(act + 0x50);
            act[0x55] = 0;
            *(short *)(act + 0x64) = 0;
            *(unsigned char **)(act + 0x68) = r6;
            if (sprite != 0) {
                __Sprite_SetAnim(sprite, 0);
                sprite[0x26] = 0;
                __Func_8003f3c(sprite[0x1c]);
                sprite[0x1c] = *(unsigned short *)(f30 + 0x46);
                sprite[0x1d] |= 1;
                *(unsigned short *)(sprite + 8) = (*(unsigned short *)(sprite + 8) & ~0x3ff) | ((gSpriteSlots[sprite[0x1c]][1] >> 5) & 0x3ff);
                sprite[5] &= ~0x20;
                sprite[5] = (sprite[5] & 0x3f) | 0x40;
                sprite[7] = (sprite[7] & 0x3f) | 0x80;
                *(unsigned char *)(*(unsigned char **)(sprite + 0x28) + 0x16) = 0;
            }
        }
    }

    *(void (**)(void))(actors[0] + 0x6c) = OvlFunc_897_200ae5c;
    other = (unsigned char *)__MapActor_GetActor(0xf);
    sprite = *(unsigned char **)(actors[0] + 0x50);
    other_sprite = *(unsigned char **)(other + 0x50);
    sprite[9] = (sprite[9] & ~0xc) | (other_sprite[9] & 0xc);

    other = (unsigned char *)__MapActor_GetActor(0xf);
    sprite = *(unsigned char **)(actors[1] + 0x50);
    other_sprite = *(unsigned char **)(other + 0x50);
    sprite[9] = (sprite[9] & ~0xc) | (other_sprite[9] & 0xc);
    *(void (**)(unsigned char *))(actors[1] + 0x6c) = OvlFunc_897_200ae0c;
    actors[1][0x23] = 2;
}
