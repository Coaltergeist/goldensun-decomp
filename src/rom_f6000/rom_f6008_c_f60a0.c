typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef unsigned int vu32;

extern u8 *iwram_3001eec[2];

typedef void (*FillVram)(void *destination, u32 size, u32 value);
extern unsigned int Func_80008d8(void);
extern void BlitFadeAlt_Div2(u32 *a, u32 *b, u32 c);
extern void BlitFadeAlt_Div4(u32 *a, u32 *b, u32 c);

void Task_BlitLuckyWheelsAnim(void)
{
    u8 *base = iwram_3001eec[0];

    if (*(s32 *)(base + 0x7824) == 1) {
        s32 phase = *(s32 *)(base + 0x7780);
        u8 *buf = iwram_3001eec[1];

        switch (phase) {
        case 1: {
            register vu32 *dma asm("r3") = (vu32 *)0x040000d4;
            register void *src asm("r0") = buf;
            register u32 dst asm("r1") = 0x6003500;
            register u32 cnt asm("r2") = 0x84002000;
            asm volatile(
                "stmia r3!, {r0, r1, r2}\n\t"
                "sub r3, #0xc"
                :
                : "r"(dma), "r"(src), "r"(dst), "r"(cnt)
                : "memory"
            );
            asm volatile("" ::: "r0");

            {
                register u32 off asm("r2") = 0x7784;
                register u32 size asm("r1") = 0x80;
                register u8 *fieldAddr asm("r3");
                register u32 value asm("r2");
                register void *address asm("r0");
                register FillVram fill asm("r3");

                asm volatile("" : "+r"(off));
                asm volatile("" : "+r"(size));
                fieldAddr = base + off;
                asm volatile("" : "+r"(fieldAddr));
                value = *(u32 *)fieldAddr;
                asm volatile("" : "+r"(value));
                address = buf;
                asm volatile("" : "+r"(address));
                fill = (FillVram)Func_80008d8;
                asm volatile("" : "+r"(fill));
                size <<= 8;
                fill(address, size, value);
            }
            break;
        }
        case 2:
            if (*(s32 *)(base + 0x7784) == 0x32) {
                BlitFadeAlt_Div2((u32 *)buf, (u32 *)0x6003500, 0x8000);
            } else {
                BlitFadeAlt_Div4((u32 *)buf, (u32 *)0x6003500, 0x8000);
            }
            break;
        }
        *(s32 *)(base + 0x7824) = 0;
        *(s32 *)(base + 0x7820) = 1;
    } else {
        *(s32 *)(base + 0x7820) += 1;
    }
}
