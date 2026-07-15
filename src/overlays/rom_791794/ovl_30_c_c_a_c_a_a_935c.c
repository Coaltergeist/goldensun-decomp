typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern s32 L3b68 asm(".L3b68");
extern s32 L3b6c asm(".L3b6c");
extern s32 L3b70 asm(".L3b70");
extern u32 __Random(void);

void OvlFunc_897_200935c(void)
{
    u32 mode;
    u32 rnd;
    s32 *dst;

    if (L3b70 != 0) {
        L3b70 -= 1;
        return;
    }
    if (L3b6c != 0) {
        L3b6c -= 1;
    } else {
        L3b6c = (__Random() << 2) >> 16;
    }
    mode = L3b6c;
    switch (mode) {
    case 3:
        L3b68 = mode;
        dst = &L3b70;
        rnd = __Random();
        *dst = ((rnd * 0x14) >> 16) + 0x28;
        break;
    case 2:
        L3b68 = 0xf;
        dst = &L3b70;
        rnd = __Random();
        *dst = ((rnd * 0x28) >> 16) + 0x50;
        break;
    case 1:
        L3b68 = 0x3f;
        dst = &L3b70;
        rnd = __Random();
        *dst = ((rnd * 0x50) >> 16) + 0xa0;
        break;
    default:
        L3b68 = 0x7f;
        dst = &L3b70;
        rnd = __Random();
        *dst = ((rnd * 0xa0) >> 16) + 0x140;
        break;
    }
}
