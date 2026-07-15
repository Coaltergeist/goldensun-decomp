typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern s32 sin(s32 angle);
extern void Func_8001af8(void *dst, u8 *src, u32 size)
    __attribute__((long_call));

void ColorCycleVFXPalette(s32 a0, s32 a1, s32 a2, s32 a3) {
    s32 v1;
    s32 v2;
    s32 v3;
    u16 buf[64];
    u16 *p;
    s32 i;
    void (*copy)(void *, u8 *, u32);

    a0 = a0 * 0x400;
    v1 = (sin(a0 + a1) << 4) >> 15;
    v2 = (sin(a0 + a2) << 4) >> 15;
    v3 = (sin(a0 + a3) << 4) >> 15;

    buf[0] = 0;
    i = 1;
    p = &buf[1];
    do {
        s32 r = (i + v1) / 2;
        s32 g = (i + v2) / 2;
        s32 b = (i + v3) / 2;
        if (r < 0) r = 0;
        if (r > 0x1f) r = 0x1f;
        if (g < 0) g = 0;
        if (g > 0x1f) g = 0x1f;
        if (b < 0) b = 0;
        if (b > 0x1f) b = 0x1f;
        i++;
        *p = (u16)((b << 10) | (g << 5) | r);
        p++;
    } while (i != 0x40);

    {
        u8 *src;
        register u32 sz asm("r2");
        register void *dst asm("r0");
        asm volatile("mov %0, sp" : "=r"(src));
        copy = (void (*)(void *, u8 *, u32))Func_8001af8;
        sz = 0x80;
        dst = (void *)0x5000002;
        copy(dst, src, sz);
    }
}
