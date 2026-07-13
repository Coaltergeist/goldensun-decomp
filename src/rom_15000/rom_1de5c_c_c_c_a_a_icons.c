typedef unsigned char u8;

extern int AllocSpriteSlot(void);
extern void LoadInventoryIcon(unsigned int icon, unsigned int palette, int slot);
extern void LoadOldUIIcon(unsigned int icon, unsigned int variant, int *slot,
                          void *metadata, unsigned int count);
extern void LoadUIBanner(unsigned int banner, unsigned int variant, int slot);
extern int Func_801eadc(int slot, unsigned int flags, unsigned int arg2,
                        unsigned int arg3, unsigned int arg4);

int Func_801eb90(unsigned int icon, unsigned int palette, unsigned int arg2,
                 unsigned int arg3, unsigned int arg4)
{
    register unsigned int savedIcon asm("r6");
    register unsigned int savedPalette asm("r7");
    register unsigned int savedArg2 asm("r8");
    register unsigned int savedArg3 asm("r10");
    register int slot asm("r5");
    int result;

    asm volatile(
        "mov r6, r0\n\t"
        "mov r7, r1\n\t"
        "mov r8, r2\n\t"
        "mov r10, r3"
        : "=r"(savedIcon), "=r"(savedPalette),
          "=r"(savedArg2), "=r"(savedArg3));
    slot = AllocSpriteSlot();
    result = 0;
    if (slot != 0x60) {
        register unsigned int call1 asm("r1") = savedPalette;
        register int call2 asm("r2") = slot;
        register unsigned int call0 asm("r0") = savedIcon;

        asm volatile("" : "+r"(call1));
        asm volatile("" : "+r"(call2));
        asm volatile("" : "+r"(call0));
        LoadInventoryIcon(call0, call1, call2);
        result = Func_801eadc(slot, 0x40000000, savedArg2, savedArg3, arg4);
    }
    return result;
}

int Func_801ebd8(unsigned int icon, unsigned int arg1, unsigned int arg2,
                 unsigned int arg3)
{
    int metadata;
    int slot;
    int result;

    slot = AllocSpriteSlot();
    if (slot == 0x60) {
        return 0;
    }
    LoadOldUIIcon(icon, 1, &slot, &metadata, 1);
    result = Func_801eadc(slot, 0x40000000, arg1, arg2, arg3);
    *(u8 *)(result + 0xf) = 0xfb;
    return result;
}

int Func_801ec24(unsigned int banner, unsigned int arg1, unsigned int arg2,
                 unsigned int arg3)
{
    int slot = AllocSpriteSlot();
    int result = 0;

    if (slot != 0x60) {
        register unsigned int call1 asm("r1") = 0;
        register int call2 asm("r2") = slot;
        register unsigned int call0 asm("r0") = banner;

        asm volatile("" : "+r"(call1));
        asm volatile("" : "+r"(call2));
        asm volatile("" : "+r"(call0));
        LoadUIBanner(call0, call1, call2);
        result = Func_801eadc(slot, 0x40000000, arg1, arg2, arg3);
    }
    return result;
}
