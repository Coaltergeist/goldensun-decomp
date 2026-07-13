typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;
extern int BufferString(int text, int mode);
extern void Func_801868c(int text, int x, int y, int style, int speed,
                         int unused, int dialogue);

int TextBox(int text, int x, int y, int style, int speed)
{
    register u8 *state asm("r5") = iwram_3001e8c;
    int buffered = BufferString(text, 0);
    register unsigned int offset asm("r2") = 0xeb;
    register unsigned int index asm("r3") = buffered;

    index <<= 1;
    offset <<= 4;
    index += offset;
    asm("" : "+r"(state), "+r"(index));
    if (*(u16 *)(state + index) == 0)
        return 0;
    Func_801868c(buffered, x, y, style, speed, 0, 0);
    return 1;
}

int DialogueBox(int text, int x, int y, int style, int speed)
{
    register u8 *state asm("r5") = iwram_3001e8c;
    int buffered = BufferString(text, 0);
    register unsigned int offset asm("r2") = 0xeb;
    register unsigned int index asm("r3") = buffered;

    index <<= 1;
    offset <<= 4;
    index += offset;
    asm("" : "+r"(state), "+r"(index));
    if (*(u16 *)(state + index) == 0)
        return 0;
    Func_801868c(buffered, x, y, style, speed, 0, 1);
    return 1;
}
