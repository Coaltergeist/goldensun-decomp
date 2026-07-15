typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 iwram_3001e8c;

void Func_801e260(s32 x, s32 y, u32 width, u32 height)
{
    u32 base;
    u8 flag;
    u16 *cursor;
    u32 row;

    base = iwram_3001e8c;
    cursor = (u16 *)((y * 0x20 + x) * 2 + base);
    flag = *(u8 *)(base + 0xea2);

    for (row = 0; row < height; row++) {
        u32 col;
        for (col = 0; col < width; col++) {
            u32 val = *cursor & 0x3ff;
            cursor++;
            if ((u32)(val - 0x80) < 0x80 ||
                (flag != 0 && val > 0x1ff && val <= 0x27f)) {
                u32 off = ((val & 0xff) ^ 0x80) + 0xda0;
                *(u8 *)(base + off) &= 0xfc;
            }
        }
        cursor = (u16 *)((u8 *)cursor + (0x20 - width) * 2);
    }
}
