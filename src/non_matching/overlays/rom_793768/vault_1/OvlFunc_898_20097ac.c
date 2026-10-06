extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern void *__MapActor_GetActor(int);
extern void *__CreateActor(int, int, int, int);
extern unsigned int __Random(void);
extern void __Actor_SetAnim(void *, int);
extern void __Actor_SetScript(void *, const void *);
extern void OvlFunc_898_2009754(void);
extern unsigned char gScript_898__0200a8c4[];
extern unsigned char gScript_898__0200a8dc[];

void OvlFunc_898_20097ac(int arg0)
{
    unsigned char *actor;
    unsigned char *new_actor;
    unsigned char *sprite;
    unsigned char *orig_sprite;
    int dx;
    int dz;

    actor = (unsigned char *)__MapActor_GetActor(0x13);
    if (actor == 0) {
        return;
    }

    dx = (((__Random() * 8 >> 16) - 4) << 16);
    dz = (((__Random() * 8 >> 16) - 4) << 16);
    new_actor = (unsigned char *)__CreateActor(0xac, *(int *)(actor + 8) + dx, *(int *)(actor + 0xc), *(int *)(actor + 0x10) + dz);
    if (new_actor == 0) {
        return;
    }

    sprite = *(unsigned char **)(new_actor + 0x50);
    if (__Random() & 1) {
        __Actor_SetAnim(new_actor, 3);
        __Actor_SetScript(new_actor, gScript_898__0200a8c4);
    } else {
        __Actor_SetAnim(new_actor, 2);
        __Actor_SetScript(new_actor, gScript_898__0200a8dc);
    }

    *(unsigned char *)(new_actor + 0x55) = 0;
    if (arg0 & 2) {
        arg0 &= 1;
        *(int *)(new_actor + 0x34) = (0x3332 * arg0 - 0x1999) * ((int)(_umodsi3_RAM(__Random(), 10)) + (arg0 ? 5 : 9));
        *(int *)(new_actor + 0x30) = 0x1999 * ((int)(_umodsi3_RAM(__Random(), 15)) - 7);
        *(short *)(new_actor + 0x64) = 0;
    } else {
        *(int *)(new_actor + 0x30) = (0x3332 * arg0 - 0x1999) * ((int)(_umodsi3_RAM(__Random(), 10)) + 8);
        *(int *)(new_actor + 0x34) = 0x1999 * ((int)(_umodsi3_RAM(__Random(), 14)) + 1);
        *(short *)(new_actor + 0x64) = 1;
    }

    *(void **)(new_actor + 0x6c) = OvlFunc_898_2009754;
    sprite[0x26] = 0;
    orig_sprite = *(unsigned char **)(actor + 0x50);
    sprite[9] = (orig_sprite[9] & 0xc) | (sprite[9] & ~0xc);
}
