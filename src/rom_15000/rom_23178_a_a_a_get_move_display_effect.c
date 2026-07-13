typedef unsigned char u8;

extern int _Func_8079ef8(unsigned int effect);

int GetMoveDisplayEffect(const u8 *move)
{
    register unsigned int raw_element asm("r3") = move[1];
    register unsigned int element asm("r2") = 0xf;
    register int result asm("r5");

    asm("" : "+r"(raw_element), "+r"(element), "+r"(move));
    element &= raw_element;
    asm("" : "+r"(element));
    result = 0;
    asm("" : "+r"(result));

    if (element == 1)
        result = 1;
    if (element == 0xb)
        result = 2;
    if (move[3] == 3)
        result = 3;
    if (move[3] == 4)
        result = 4;
    if (move[3] == 0x40)
        result = 6;
    if (_Func_8079ef8(move[3]))
        result = 5;

    return result;
}
