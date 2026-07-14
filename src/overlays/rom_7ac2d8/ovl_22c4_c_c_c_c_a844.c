typedef unsigned short u16;

extern void __WaitFrames(int frames);

void OvlFunc_924_200a844(void)
{
    volatile u16 *color;
    unsigned int complete;
    unsigned int index;
    int red;
    int green;
    int blue;

    do {
        complete = 0;
        color = (volatile u16 *)0x05000050;
        for (index = 0; index < 8; index++, color++) {
            red = *color & 0x1f;
            green = (*color >> 5) & 0x1f;
            blue = (*color >> 10) & 0x1f;

            if (red == 0x1f && green == 0x1f && blue == 0x1f) {
                complete++;
            } else {
                if (red < 0x1f)
                    red++;
                if (green < 0x1f)
                    green++;
                if (blue < 0x1f)
                    blue++;
                *color = (blue << 10) | (green << 5) | red;
            }
        }
        __WaitFrames(2);
    } while (complete < 8);
}
