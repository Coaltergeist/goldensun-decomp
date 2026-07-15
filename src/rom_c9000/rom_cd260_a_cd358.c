typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001eec;
extern u8 gBuffer[];

typedef void (*BlitCopyFn)(void *, u8 *, u32);
typedef void (*FillVramFn)(void *, u32, u32);

extern void Func_8001af8(void *dst, u8 *src, u32 size);
extern void Func_80008d8(void *destination, u32 size, u32 value);
extern void BlitFade_Div2(u32 *a, u32 *b, u32 c);
extern void BlitFade_Div4(u32 *a, u32 *b, u32 c);
extern void BlitFade_Sub(u32 *a, u32 b, u32 *c, u32 d);

void Task_BlitAnim_BG1Wide(void)
{
    u8 *base = iwram_3001eec;

    if (*(s32 *)(base + 0x7824) == 1) {
        s32 phase = *(s32 *)(base + 0x7780);

        switch (phase) {
        case 0: {
            void (*copy)(void *, u8 *, u32) = (void (*)(void *, u8 *, u32))Func_8001af8;
            copy((void *)0x6008000, gBuffer, 0x7800);
            break;
        }
        case 1: {
            register u32 size1 asm("r2") = 0xf0;
            register BlitCopyFn copy asm("r3") = (BlitCopyFn)Func_8001af8;
            register u8 *src asm("r1");
            register void *dst asm("r0");

            asm volatile("" : "+r"(size1));
            asm volatile("" : "+r"(copy));
            src = gBuffer;
            asm volatile("" : "+r"(src));
            size1 <<= 7;
            asm volatile("" : "+r"(size1));
            dst = (void *)0x6008000;
            asm volatile("" : "+r"(dst));
            copy(dst, src, size1);

            {
                register u32 off asm("r2") = 0x7784;
                register u32 size2 asm("r1") = 0xf0;
                register u8 *fieldAddr asm("r3");
                register u32 value asm("r2");
                register void *address asm("r0");
                register FillVramFn fill asm("r3");

                asm volatile("" : "+r"(off));
                asm volatile("" : "+r"(size2));
                fieldAddr = base + off;
                asm volatile("" : "+r"(fieldAddr));
                value = *(u32 *)fieldAddr;
                asm volatile("" : "+r"(value));
                address = gBuffer;
                asm volatile("" : "+r"(address));
                fill = (FillVramFn)Func_80008d8;
                asm volatile("" : "+r"(fill));
                size2 <<= 7;
                fill(address, size2, value);
            }
            break;
        }
        case 2:
            if (*(s32 *)(base + 0x7784) == 0x32) {
                u32 dst2 = 0x6008000;
                u32 size3 = 0x7800;
                u32 src2 = (u32)gBuffer;
                BlitFade_Div2((u32 *)src2, (u32 *)dst2, size3);
            } else {
                u32 size4 = 0xf0;
                u32 dst3;
                u32 src3;
                dst3 = 0x6008000;
                size4 <<= 7;
                src3 = (u32)gBuffer;
                BlitFade_Div4((u32 *)src3, (u32 *)dst3, size4);
            }
            break;
        case 3: {
            u32 fieldVal = *(u32 *)(base + 0x7784);
            u32 size5 = 0xf0;
            u32 dst4;
            u32 src4;
            dst4 = 0x6008000;
            size5 <<= 7;
            src4 = (u32)gBuffer;
            BlitFade_Sub((u32 *)src4, fieldVal, (u32 *)dst4, size5);
            break;
        }
        }

        *(s32 *)(base + 0x7824) = 0;
    }
}
