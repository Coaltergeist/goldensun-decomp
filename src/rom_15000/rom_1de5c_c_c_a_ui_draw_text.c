extern void *Func_8004970(unsigned int size);
extern void Func_8017c8c(unsigned short *text, void *box, int x, int y);
extern void free(void *memory);

void UIDrawText(const char *text, void *box, int x, int y)
{
    unsigned short *buf;
    unsigned short *dst;

    buf = (unsigned short *)Func_8004970(0x200);
    dst = buf;
    while (*text != 0) {
        *dst = *text;
        text++;
        dst++;
    }
    *dst = 0;
    x = (int)((unsigned int)x >> 3);
    y = (int)((unsigned int)y >> 3);
    Func_8017c8c(buf, box, x, y);
    free(buf);
}
