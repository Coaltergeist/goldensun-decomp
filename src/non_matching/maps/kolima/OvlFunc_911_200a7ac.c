extern int Lm911_3694 __asm__(".Lm911_3694");
extern int Lm911_3690 __asm__(".Lm911_3690");
extern int Lm911_368c __asm__(".Lm911_368c");
extern vec3_t **iwram_3001e70;
extern ActorCmd gScript_911__0200b610[];

void OvlFunc_911_200a7ac(void)
{
    int __Random(void);
    void __PlaySound(int);
    struct Actor *__CreateActor(int, int, int, int);
    void __Actor_SetAnim(struct Actor *, int);
    void __Actor_SetScript(struct Actor *, ActorCmd *);

    struct Actor *actor = 0;
    struct Sprite *sprite;
    vec3_t *pos;
    int x;
    int z;

    switch (Lm911_3694) {
    case 1:
        if (Lm911_3690 <= 0x3a97) {
            Lm911_3690 += 0x32;
        }
        if (Lm911_368c > 0xf0 << 14) {
            Lm911_368c -= 0x4000;
        }
        break;
    case 2:
        if (Lm911_3690 <= 0x752f) {
            Lm911_3690 += 0x32;
        }
        if (Lm911_368c > 0xc0 << 13) {
            Lm911_368c -= 0x4000;
        }
        break;
    case 3:
        if (Lm911_368c < -0x800000) {
            Lm911_3694 = 0;
        } else {
            Lm911_3690 += 0x32;
            Lm911_368c -= 0x4000;
        }
        break;
    }

    if ((iwram_3001e40 & 7) != 0) {
        return;
    }

    actor = __CreateActor(0x11d, 0, 0, 0);
    if (actor == 0) {
        return;
    }

    pos = *iwram_3001e70;
    if ((iwram_3001e40 & 0x3f) == 0) {
        __PlaySound(0xf6);
    }

    if (Lm911_3694 != 0) {
        x = pos->x + (((u32)(__Random() * Lm911_3690) >> 16) << 8) + Lm911_368c;
    } else {
        x = pos->x + (__Random() << 8) - 0x800000;
    }
    z = pos->z + (__Random() << 8) - 0x800000;

    actor->__unk55 = 0;
    actor->pos.y = 0xa0 << 16;
    sprite = actor->sprite;
    actor->scale.x = 0xe666;
    actor->scale.y = 0xe666;
    actor->pos.x = x;
    actor->pos.z = z;
    sprite->flags = 0;
    actor->flags &= 0xfe;
    *((unsigned char *)sprite + 9) = (*((unsigned char *)sprite + 9) & ~0xc) | 4;
    __Actor_SetAnim(actor, 1);
    __Actor_SetScript(actor, gScript_911__0200b610);
}
