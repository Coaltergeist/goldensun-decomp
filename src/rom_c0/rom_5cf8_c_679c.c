typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

extern void _PlaySound(int sfx);
extern void Func_8005d10(void);
extern void CpuSet(const void *src, void *dest, u32 control);
extern unsigned int Func_8006384(unsigned int mask);
extern s32 Func_8006408(u32 source);
extern s32 Func_80063bc(u32 source, u32 length);
extern void Func_8006798(void);
extern void WaitFrames(unsigned int frames);
extern u16 gBuffer[];
extern volatile unsigned int gKeyHeld;
extern u32 ewram_20023ac;

#define REG_DMA3SAD (*(vu32 *)0x040000d4)

void Debug_TransferTest(void)
{
    u16 *p;
    s32 v;
    s32 i1;
    s32 i2;
    u32 zero;
    u32 *zp;
    volatile unsigned int *keyp;

    _PlaySound(3);
    Func_8005d10();

    i1 = 0x13;
    p = (u16 *)0x6002426;
    v = (s32)0xfffff093;
    do {
        i1--;
        *p = (u16)v;
        p--;
        v--;
    } while (i1 >= 0);

    zp = &zero;
    __asm__ volatile("" : "+r"(zp));
    *zp = 0;
    __asm__ volatile("" ::: "memory");
    CpuSet(zp, gBuffer, 0x5000100);
    Func_8006384(3);

L67d0:
    Func_8006408((u32)gBuffer);
    keyp = &gKeyHeld;
L67d8:
    if (*keyp & 1)
        Func_80063bc(0x8000000, 0xa0 << 2);
    if (*keyp & 2)
        Func_80063bc(0x8001000, 0xa0 << 2);
    if (*keyp & 8) {
        i2 = 0x270f;
        do {
            i2--;
            Func_8006798();
        } while (i2 >= 0);
    }
    if (ewram_20023ac == 0)
        goto L681e;
    WaitFrames(1);
    goto L67d8;
L681e:
    {
        register vu32 *dma __asm__("r3") = &REG_DMA3SAD;
        register const void *src __asm__("r0") = (const void *)gBuffer;
        register void *dst __asm__("r1") = (void *)0x6001000;
        register u32 cnt __asm__("r2") = 0x840000a0;
        __asm__ volatile(
            "stmia\tr3!, {r0, r1, r2}\n\t"
            "sub\tr3, #0xc"
            : "+r"(dma), "+r"(src), "+r"(cnt)
            : "r"(dst)
            : "memory"
        );
    }
    goto L67d0;
}
