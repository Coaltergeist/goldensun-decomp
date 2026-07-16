extern char *PrintNum(char *text, unsigned int value, unsigned int digits);
extern void Func_801e858(const char *text, void *box, int x, int y);
extern void Func_801e8b0(const char *text, void *box, int x, int y);
extern void UIDrawText(const char *text, void *box, int x, int y);

void Func_801e9a0(unsigned int value, unsigned int digits, void *box, int x,
                  int y)
{
    char text[16];

    Func_801e858(PrintNum(text, value, digits), box, x, y);
}

void Func_801e9d4(unsigned int value, unsigned int digits, void *box, int x,
                  int y)
{
    char text[16];

    Func_801e8b0(PrintNum(text, value, digits), box, x, y);
}

void Func_801ea08(unsigned int value, unsigned int digits, void *box, int x,
                  int y)
{
    char text[16];

    UIDrawText(PrintNum(text, value, digits), box, x, y);
}
