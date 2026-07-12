extern void Sprite_SetAnimSpeed(unsigned int sprite, unsigned int speed);

void Actor_SetAnimSpeed(unsigned char *actor, unsigned int speed)
{
    unsigned int sprite;
    unsigned int *sprites;
    int i;

    if (actor == (unsigned char *)0)
        return;

    switch (*(unsigned char *)(actor + 0x54) & 0xf) {
    case 1:
        Sprite_SetAnimSpeed(*(unsigned int *)(actor + 0x50), speed);
        break;
    case 2:
        sprites = *(unsigned int **)(actor + 0x50);
        for (i = 3; i >= 0; i--) {
            sprite = *sprites++;
            if (sprite != 0)
                Sprite_SetAnimSpeed(sprite, speed);
        }
        break;
    }
}

asm(
    ".text\n"
    ".align 2, 0\n"
    ".size Actor_SetAnimSpeed, .-Actor_SetAnimSpeed\n");
