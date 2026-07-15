typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

typedef struct SpriteSlot {
    int sprite;
    unsigned char pad4[0x3c];
    int value40;
} SpriteSlot;

typedef struct Pair { int a; int b; } Pair;
typedef struct Vector4 { int x; int y; int z; int w; } Vector4;

extern unsigned char *iwram_3001f2c;
extern int _GetPartySize(void);
extern void _UpdateSprite(int sprite, Vector4 *vector, Pair *pair, int scale);

void Func_80a19a0(void)
{
    unsigned char *state;
    s16 *positions;
    SpriteSlot *slots;
    Pair pair;
    Vector4 vector;
    Vector4 *vectorPtr;
    register Pair *pairPtr asm("r8");
    int i;
    register unsigned int partySize asm("r10");

    state = iwram_3001f2c;
    partySize = (u16)_GetPartySize();
    i = 0;
    if (i < (int)partySize) {
        pairPtr = &pair;
        positions = (s16 *)(state + 0x134);
        vectorPtr = &vector;
        slots = (SpriteSlot *)((unsigned char *)positions - 0x20);
        do {
            int sprite = slots->sprite;
            int yBase = 0x1e20000 - (positions[8] << 16);
            if (sprite != 0) {
                *(signed char *)(sprite + 9) &= ~0xc;
                pair.a = slots->value40;
                pairPtr->b = slots->value40;
                {
                    int xVal = positions[0] << 16;
                    asm volatile("" : : "r"(xVal) : "memory");
                    vectorPtr->y = yBase;
                    asm volatile("" : : : "memory");
                    vectorPtr->x = xVal;
                }
                vectorPtr->z = (positions[8] << 16) + yBase;
                vectorPtr->w = 0;
                _UpdateSprite(sprite, vectorPtr, pairPtr, 0x4000);
            }
            i++;
            positions++;
            slots = (SpriteSlot *)((int *)slots + 1);
        } while (i < (int)partySize);
    }
}
