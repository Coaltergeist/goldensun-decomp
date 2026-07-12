extern void Func_80284dc(void);
extern void AddMenuBarOption(unsigned int option);
extern void Func_8028808(unsigned int, unsigned int, unsigned int);
extern void Func_80288a8(unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned int Func_8028574(unsigned int);
extern void Func_802851c(void);
extern unsigned char Value_36[] asm("0x24");

unsigned int YesNoMenu(unsigned int arg0, unsigned int arg1,
                       unsigned int arg2, unsigned int arg3) {
    unsigned int selection = arg2;
    unsigned int result = arg3;
    unsigned int mode = 0;

    Func_80284dc();
    if (selection == 0) {
        selection = 3;
    }
    if (arg0 != 0) {
        mode = 0x11;
    }
    AddMenuBarOption(5);
    AddMenuBarOption(6);
    Func_8028808(mode, selection, arg1);
    result = Func_8028574(result);
    Func_802851c();
    if (result == (unsigned int)-1) {
        result = 1;
    }
    return result;
}

unsigned int YesNoMenu2(unsigned int arg0, unsigned int arg1,
                        unsigned int arg2) {
    register unsigned int first asm("r5") = arg0;
    register unsigned int result asm("r7") = arg2;
    register unsigned int second asm("r6") = arg1;
    register unsigned int fourth asm("r8") = (unsigned int)Value_36;

    asm("" : "+r"(first), "+r"(result), "+r"(second), "+r"(fourth));

    Func_80284dc();
    AddMenuBarOption(5);
    AddMenuBarOption(6);
    Func_80288a8(first, second, 3, fourth);
    result = Func_8028574(result);
    asm("" : "+r"(result));
    Func_802851c();
    if (result == (unsigned int)-1) {
        result = 1;
    }
    return result;
}
