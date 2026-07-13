typedef unsigned short u16;

extern const unsigned char Data_32224[];

int Func_8017a64(const u16 *text)
{
    unsigned int ch = *text++;
    int width = 0;

    while (ch != 0) {
        if (ch == 0x20) {
            width += 4;
        } else if (ch <= 0xff) {
            if ((unsigned int)(ch - 0xde) > 1) {
                width += *(const u16 *)(Data_32224 + ((ch - 0x20) << 5));
            }
        } else {
            width += 10;
        }
        ch = *text++;
    }
    return width;
}
