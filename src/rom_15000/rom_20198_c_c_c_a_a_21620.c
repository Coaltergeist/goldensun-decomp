typedef unsigned char u8;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;

extern s32 AllocSpriteSlot(void);
extern void Func_80215e0(s32 iconId, s32 slot);
extern u8 *Func_801eadc(s32 slot, u32 flags, s32 x, s32 y, s32 extra);
extern u8 *Func_801eadc_NoArgs(void) asm("Func_801eadc");

u8 *Func_8021620(s32 iconId, s32 x, s32 y, s32 extra)
{
    register s32 icon asm("r5");
    register s32 xPosition asm("r9");
    register s32 yPosition asm("r6");
    register s32 extraValue asm("r10");
    register s32 slot asm("r7");
    register u8 *firstSprite asm("r8");
    register u32 flags asm("r11");
    u8 *secondSprite;
    register u8 *result asm("r0");

    asm volatile(
        "sub sp, #4\n\t"
        "mov r5, r0\n\t"
        "mov r9, r1\n\t"
        "mov r6, r2\n\t"
        "mov r10, r3"
        : "=r" (icon), "=r" (xPosition), "=r" (yPosition), "=r" (extraValue));
    slot = AllocSpriteSlot();
    result = 0;
    if (slot <= 0x5f) {
    {
        register s32 iconArg asm("r0") = icon;
        register s32 slotArg asm("r1");
        asm volatile("" : "+r" (iconArg));
        slotArg = slot;
        Func_80215e0(iconArg, slotArg);
    }
    {
        register u8 *returned asm("r0");
        register u32 flagsTemp asm("r2");
        asm volatile("ldr %0, .Lflags8021620" : "=r" (flagsTemp));
        asm volatile(
            "mov r3, r10\n\t"
            "mov r11, r2\n\t"
            "str r3, [sp]\n\t"
            "mov r1, r11\n\t"
            "mov r2, r9\n\t"
            "mov r3, r6\n\t"
            "mov r0, r7"
            : "=r" (flags)
            : "r" (flagsTemp)
            : "r0", "r1", "r2", "r3", "memory");
        returned = Func_801eadc_NoArgs();
        icon = 0xfd;
        {
            register s32 extraArg asm("r2") = extraValue;
            asm volatile("" : "+r" (extraArg));
            {
            register s32 yArg asm("r3") = yPosition;
            returned[0xf] = icon;
            firstSprite = returned;
            yArg += 0x20;
            asm volatile(
                "str r2, [sp]\n\t"
                "mov r1, r11\n\t"
                "mov r2, r9\n\t"
                "mov r0, r7"
                : "+r" (extraArg), "+r" (yArg)
                : "r" (flags) : "r0", "r1", "memory");
            secondSprite = Func_801eadc_NoArgs();
            }
        }
    }
    {
        register u32 attributes asm("r1") = *(u16 *)(secondSprite + 0x18);
        register u32 tile asm("r2") = attributes;
        register u32 mask asm("r3");
        tile <<= 22;
        asm volatile("ldr %0, .Ltilemask8021620" : "=r" (mask));
        tile >>= 22;
        tile += 8;
        tile &= mask;
        asm volatile("ldr %0, .Lclearmask8021620" : "=r" (mask));
        mask &= attributes;
        mask |= tile;
        secondSprite[0xf] = icon;
        *(u16 *)(secondSprite + 0x18) = mask;
    }
    result = firstSprite;
    asm volatile(
        "b .Lafterpool8021620\n\t"
        ".align 2, 0\n"
        ".Ltilemask8021620:\n\t"
        ".word 0x3ff\n\t"
        ".Lflags8021620:\n\t"
        ".word 0x80004000\n\t"
        ".Lclearmask8021620:\n\t"
        ".word 0xfffffc00\n\t"
        ".pool\n"
        ".Lafterpool8021620:");
    }
    asm volatile("add sp, #4");
    return result;
}
