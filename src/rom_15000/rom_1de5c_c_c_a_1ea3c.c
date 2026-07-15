typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct TextBox {
    u8 pad[12];
    u16 x;
    u16 y;
} TextBox;

typedef struct Msg {
    u16 marker;
    u16 fixedMarker;
    u16 digits[4];
    u16 term;
} Msg;

extern char *PrintNum(char *buffer, u32 value, u32 digits);
extern void Func_801de5c(u16 *text, void *tilemap, void *vram, u32 subpixel);
extern u32 iwram_3001e8c;

void Func_801ea3c(u32 value, TextBox *box, u32 x, u32 y, s32 sign)
{
    u32 tilemapBase;
    char numtext[16];
    Msg msg;
    char *digits;
    u16 *dst;
    s32 i;
    u32 offset;

    tilemapBase = iwram_3001e8c;
    digits = PrintNum(numtext, value, 4);
    if (sign == 0) {
        msg.marker = 0xf01d;
    } else {
        msg.marker = 0xf01f;
    }
    msg.fixedMarker = 0xf01e;
    {
        register u16 *base asm("r4") = (u16 *)&msg;
        dst = base + 2;
    }
    i = 4;
    do {
        i--;
        *dst = (u8)*digits;
        digits++;
        dst++;
    } while (i >= 0);
    msg.term = 0;
    offset = (((u32)box->y + (y >> 3) + 1) << 5) + ((u32)box->x + (x >> 3)) + 1;
    if (offset < 0x280) {
        s32 iVar2 = offset * 2;
        void *vram = (void *)(iVar2 + 0x6002000);
        Func_801de5c((u16 *)&msg, (void *)(iVar2 + tilemapBase), vram, x & 7);
    }
}
