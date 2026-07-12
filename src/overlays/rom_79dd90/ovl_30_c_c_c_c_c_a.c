typedef struct FloatingItemActor {
    unsigned char padding00[8];
    int x;
    int y;
    unsigned char padding10[0x20];
    int phase;
    unsigned char padding34[4];
    int baseX;
    int baseY;
    unsigned char padding40[0x10];
    short *spriteData;
} FloatingItemActor;

extern int __sin(int angle);
extern int __cos(int angle);
extern unsigned int __Random(void);

int OvlFunc_910_200890c(FloatingItemActor *actor)
{
    short *spriteData;
    int verticalOffset;
    int spriteOffset;
    unsigned int randomA;
    unsigned int randomB;

    spriteData = actor->spriteData;
    verticalOffset = __sin(actor->phase) << 1;
    if (verticalOffset > 0)
        verticalOffset = -verticalOffset;

    actor->x = actor->baseX + (__cos(actor->phase) << 1);
    actor->y = actor->baseY + verticalOffset;
    spriteOffset = __cos(actor->phase + 0x8000);
    spriteData[15] = spriteOffset / 8;

    randomA = __Random();
    randomB = __Random();
    actor->phase += ((randomA << 9) >> 16) + ((randomB << 9) >> 16) + 0x400;
    return 0;
}
asm(".align 2, 0\n.size OvlFunc_910_200890c, . - OvlFunc_910_200890c");
