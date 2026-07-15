typedef signed short s16;

typedef struct SpriteSlot {
    int sprite;
    unsigned char pad4[0x3c];
    int value40;
} SpriteSlot;

typedef struct Pair { int a; int b; } Pair;
typedef struct Vector4 { int x; int y; int z; int w; } Vector4;

extern unsigned char *iwram_3001f2c;
extern void _UpdateSprite(int sprite, Vector4 *vector, Pair *pair, int scale);

void Func_801ff58(void)
{
    register int index asm("r8");
    register int scale asm("r10");
    unsigned char *state;
    s16 *positions;
    Pair pair;
    Vector4 vector;
    Pair *pairPtr;
    Vector4 *vectorPtr;
    register SpriteSlot *slots asm("r5");

    state = iwram_3001f2c;
    index = 0;
    scale = 0x1f40000;
    positions = (s16 *)(state + 0x134);
    pairPtr = &pair;
    vectorPtr = &vector;
    slots = (SpriteSlot *)((unsigned char *)positions - 0x20);

    do {
        int sprite = slots->sprite;
        if (sprite != 0) {
            pair.a = slots->value40;
            pairPtr->b = slots->value40;
            vectorPtr->x = positions[0] << 16;
            vectorPtr->y = scale;
            vectorPtr->z = (positions[8] << 16) + scale;
            vectorPtr->w = 0;
            _UpdateSprite(sprite, vectorPtr, pairPtr, 0x4000);
        }
        index++;
        positions++;
        slots = (SpriteSlot *)((int *)slots + 1);
    } while (index <= 3);
}
