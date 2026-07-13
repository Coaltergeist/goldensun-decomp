extern int AllocSpriteSlot(void);
extern void Func_8021b30(int icon, int slot);
extern int Func_801eadc(int slot, int priority, int x, int y, int flags);

int Func_8022a38(int x, int y, int flags, int icon)
{
    register int icon_reg asm("r6") = icon;
    register int result asm("r0") = AllocSpriteSlot();
    register int slot asm("r5") = result;

    if (slot != 0x60) {
        register int call_icon asm("r0") = icon_reg;
        register int call_slot asm("r1") = slot;

        asm("mov %0, %2\n\t"
            "mov %1, %3"
            : "=r"(call_slot), "=r"(call_icon)
            : "r"(slot), "r"(icon_reg));
        Func_8021b30(call_icon, call_slot);
        result = Func_801eadc(slot, 0x40000000, x, y, flags);
    }
    return result;
}
