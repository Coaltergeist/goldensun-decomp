typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *iwram_3001e70;
extern u8 gBuffer[];

u8 Func_8012038(u32 map, int x, int y)
{
    register u8 **stateSlot asm("r3") = &iwram_3001e70;
    register u32 mapReg asm("r5");
    register u8 *state asm("r0");
    register int yReg asm("r4");
    register u8 *base asm("r2");
    register int index asm("r3");

    asm volatile("" : "+r"(stateSlot));
    mapReg = map;
    asm volatile("" : "+r"(mapReg));
    state = *stateSlot;
    asm volatile("" : "+r"(state));
    yReg = y;
    asm volatile("" : "+r"(yReg));
    x >>= 20;
    yReg >>= 20;
    asm volatile("" : "+r"(x), "+r"(yReg));
    base = gBuffer;
    asm volatile("" : "+r"(base));
    if (state != 0) {
        unsigned int slot = (mapReg & 3) * 0x30 + 0x130;

        asm volatile("" : "+r"(slot));
        base = *(u8 **)(state + slot);
    }
    index = (x + yReg * 0x80) * 4;
    asm volatile("" : "+r"(index));
    base += index;
    asm volatile("" : "+r"(base));
    return base[2];
}

void Func_8012078(u32 map, int x, int y, unsigned int value)
{
    register unsigned int valueReg asm("r6") = value;
    register u8 **stateSlot asm("r3") = &iwram_3001e70;
    register u32 mapReg asm("r5");
    register u8 *state asm("r0");
    register int yReg asm("r4");
    register int index asm("r3");

    asm volatile("" : "+r"(valueReg));
    asm volatile("" : "+r"(stateSlot));
    mapReg = map;
    asm volatile("" : "+r"(mapReg));
    state = *stateSlot;
    asm volatile("" : "+r"(state));
    yReg = y;
    asm volatile("" : "+r"(yReg));
    x >>= 20;
    yReg >>= 20;
    asm volatile("" : "+r"(x), "+r"(yReg));
    if (state != 0) {
        unsigned int slot = (mapReg & 3) * 0x30 + 0x130;
        u8 *base;

        asm volatile("" : "+r"(slot));
        base = *(u8 **)(state + slot);
        index = (x + yReg * 0x80) * 4;
        asm volatile("" : "+r"(index));
        base[index + 2] = valueReg;
    }
}
