typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

extern u8 *__MapActor_GetActor(s32 actorId);
extern unsigned int __Random(void);
extern u32 _umodsi3_RAM(u32 numerator, u32 denominator);
extern u8 *__CreateActor(s32 kind, s32 x, s32 y, s32 z);
extern void OvlFunc_888_200b144(u8 *actor);

void OvlFunc_888_200b1b8(s32 actorId)
{
    register u8 *parent asm("r6") = __MapActor_GetActor(actorId);
    s32 x;
    s32 y;
    u8 *actor;
    u16 val;
    u8 *sprite;
    s32 zero;
    u8 parentBits;

    if (parent == 0)
        goto finalReturn;

    {
        u32 r = _umodsi3_RAM(__Random(), 20);
        s32 p8 = *(s32 *)(parent + 8);
        register s32 off1 asm("r2");
        asm volatile("ldr %0, .Loff1_b1b8" : "=r" (off1));
        x = p8 + (s32)(r << 16) + off1;
    }
    {
        u32 r = __Random() % 16;
        s32 p12 = *(s32 *)(parent + 0xc);
        s32 partial = p12 + (s32)(r << 16);
        register s32 off2 asm("r3");
        asm volatile("ldr %0, .Loff2_b1b8" : "=r" (off2));
        y = partial + off2;
    }
    actor = __CreateActor(0x11e, x, y, *(s32 *)(parent + 0x10));
    if (actor == 0)
        goto finalReturn;

    sprite = *(u8 **)(actor + 0x50);
    actor[0x55] = 0;
    {
        u32 r = _umodsi3_RAM(__Random(), 10);
        u16 *p64 = (u16 *)(actor + 0x64);
        register s32 zeroTmp asm("r2");
        asm volatile("ldr %0, .Lzero_b1b8" : "=r" (zeroTmp));
        zero = zeroTmp;
        *p64 = (u16)(r + 5);
    }
    {
        u32 r = _umodsi3_RAM(__Random(), 60);
        u16 *p66 = (u16 *)(actor + 0x66);
        val = (u16)(r + 30);
        *p66 = val;
    }
    {
        register void (*callback)(u8 *) asm("r3");
        asm volatile("ldr %0, .Lcallback_b1b8" : "=r" (callback));
        *(void (**)(u8 *))(actor + 0x6c) = callback;
    }
    {
        u8 *p26;
        u8 z2;
        p26 = sprite + 0x26;
        asm volatile("" : "+r" (p26));
        z2 = zero;
        *p26 = z2;
    }
    parentBits = (*(u8 **)(parent + 0x50))[9] & 0xc;
    {
        s32 spriteFlags = sprite[9];
        s32 mask = -0xd;
        mask = mask & spriteFlags;
        mask = mask | parentBits;
        sprite[9] = mask;
    }
    asm volatile(
        "b .Lafter_b1b8\n\t"
        ".align 2, 0\n"
        ".Lzero_b1b8:\n\t"
        ".word 0\n\t"
        ".Loff1_b1b8:\n\t"
        ".word 0xfff60000\n\t"
        ".Loff2_b1b8:\n\t"
        ".word 0xfff80000\n\t"
        ".Lcallback_b1b8:\n\t"
        ".word OvlFunc_888_200b144\n\t"
        ".pool\n"
        ".Lafter_b1b8:"
    );

finalReturn:
    return;
}
