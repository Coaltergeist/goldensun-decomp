typedef struct PulsingActor {
    unsigned char padding00[0x18];
    int scaleX;
    int scaleY;
    unsigned char padding20[0x44];
    short timer;
} PulsingActor;

extern unsigned int __Random(void);
extern unsigned int _umodsi3_RAM(unsigned int value, unsigned int divisor);

unsigned int OvlFunc_969_2008314(PulsingActor *actor)
{
    short *timer = &actor->timer;

    switch (*timer) {
        case 6:
            actor->scaleX -= 0x2000;
            actor->scaleY += 0x1000;
            break;
        case 4:
            actor->scaleX += 0x1000;
            actor->scaleY -= 0x800;
            break;
        case 2:
            actor->scaleX += 0x800;
            actor->scaleY -= 0x400;
            break;
        case 0:
            actor->scaleX += 0x800;
            actor->scaleY -= 0x400;
            *timer = _umodsi3_RAM(__Random(), 80) + 80;
            break;
    }

    asm volatile("" ::: "memory");
    --*timer;
    return 1;
}
