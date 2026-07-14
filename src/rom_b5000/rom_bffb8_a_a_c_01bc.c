typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u32 *iwram_3001ef8;
extern u16 iwram_3001ad0[];
extern void Func_80c0cec(int, int, int, int);

void Func_80c01bc(void)
{
    u32 *counter = iwram_3001ef8;
    u32 value = *counter;
    u8 *object = *(u8 **)((u8 *)&iwram_3001ef8 - 0x78);
    int amount = 0x34 - value;
    register u32 old asm("r3");
    register u32 next asm("r2");

    if (amount > 0x20)
        amount = 0x20;
    if (amount < 0)
        amount = 0;
    iwram_3001ad0[1] = amount;

    if (value <= 0x50)
        *(u16 *)(object + 0x36) = (u16)(value * 0x168 + 0xaf80);

    old = *counter;
    asm volatile("" : "+r"(old));
    next = old + 1;
    asm volatile("" : "+r"(next));
    *counter = next;
    if (next <= 0x50)
        Func_80c0cec(0, 0, 0, 0xb4 - next);
    else
        Func_80c0cec(0, 0, 0, 100);
}
