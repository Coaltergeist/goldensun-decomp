typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern s32 Random(void);
extern s32 cos(s32 angle);
extern s32 sin(s32 angle);
extern s32 Func_8000888(s32, s32);
extern void _Actor_SetScript(u8 *actor, const void *script);
extern const u8 Data_9f0b0[];

static inline s32 fxmul(s32 (*mul)(s32, s32), s32 a, s32 b)
{
    register s32 r0 asm("r0") = a;
    register s32 r1 asm("r1") = b;
    asm volatile(
        ".align 2, 0\n\t"
        "mov r12, pc\n\t"
        "bx %2"
        : "+r" (r0)
        : "r" (r1), "r" (mul)
        : "r2", "r12", "lr", "cc", "memory");
    return r0;
}

void Func_809a738(u8 *self)
{
    s32 rnd = Random();
    u16 angle = *(u16 *)(self + 6);
    s32 radius = rnd + 0x20000;
    s32 cosResult = cos(angle);
    s32 (*mul)(s32, s32) = Func_8000888;
    s32 xOffset = fxmul(mul, radius, cosResult);
    s32 yOffset = fxmul(mul, radius, sin(angle));

    *(s32 *)(self + 8) += xOffset;
    *(s32 *)(self + 0x10) += yOffset;
    *(u16 *)(self + 6) += 0xfff0;
    asm volatile("" ::: "memory");

    {
        s32 timer = *(u16 *)(self + 0x66);
        if (*(s16 *)(self + 0x66) != 0) {
            *(u16 *)(self + 0x66) = timer - 1;
            *(u16 *)(self + 6) += 0x800;
        } else if (((u32)(Random() << 5) >> 16) == 0) {
            *(u16 *)(self + 0x66) = (u16)(((u32)(Random() << 4) >> 16) + 8);
        }
    }

    {
        u32 counter = *(u16 *)(self + 0x64) + 1;
        *(u16 *)(self + 0x64) = (u16)counter;
        if ((counter << 16) == 0x650000) {
            _Actor_SetScript(self, Data_9f0b0);
        }
    }
}
