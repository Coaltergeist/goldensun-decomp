extern int _divsi3_RAM(int value, int divisor);
extern void OvlFunc_917_2009838(void);
extern void OvlFunc_917_2009878(void);
extern void OvlFunc_917_2009858(void);
extern void __Func_8091200(unsigned int value, int zero);

unsigned short OvlFunc_917_20097d0(unsigned short color, int divisor);

void OvlFunc_917_2009768(int divisor)
{
    unsigned int offset;

    OvlFunc_917_2009838();
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
            *color = OvlFunc_917_20097d0(*color, divisor);
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
    OvlFunc_917_2009878();
    OvlFunc_917_2009858();
    __Func_8091200(0x10000, 0);
}

unsigned short OvlFunc_917_20097d0(unsigned short color, int divisor)
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
