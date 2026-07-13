extern void Func_801c2d0(void);
extern void Func_80284dc(void);
extern void AddMenuBarOption(int option);
extern void Func_8028808(int slot, int option, int value);
extern int Func_80286a0(int menu, int index);
extern void Func_802851c(void);
extern void Func_801c2e4(void);

int Func_802899c(int menu, int option)
{
    register int menu_reg asm("r5") = menu;
    register int option_reg asm("r6") = option;
    register int result asm("r6");

    asm("" : "+r"(menu_reg), "+r"(option_reg));

    Func_801c2d0();
    Func_80284dc();
    AddMenuBarOption(1);
    AddMenuBarOption(0xf);
    AddMenuBarOption(2);
    AddMenuBarOption(7);
    Func_8028808(0x11, 7, 0);
    asm("" : "+r"(option_reg));
    result = Func_80286a0(menu_reg, option_reg - 1);
    Func_802851c();
    Func_801c2e4();
    return result;
}
