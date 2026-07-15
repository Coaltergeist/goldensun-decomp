typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct Attr {
    u8 pad10[4];
    u8 low, high;
    unsigned short x : 9;
    unsigned short flags : 7;
    unsigned short tile : 10;
    unsigned short pal : 6;
} Attr;

typedef struct Sprite {
    u32 zero;
    u8 active, visible;
    u16 x, y;
    u8 padA[4];
    u8 icon, alpha;
    Attr attr;
} Sprite;

typedef struct PositionSource {
    u8 pad[12];
    u16 x, y;
} PositionSource;

extern Sprite *Func_8015e8c(void);
extern s32 AllocUploadSpriteGFX(u32 size);
extern int UploadSprite2(u8 icon, void *data);
extern void Func_8016584(PositionSource *source, Sprite *sprite);
extern u8 Palette313a4[] asm(".L313a4");
extern u8 Palette31424[] asm(".L31424");

void Func_8022a7c(int x, int y, int increasing)
{
    register void *ambient asm("r9");
    void *volatile ambientShadow;
    register int py asm("r10");
    register int pinc asm("r11");
    register int px asm("r8");
    asm volatile(
        "mov r3, sp\n\t"
        "mov r4, r9\n\t"
        "str r4, [r3]\n\t"
        "mov r8, %4\n\t"
        "mov sl, %5\n\t"
        "mov fp, %6"
        : "=m"(ambientShadow), "=r"(px), "=r"(py), "=r"(pinc)
        : "r"(x), "r"(y), "r"(increasing)
        : "r3", "r4");
    {
        register Sprite *sprite asm("r6") = Func_8015e8c();
        if (sprite != 0) {
            int gfx;
            PositionSource *source;
            int result;
            register Attr *attr asm("r7");

            sprite->visible = 1;
            sprite->active = 1;
            gfx = AllocUploadSpriteGFX(0x80);
            asm volatile(
                "movs r3, #0xf0\n\t"
                "strb r3, [%1, #0xf]\n\t"
                "movs r3, #0x78\n\t"
                "mov %0, %1\n\t"
                "strh r3, [%1, #6]\n\t"
                "strh r3, [%1, #8]"
                : "=r"(attr)
                : "r"(sprite)
                : "r3", "memory");
            {
                u32 word = 0x40000400;
                asm volatile(
                    "add %0, #0x10\n\t"
                    "movs r5, #0\n\t"
                    "strb %2, [%3, #0xe]\n\t"
                    "str %1, [%0, #4]\n\t"
                    "str r5, [%0, #8]"
                    : "+r"(attr)
                    : "r"(word), "r"(gfx), "r"(sprite)
                    : "r5", "memory");
            }

            source = *(PositionSource **)((u8 *)ambient - 4);
            {
                int shifted = source->x << 3;
                shifted += px;
                attr->x = shifted;
            }
            {
                int shifted = source->y << 3;
                shifted += py;
                attr->low = shifted;
            }

            result = UploadSprite2(sprite->icon, pinc ? Palette313a4 : Palette31424);
            attr->tile = result;

            source = *(PositionSource **)((u8 *)ambient - 4);
            Func_8016584(source, sprite);
        }
    }
}
