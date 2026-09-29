extern unsigned int CreateUIBox(unsigned short x, unsigned short y, unsigned short width, unsigned short height, unsigned int flags);

extern void UIDrawText(char *text, unsigned int a, unsigned int b, unsigned int c);

unsigned int Func_8021c34(void) {
    unsigned int r5 = CreateUIBox(0, 0, 6, 4, 6);

    UIDrawText("", r5, 0, 0);
    return r5;
}
