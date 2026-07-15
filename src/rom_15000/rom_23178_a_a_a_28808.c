typedef signed short s16;
typedef unsigned short u16;
typedef unsigned char u8;

extern u8 *iwram_3001f38;
extern void *CreateUIBox(int x, int y, int width, int height, int style);

void Func_8028808(int y, int width, int value)
{
    u8 *state = iwram_3001f38;
    int count;
    int x;
    int i;

    *(u16 *)(state + 0x90) = width + 2;
    *(u16 *)(state + 0x92) = value;
    *(u16 *)(state + 0x94) = y;

    count = *(s16 *)(state + 0x8e);
    x = 15 - (count * 3 + *(s16 *)(state + 0x90) * 2 / 3) / 2;

    for (i = 0; i < *(s16 *)(state + 0x8e); i++) {
        u8 *entry = state + i * 0x14;
        *(u16 *)(entry + 0xc) = x << 3;
        *(u16 *)(entry + 0xe) = y << 3;
        x += 3;
    }

    *(void **)(state + 0x78) = CreateUIBox(x, y, *(s16 *)(state + 0x90), 3, 2);
}
