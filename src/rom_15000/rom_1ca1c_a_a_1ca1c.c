typedef unsigned char u8;
typedef unsigned short u16;

extern u8 gState[];
extern const u8 gColorWave[] asm(".L36750");
extern int __modsi3(int value, int divisor);

void Func_801ca1c(u8 *object)
{
    int phase = __modsi3(gState[0x205] + 12, 24);
    int offset = gState[0x206] - 7;
    int red;
    int green;
    int blue;

    phase <<= 18;
    phase >>= 16;
    red = gColorWave[(short)__modsi3(phase, 96)];
    green = gColorWave[__modsi3(phase + 32, 96)];
    blue = gColorWave[__modsi3(phase + 64, 96)];
    red += offset;
    green += offset;
    blue += offset;

    if (red < 0)
        red = 0;
    if (green < 0)
        green = 0;
    if (blue < 0)
        blue = 0;
    if (red > 31)
        red = 31;
    if (green > 31)
        green = 31;
    if (blue > 31)
        blue = 31;

    *(u16 *)(object + 0x576) = red;
    *(u16 *)(object + 0x578) = green;
    *(u16 *)(object + 0x57a) = blue;
}
