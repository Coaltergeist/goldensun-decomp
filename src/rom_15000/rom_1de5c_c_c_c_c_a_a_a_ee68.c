typedef unsigned short u16;

void Func_801ee68(unsigned int unused0, unsigned int unused1,
                  unsigned int width, unsigned int height,
                  unsigned int value)
{
    volatile u16 *dst = (volatile u16 *)0x06002000;
    unsigned int row;

    for (row = 0; row < height; row++) {
        unsigned int column;

        for (column = 0; column < width; column++) {
            *dst++ = value;
        }
        dst += 0x20 - width;
    }
}
