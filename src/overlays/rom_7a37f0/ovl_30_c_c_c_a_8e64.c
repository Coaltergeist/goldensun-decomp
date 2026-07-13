extern int _divsi3_RAM(int value, int divisor);
extern void OvlFunc_916_2008f34(void);
extern void OvlFunc_916_2008f74(void);
extern void OvlFunc_916_2008f54(void);
extern void __Func_8091200(unsigned int value, int zero);

unsigned short OvlFunc_916_2008ecc(unsigned short color, int divisor);

void OvlFunc_916_2008e64(int divisor)
{
    unsigned int offset;

    OvlFunc_916_2008f34();
    offset = 0;
    do {
        unsigned int index = offset >> 16;

        if (offset + 0xffef0000 > 0x60000 &&
            ({
                register unsigned int lowerBound asm("r3") = index + 0xff3f;
                asm volatile("" : "+r"(lowerBound));
                lowerBound << 16;
            }) > 0x70000) {
            unsigned short *color = (unsigned short *)(0x5000000 + index * 2);
            *color = OvlFunc_916_2008ecc(*color, divisor);
        }
        {
            register unsigned int next asm("r3") = offset + 0x10000;
            register unsigned int limit asm("r2") = 0xdf0000;

            asm volatile("" : "+r"(next), "+r"(limit));
            offset = next;
            asm volatile("" : "+r"(offset));
            if (next > limit)
                break;
        }
    } while (1);
    OvlFunc_916_2008f74();
    OvlFunc_916_2008f54();
    __Func_8091200(0x10000, 0);
}

unsigned short OvlFunc_916_2008ecc(unsigned short color, int divisor)
{
    short red;
    short green;
    short blue;

    red = color & 0x1f;
    green = (color >> 5) & 0x1f;
    blue = (color >> 10) & 0x1f;
    red += _divsi3_RAM(red, divisor << 2);
    green -= _divsi3_RAM(green, divisor);
    blue -= _divsi3_RAM(blue, divisor);
    if (red > 0x1f)
        red = 0x1f;
    return (blue << 10) | (green << 5) | red;
}
