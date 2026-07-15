typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 iwram_3001f2c[];
extern void *SpriteTemplates[] asm(".Laf304");
extern void _DeleteSprite(void *sprite);
extern void *_CreateSprite(void *template);
extern void _Sprite_SetAnim(void *sprite, s32 animation);
extern void StartTask(void *task, s32 delay);
extern void Func_80ad35c(void);

void Func_80ad274(void)
{
    u8 *state;
    void **sprites;
    u16 *anim1;
    s32 i;
    s32 j;
    s32 off;

    state = *(u8 **)iwram_3001f2c;
    {
    void *zero = 0;
    off = 0x224;
    for (i = 3; i >= 0; i--) {
        if (*(void **)(off + (u32)state) != 0) {
            _DeleteSprite(*(void **)(off + (u32)state));
            *(void **)(off + (u32)state) = zero;
        }
        off += 4;
    }
    }

    {
    u8 *templates = (u8 *)SpriteTemplates;
    void *sprite;
    anim1 = (u16 *)(state + 0x234);
    sprites = (void **)(state + 0x224);
    j = 0;
    for (i = 3; i >= 0; i--) {
        sprite = _CreateSprite(*(void **)(j + (u32)templates));
        if (sprite != 0) {
            _Sprite_SetAnim(sprite, 2);
        }
        *sprites++ = sprite;
        *anim1 = 0x10;
        asm volatile("" ::: "memory");
        anim1[4] = 0x20;
        j += 4;
        anim1++;
    }
    }

    {
    s32 delay = 0xc8 << 4;
    StartTask(&Func_80ad35c, delay);
    }
}
