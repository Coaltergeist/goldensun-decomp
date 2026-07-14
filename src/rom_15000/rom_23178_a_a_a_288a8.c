typedef signed short s16;
typedef unsigned short u16;
typedef unsigned char u8;

extern u8 *iwram_3001f38;
extern void *CreateUIBox(int x, int y, int width, int height, int style);

void Func_80288a8(int x, int y, int width, int value)
{
    u8 *state = iwram_3001f38;
    int i;

    *(u16 *)(state + 0x90) = width + 2;
    *(u16 *)(state + 0x92) = value;
    *(u16 *)(state + 0x94) = y;

    for (i = 0; i < *(s16 *)(state + 0x8e); i++) {
        u8 *entry = state + i * 0x14;
        *(u16 *)(entry + 0xe) = y << 3;
        *(u16 *)(entry + 0xc) = x << 3;
        x += 3;
    }

    *(void **)(state + 0x78) =
        CreateUIBox(x, y, *(s16 *)(state + 0x90), 3, 2);
}
