extern void Sprite_SetAnim(unsigned char *sprite, unsigned int animation);
extern void Sprite_SetAnimSpeed(unsigned char *sprite, unsigned int speed);

void Actor_SetAnimAndSpeed(unsigned char *actor, unsigned int animation,
                           unsigned int speed)
{
    if (actor != 0) {
        unsigned int kind = actor[0x54] & 0xf;

        switch (kind) {
        case 1: {
            register unsigned int animation_arg asm("r1") = animation;
            register unsigned char *sprite_arg asm("r0");

            __asm__ volatile ("" : "+r" (animation_arg));
            sprite_arg = *(unsigned char **)(actor + 0x50);
            Sprite_SetAnim(sprite_arg, animation_arg);
            Sprite_SetAnimSpeed(*(unsigned char **)(actor + 0x50), speed);
            break;
        }
        case 2: {
            unsigned char **sprites = *(unsigned char ***)(actor + 0x50);
            int i = 3;

            do {
                unsigned char *sprite = *sprites++;

                if (sprite != 0) {
                    register unsigned int animation_arg asm("r1") = animation;
                    register unsigned char *sprite_arg asm("r0");

                    __asm__ volatile ("" : "+r" (animation_arg));
                    sprite_arg = sprite;
                    Sprite_SetAnim(sprite_arg, animation_arg);
                    Sprite_SetAnimSpeed(sprite, speed);
                }
                i--;
            } while (i >= 0);
            break;
        }
        }
    }
}
