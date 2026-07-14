typedef unsigned char u8;

extern const u8 gDefault[] asm(".Laf2a6");
extern const u8 gZero[] asm(".Laf2d0");
extern const u8 gOne[] asm(".Laf2bc");
extern const u8 gTwo[] asm(".Laf2b1");

void Func_a1f74(int kind, char *dst)
{
    register const u8 *src asm("r2") = gDefault;
    register int value asm("r3");
    register int sentinel asm("r4");
    register int i asm("r0");

    switch (kind) {
    case 0: src = gZero; break;
    case 1: src = gOne; break;
    case 2: src = gTwo; break;
    }

    value = *src;
    sentinel = 0xff;
    *dst = value;
    sentinel <<= 24;
    value <<= 24;
    i = 0;
    asm volatile ("" : "+r" (sentinel), "+r" (i));
    if (value != sentinel) {
        do {
            i++;
            if (i > 0x1f)
                break;
            src++;
            value = *src;
            dst++;
            sentinel = 0xff;
            *dst = value;
            sentinel <<= 24;
            value <<= 24;
        } while (value != sentinel);
    }
}
