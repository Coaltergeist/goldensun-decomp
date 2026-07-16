typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001e8c;
extern s32 _GetFlag(s32 flag);
extern s32 GetPortrait(u32 character);
extern void LoadPortrait(s32 portrait, s32 mode, s32 *spriteSlot, s32 *uploadResult, s32 paletteBank, s32 allocSkip);
extern void *Func_801eadc(s32 slot, u32 flags, void *source, s32 xOffset, s32 yOffset);

void *Func_801ec6c(s32 icon, s32 mode, u32 side, void *source, s32 xOffset, s32 yOffset)
{
    u8 *state;
    s32 portrait;
    s32 slot;
    s32 uploaded;
    s32 paletteBank;
    void *sprite;

    state = iwram_3001e8c;
    if (_GetFlag(0x20) != 0) {
        if (icon == 0)
            icon = 0x12;
        if (icon == 1)
            icon = 0x13;
    }

    portrait = GetPortrait(icon);
    sprite = 0;
    if (portrait != -1) {
        if (side > 1) {
            side = 1;
            if (*(u16 *)(state + 0x12ee) != 0x3e7) {
                side = 0;
                if (*(u16 *)(state + 0x12ec) != 0x3e7)
                    return 0;
            }
        }
        paletteBank = side + 0xe;
        LoadPortrait(portrait, mode, &slot, &uploaded, paletteBank, 0);
        sprite = Func_801eadc(slot, 0x80000000, source, xOffset, yOffset);
        if (sprite != 0) {
            register s32 pb asm("r8") = paletteBank;
            asm volatile(
                "mov r2, r8\n\t"
                "lsl r1, r2, #4\n\t"
                "ldrb r2, [%0, #25]\n\t"
                "mov r3, #15\n\t"
                "and r3, r2\n\t"
                "orr r3, r1\n\t"
                "strb r3, [%0, #25]\n\t"
                "mov r3, #2\n\t"
                "strb r3, [%0, #4]\n\t"
                :
                : "r" (sprite), "r" (pb)
                : "r1", "r2", "r3", "memory");
        }
        {
            s32 idx = side * 2;
            s32 offA = idx + 0x12ec;
            register u8 *st asm("r7") = state;
            register s32 a asm("r2") = offA;
            register s32 pv asm("r5") = portrait;
            asm volatile("strh %0, [%1, %2]"
                         : : "r" (pv), "r" (st), "r" (a) : "memory");
            {
                s32 offB = idx + 0x12f0;
                register s32 b asm("r3") = offB;
                register s32 sv asm("r2") = slot;
                asm volatile("strh %0, [%1, %2]"
                             : : "r" (sv), "r" (st), "r" (b) : "memory");
            }
        }
    }
    return sprite;
}
