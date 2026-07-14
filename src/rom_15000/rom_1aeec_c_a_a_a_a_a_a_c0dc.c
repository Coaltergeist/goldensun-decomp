typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 sprite_gfx[] asm(".L342f8");
extern u32 AllocSpriteSlot(void);
extern u32 UploadSpriteGFX(u32 slot, int size, const void *gfx);

void Func_801c0dc(u8 *sprite_arg, u32 *slot_out)
{
    register u8 *sprite asm("r5") = sprite_arg;
    register const void *gfx asm("r8");
    register u32 *output asm("r6");
    register u32 result asm("r0");
    register u32 half asm("r2");
    register u32 work asm("r3");
    register u32 byte7 asm("r1");

    asm("ldr %0, =.L342f8" : "=l"(work));
    gfx = (const void *)work;
    output = slot_out;
    asm volatile("" : "+r"(sprite), "+r"(gfx), "+r"(output));
    result = AllocSpriteSlot();
    half = (u32)gfx;
    *output = result;
    result = UploadSpriteGFX(result, 0x80, (const void *)half);

    asm("ldr %0, 9f" : "=l"(work));
    half = *(u16 *)(sprite + 8);
    result &= work;
    asm("ldr %0, =0xfffffc00" : "=l"(work));
    work &= half;
    work |= result;
    *(u16 *)(sprite + 8) = work;

    result = -13;
    work = sprite[5];
    half = result;
    half &= work;
    work = -17;
    half &= work;
    work = 0x20;
    half |= work;
    work = 4;
    asm volatile("" : "+r"(work));
    byte7 = sprite[7];
    asm volatile("" : "+r"(byte7));
    work = -work;
    half &= work;
    work -= 0x3b;
    work &= byte7;
    byte7 = 0x3f;
    work &= byte7;
    sprite[7] = work;
    half &= byte7;
    work = 0x80;
    half |= work;

    asm volatile("b 8f\n\t.align 2, 0\n9:\n\t.word 0x3ff\n\t.pool\n8:");

    work = sprite[9];
    result &= work;
    sprite[5] = half;
    sprite[9] = result;
}
