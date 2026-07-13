extern unsigned char *CreateUIBox(int x, int y, int width, int height,
                                  int style);
extern void UIDrawText(const unsigned char *text, unsigned char *box,
                       int x, int y);
extern unsigned char Rom20198Rodata[] asm(".rodata");

unsigned char *Func_8021c34(void)
{
    unsigned char *box = CreateUIBox(0, 0, 6, 4, 6);

    UIDrawText(Rom20198Rodata + 0x120, box, 0, 0);
    return box;
}
