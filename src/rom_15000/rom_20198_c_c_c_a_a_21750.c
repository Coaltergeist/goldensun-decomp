typedef unsigned char u8;

extern int AllocSpriteSlot(void);
extern void StartMenu_AddOption(int option, int slot, int value);
extern u8 *Func_801eadc_4(int slot, unsigned int priority, int x, int y)
    asm("Func_801eadc");

u8 *Func_8021750(int option, int value, int x, int y, int flags)
{
    register int saved_option asm("r6");
    register int saved_value asm("r7");
    register int saved_x asm("r8");
    register int saved_y asm("r10");
    register int slot asm("r5");
    int stack_space;
    register volatile int *call_arg asm("sp") = &stack_space;
    u8 *result;

    asm volatile("" : "+m"(stack_space));
    asm("" : "=r"(saved_option) : "0"(option));
    asm("" : "=r"(saved_value) : "0"(value), "r"(saved_option));
    asm("" : "=r"(saved_x) : "0"(x), "r"(saved_value));
    asm("" : "=r"(saved_y) : "0"(y), "r"(saved_x));
    slot = AllocSpriteSlot();
    result = 0;
    if (slot != 0x60) {
        StartMenu_AddOption(saved_option, slot, saved_value);
        /* 第5引数はスタックへ置く。 */
        call_arg[0] = flags;
        result = Func_801eadc_4(slot, 0x80000000, saved_x, saved_y);
        result[0x15] |= 0x20;
        result[0xf] = 0xfb;
    }
    return result;
}
