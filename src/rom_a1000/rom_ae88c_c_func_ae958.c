extern int AllocSpriteSlot(void);
extern void Func_80ae908(int icon, int slot);
extern int _Func_801eadc(int slot, unsigned int flags, unsigned int x,
                         unsigned int y, unsigned int arg4);

int Func_80ae958(unsigned int x, unsigned int y, unsigned int arg4, int icon)
{
    register int iconReg asm("r6") = icon;
    register int result asm("r0") = AllocSpriteSlot();
    register int slot asm("r5") = result;

    if (slot != 0x60) {
        register int callIcon asm("r0") = iconReg;
        register int callSlot asm("r1") = slot;

        asm("mov %0, %2\n\t"
            "mov %1, %3"
            : "=r"(callSlot), "=r"(callIcon)
            : "r"(slot), "r"(iconReg));
        Func_80ae908(callIcon, callSlot);
        result = _Func_801eadc(slot, 0x40000000, x, y, arg4);
    }
    return result;
}
