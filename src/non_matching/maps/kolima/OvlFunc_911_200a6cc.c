extern unsigned char Lm911_369c[] __asm__(".Lm911_369c");
extern ActorCmd gScript_911__0200b5ec[];
extern void __PlaySound(int);
extern void __Actor_SetScript(struct Actor *, ActorCmd *);

u32 OvlFunc_911_200a6cc(struct Actor *actor)
{
    int z_min;

    if (*(int *)Lm911_369c != 0) {
        if ((u32)(actor->pos.x - 0x3b0001) <= 0x51fffe && actor->pos.z > 0xd30000 && actor->pos.z <= 0x100ffff) {
            goto match;
        }
        if ((u32)(actor->pos.x - 0x450001) > 0x34fffe) {
            return 0;
        }
        z_min = 0xc2;
    } else {
        if ((u32)(actor->pos.x - 0x3b0001) <= 0x33fffe && actor->pos.z > 0xc20000 && actor->pos.z < 0xe60000) {
            goto match;
        }
        if ((u32)(actor->pos.x - 0x6f0001) <= 0x1dfffe && actor->pos.z > 0xd80000 && actor->pos.z < 0xfa0000) {
            goto match;
        }
        if ((u32)(actor->pos.x - 0x4e0001) > 0x2bfffe) {
            return 0;
        }
        z_min = 0xf1;
    }

    if (actor->pos.z > (z_min << 16) && actor->pos.z <= 0x114ffff) {
match:
        __PlaySound(0x6a);
        __Actor_SetScript(actor, gScript_911__0200b5ec);
        *(int *)L3698 = 1;
    }
    return 0;
}
