typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 iwram_3001e40;
extern u32 gOvl_0200a91c asm(".L291c");
extern u32 gOvl_0200a920;
extern u32 gOvl_0200a924 asm(".L2924");

extern u32 _umodsi3_RAM(u32 value, u32 divisor);
extern s32 _divsi3_RAM(s32 value, s32 divisor);

void OvlFunc_923_2008d98(void)
{
    volatile u16 slot;
    s32 val;
    u32 i;
    u32 attr;
    u16 *dst;

    slot = 0;
    if (_umodsi3_RAM(iwram_3001e40, 5) == 0) {
        gOvl_0200a91c = (gOvl_0200a91c + 4) & 0x1f;
        i = 0;
        do {
            slot = *(u16 *)(0x5000000 + (0x6e - i) * 2) & 0x1f;
            val = slot;
            if (i < 3) {
                val -= _divsi3_RAM(val << 2, 10);
            }
            dst = (u16 *)(0x5000000 + (0x6f - i) * 2);
            attr = (gOvl_0200a924 << 10) | (gOvl_0200a920 << 5);
            *dst = val | attr;
            i++;
        } while (i <= 5);
        *(u16 *)0x50000d2 = gOvl_0200a91c | attr;
    }
}
