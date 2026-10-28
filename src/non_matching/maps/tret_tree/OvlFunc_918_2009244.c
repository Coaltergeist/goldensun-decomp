extern int iwram_3001e40;

extern int Lm918_2db8 __asm__(".Lm918_2db8");

extern const int Lm918_1f00[] __asm__(".Lm918_1f00");

extern int __Random(void);

extern int _divsi3_RAM(int, int);
struct CS918P_Field { unsigned char pad[0x17e]; short transition; };
struct CS918P_Context { struct CS918P_Field *field; void *other[4]; unsigned short *palette; };
extern struct CS918P_Context CS918P_Context __asm__("iwram_3001ebc");
static inline int CS918P_Divide(int a, int b) { return _divsi3_RAM(a, b); }
void OvlFunc_918_2009244(void) {
    struct CS918P_Field *field = CS918P_Context.field;
    unsigned short *src = CS918P_Context.palette;
    volatile unsigned short *dst;
    unsigned int i;

    if (field->transition != 0) {
        return;
    }
    if (iwram_3001e40 & 0x1f) {
        return;
    }

    dst = (volatile unsigned short *)0x5000020;
    src = (unsigned short *)((char *)src + 0x20);
    i = 0;

    for (i = 0; i <= 0x3e; i++) {
        int redOffset, greenOffset, blueOffset;
        int r, g, b;
        unsigned int color;

        redOffset = Lm918_1f00[Lm918_2db8];
        blueOffset = Lm918_1f00[Lm918_2db8 + 2];
        greenOffset = Lm918_1f00[Lm918_2db8 + 1];

        if (i > 0x2f) {
            redOffset -= redOffset / 2 + CS918P_Divide(redOffset, 3);
            greenOffset -= CS918P_Divide(greenOffset, 3) + greenOffset / 2;
            blueOffset -= CS918P_Divide(blueOffset, 3) + blueOffset / 2;
        } else if (i > 0x1f) {
            redOffset -= CS918P_Divide(redOffset, 3) + redOffset / 4;
            greenOffset -= CS918P_Divide(greenOffset, 3) + greenOffset / 4;
            blueOffset -= CS918P_Divide(blueOffset, 3) + blueOffset / 4;
        } else if (i > 0xf) {
            redOffset -= redOffset / 4 + CS918P_Divide(redOffset, 5);
            greenOffset -= greenOffset / 4 + CS918P_Divide(greenOffset, 5);
            blueOffset -= blueOffset / 4 + CS918P_Divide(blueOffset, 5);
        }

        color = *src;
        r = color & 0x1f;
        g = (color >> 5) & 0x1f;
        b = (color >> 10) & 0x1f;

        r += redOffset;
        g += greenOffset;
        b += blueOffset;

        if (r > 0x1f) r = 0x1f;
        if (g > 0x1f) g = 0x1f;
        if (b > 0x1f) b = 0x1f;
        if (r < 0) r = 0;
        if (g < 0) g = 0;
        if (b < 0) b = 0;

        *dst = (b << 10) | (g << 5) | r;
        dst++;
        src++;
    }

    Lm918_2db8 += (__Random() & 7) * 3;
    if (Lm918_1f00[Lm918_2db8] == 0x63) {
        Lm918_2db8 = 0;
    }
}
