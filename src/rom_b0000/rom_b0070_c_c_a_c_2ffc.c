typedef signed char s8;
typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *iwram_3001f2c;
extern void _Func_809b804(u8 *entry);
extern u32 Random(void);
extern void _Sprite_SetColorswap(u32 sprite, u32 colorswap);

void Func_80b2ffc(void)
{
    register u8 *base asm("r7") = iwram_3001f2c;
    register u8 *entry asm("r5");
    register int count asm("r6");
    register int offset asm("r2") = 0xec;

    offset <<= 2;
    entry = base + offset;
    asm volatile ("" : "+r"(entry));
    count = 0x17;
loop:
    _Func_809b804(entry);
    count--;
    entry += 0x48;
    if (count >= 0)
        goto loop;

    offset = 0x3ab;
    {
        register u8 *field asm("r3") = base + offset;
        register int sprite_index asm("r5") = 0;

        sprite_index = *(s8 *)(field + sprite_index);
        if (sprite_index != -1) {
            register u32 random asm("r0") = Random();
            register u32 colorswap asm("r1");
            register int sprite_offset asm("r3");

            colorswap = random << 3;
            sprite_offset = sprite_index << 2;
            offset = 0x8a;
            offset <<= 1;
            colorswap -= random;
            sprite_offset += offset;
            colorswap >>= 16;
            _Sprite_SetColorswap(*(u32 *)(base + sprite_offset), colorswap);
        }
    }
}
