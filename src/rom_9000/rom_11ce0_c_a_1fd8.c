typedef unsigned char u8;
typedef unsigned int u32;

typedef struct {
    unsigned char unused[2];
    unsigned char tile;
    unsigned char object;
} Tile;

typedef struct {
    unsigned char active;
    unsigned char unused[3];
} MapObject;

extern u8 *iwram_3001e70;
extern Tile gBuffer[];
extern MapObject ewram_202c000[];

unsigned int Func_8011fd8(u32 map, int x, int y)
{
    register u8 **stateSlot asm("r3") = &iwram_3001e70;
    register u8 *state asm("r5");
    register int yShifted asm("r4");
    register u32 mapReg asm("r6");
    register Tile *base asm("r0");
    int xIdx;
    int yIdx;
    int idx;

    asm volatile("" : "+r"(stateSlot));
    state = *stateSlot;
    asm volatile("" : "+r"(state));
    yShifted = y;
    asm volatile("" : "+r"(yShifted));
    mapReg = map;
    asm volatile("" : "+r"(mapReg));
    x >>= 16;
    yShifted >>= 16;
    asm volatile("" : "+r"(x), "+r"(yShifted));
    base = gBuffer;
    asm volatile("" : "+r"(base));
    if (state != 0) {
        unsigned int t = (mapReg & 3) * 3;
        unsigned int c = 0x98;
        unsigned int slot;

        t <<= 4;
        c <<= 1;
        slot = t + c;
        base = *(Tile **)((u8 *)state + slot);
    }
    if (x < 0)
        x += 0xf;
    {
        register int yForDiv asm("r2") = yShifted;

        asm volatile("" : "+r"(yForDiv));
        xIdx = x >> 4;
        yIdx = yForDiv / 16;
    }
    idx = xIdx + (yIdx << 7);
    base += idx;
    {
        MapObject *entry = (MapObject *)((u8 *)ewram_202c000 + (base->object << 2));
        asm volatile("" : "+r"(entry));
        return entry->active & 0xf;
    }
}
