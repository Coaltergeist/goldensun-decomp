typedef unsigned short u16;

extern void *Func_8004970(unsigned int size);
extern unsigned int Func_8017aa4(void *buffer, void *value, unsigned int x, unsigned int color);
extern void free(void *memory);

void Func_801e858(const char *text, void *box, int x, int y)
{
    u16 *buf = (u16 *)Func_8004970(0x200);
    u16 *dst = buf;
    const char *src = text;

    while (*src != 0) {
        *dst = *src;
        src++;
        dst++;
    }
    *dst = 0;

    Func_8017aa4(buf, box, x, y);
    free(buf);
}
